import 'package:auto_route/auto_route.dart';
import 'package:dls_one/app/router/app_router.dart';
import 'package:dls_one/core/core.dart';
import 'package:dls_one/core/widgets/dls_loader/dls_loader_scope.dart';
import 'package:dls_one/core/widgets/src/dls_app_bar.dart';
import 'package:dls_one/core/widgets/src/error/common_error.dart';
import 'package:dls_one/features/company_structure/bloc/department_structure_bloc.dart';
import 'package:dls_one/features/company_structure/data/departments_repository.dart';
import 'package:dls_one/features/company_structure/widget/ui/structure/departments_graph.dart';
import 'package:dls_one/features/company_structure/widget/ui/structure/zoom_control_panel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class CompanyStructurePage extends StatefulWidget with AutoRouteWrapper {
  const CompanyStructurePage({
    super.key,
  });

  @override
  Widget wrappedRoute(BuildContext context) =>
      BlocProvider<DepartmentStructureBloc>(
        create: (context) {
          return DepartmentStructureBloc(
            // TODO: Подменить на репо, который ходит в рест апи.
            departamentsRepository: MockDepartmentsRepository(
              userProvider: () => context.read<UsersBloc>().state.currentUser!,
            ),
          )..add(const DepartmentStructureEvent.refresh());
        },
        child: this,
      );

  @override
  State<CompanyStructurePage> createState() => _CompanyStructurePageState();
}

class _CompanyStructurePageState extends State<CompanyStructurePage> {
  final scaleNotifier = ValueNotifier<double>(1);

  @override
  void dispose() {
    scaleNotifier.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ScaleFactorNotifier(
      notifier: scaleNotifier,
      child: DLSLoaderScope(
        child: Scaffold(
          appBar: DLSAppBar(
            automaticallyImplyLeading: false,
            title: Text(S.current.companyStructure),
            actions: const [
              ZoomControlPanel(),
            ],
          ),
          body: BlocConsumer<DepartmentStructureBloc, DepartmentStructureState>(
            listenWhen: (previous, current) => current.isLoading,
            listener: (context, state) => DLSLoaderScope.showLoaderOf(
              context,
              future: context
                  .read<DepartmentStructureBloc>()
                  .stream
                  .firstWhere((state) => !state.isLoading),
            ),
            builder: (context, state) {
              return state.when(
                loading: (node) => node != null
                    ? DepartmentsGraph(node: node)
                    : const SizedBox.shrink(),
                error: () => const CommonError(),
                data: (node) => DepartmentsGraph(
                  node: node,
                  openSettings: (node) async {
                    final result = await context.router.push(
                      DepartmentRootRoute(
                        departmentId: node.department.meta.id,
                        children: [
                          DepartmentRoute(department: node.department)
                        ],
                      ),
                    );
                  },
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
