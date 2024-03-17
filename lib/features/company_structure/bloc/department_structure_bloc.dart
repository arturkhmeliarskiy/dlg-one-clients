import 'package:dls_one/core/core.dart';
import 'package:dls_one/features/company_structure/data/departments_repository.dart';
import 'package:dls_one/features/company_structure/model/department_node.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'department_structure_bloc.freezed.dart';

@freezed
class DepartmentStructureState with _$DepartmentStructureState {
  const factory DepartmentStructureState.loading({
    DepartmentNode? departmentNode,
  }) = LoadingDepartmentStructureState;

  const factory DepartmentStructureState.error() =
      ErrorDepartmentStructureState;

  const factory DepartmentStructureState.data({
    required DepartmentNode departmentNode,
  }) = DataDepartmentStructureState;

  const DepartmentStructureState._();

  DepartmentNode? get node => when(
        loading: (node) => node,
        error: () => null,
        data: (node) => node,
      );

  bool get isLoading => this is LoadingDepartmentStructureState;
}

@freezed
class DepartmentStructureEvent with _$DepartmentStructureEvent {
  const factory DepartmentStructureEvent.refresh() = _Refresh;
}

// TODO: Блок кажется типвым, попробовать вынести дженерик для подгрузки данных.
class DepartmentStructureBloc
    extends Bloc<DepartmentStructureEvent, DepartmentStructureState>
    with BlocActionPerformer {
  DepartmentStructureBloc({
    required IDepartmentsRepository departamentsRepository,
  })  : _departamentsRepository = departamentsRepository,
        super(const DepartmentStructureState.loading()) {
    on<DepartmentStructureEvent>(
      (event, emit) => performSafeAction(
        () => event.map(refresh: (event) => _onRefresh(event, emit)),
        emit,
        loadingState: () =>
            DepartmentStructureState.loading(departmentNode: state.node),
      ),
    );
  }

  final IDepartmentsRepository _departamentsRepository;

  Future<void> _onRefresh(
    _Refresh event,
    Emitter<DepartmentStructureState> emitter,
  ) async {
    final node = await _departamentsRepository.fetchTree();

    emitter.call(DepartmentStructureState.data(departmentNode: node));
  }

  @override
  Future<void> handleError(
    Object error,
    StackTrace stackTrace,
    Emitter<DepartmentStructureState> emitter,
  ) async {
    emitter(const DepartmentStructureState.error());
    Error.throwWithStackTrace(error, stackTrace);
  }
}
