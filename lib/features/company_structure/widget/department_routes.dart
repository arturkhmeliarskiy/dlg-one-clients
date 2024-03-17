import 'package:auto_route/auto_route.dart';
import 'package:dls_one/app/router/app_router.dart';

List<AutoRoute> departmentRoutes = [
  CustomRoute(
    page: DepartmentRootRoute.page,
    path: 'department/:id',
    opaque: false,
    fullscreenDialog: true,
    reverseDurationInMilliseconds: 0,
    children: [
      CustomRoute(
        path: '',
        page: DepartmentRoute.page,
        opaque: false,
        fullscreenDialog: true,
        reverseDurationInMilliseconds: 0,
      ),
      CustomRoute(
        path: 'department-position/:id',
        page: DepartmentPositionRoute.page,
        opaque: false,
        fullscreenDialog: true,
        reverseDurationInMilliseconds: 0,
      ),
    ],
  )
];
