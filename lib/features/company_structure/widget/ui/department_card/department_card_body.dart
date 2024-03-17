part of 'department_card.dart';

class _DepartmentCardBody extends StatelessWidget {
  const _DepartmentCardBody({
    required this.node,
    required this.onTapSettings,
  });

  final DepartmentNode node;
  final VoidCallback? onTapSettings;

  @override
  Widget build(BuildContext context) {
    final manager = node.department.manager;
    final employees = node.department.staffPositions.fold<Iterable<Employee>>(
      <Employee>[],
      (result, item) => result.followedBy(item.staff),
    ).toList();
    final assetImage = onTapSettings != null
        ? Assets.icons.departmentSetting
        : Assets.icons.openEye;

    return DecoratedBox(
      decoration: BoxDecoration(
        color: context.c_grey_stoke,
        borderRadius: BorderRadius.circular(6.r),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 4.h),
            color: Colors.black.withOpacity(0.08),
            blurRadius: 4.r,
          ),
        ],
      ),
      child: Padding(
        padding: EdgeInsets.all(1.r),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(6.r),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.all(12.r),
                      child: Text(
                        node.department.meta.name,
                        style: context.ts_s14h16_4w500,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 4.w),
                    child: InkWell(
                      onTap: onTapSettings,
                      borderRadius: BorderRadius.circular(16.r),
                      child: Padding(
                        padding: EdgeInsets.all(12.r),
                        child: assetImage.svg(
                          width: 16.r,
                          height: 16.r,
                          color: context.c_text_grey,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              _DepartmentSection(
                title: manager.position.name,
                body: IntrinsicHeight(
                  child: manager.assigned != null
                      ? Row(
                          children: [
                            DLSAvatar(
                              size: 24,
                              imageUrl: manager.assigned?.profile.avatar ?? '',
                              username: manager.assigned?.profile.name,
                            ),
                            SizedBox(width: 8.w),
                            Expanded(
                              child: Text(
                                manager.assigned?.profile.name ?? '',
                                style: context.ts_s14h22_4w400
                                    .copyWith(height: 20 / 14),
                              ),
                            ),
                          ],
                        )
                      : Padding(
                          padding: EdgeInsets.only(top: 3.h),
                          child: Text(
                            S.current.notAssigned,
                            style: context.ts_s12h14w400
                                .copyWith(color: context.c_text_grey),
                          ),
                        ),
                ),
              ),
              SizedBox(height: 1.h),
              _DepartmentSection(
                title: S.current.employees,
                body: Padding(
                  padding: EdgeInsets.only(bottom: 10.h),
                  child: employees.isNotEmpty
                      ? Row(
                          children: List.generate(
                            min(employees.length, 8) * 2 - 1,
                            (index) {
                              if (index.isOdd) {
                                return SizedBox(width: 8.w);
                              }
                              final itemIndex = (index / 2).ceil();

                              if (employees.length > 8 && itemIndex == 7) {
                                final difference = employees.length - 9;
                                return Container(
                                  width: 24.r,
                                  height: 24.r,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                    color: context.c_grey_grey,
                                    shape: BoxShape.circle,
                                  ),
                                  child: Text(
                                    '+$difference',
                                    style: context.ts_s10h11_7w400
                                        .copyWith(color: context.c_text_grey),
                                  ),
                                );
                              }

                              final employee = employees[itemIndex];

                              return DLSAvatar(
                                size: 24,
                                imageUrl: employee.profile.avatar ?? '',
                                username: employee.profile.name,
                              );
                            },
                          ),
                        )
                      : Padding(
                          padding: EdgeInsets.only(top: 3.h),
                          child: Text(
                            S.current.areNotAssigned,
                            style: context.ts_s12h14w400
                                .copyWith(color: context.c_text_grey),
                          ),
                        ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _DepartmentSection extends StatelessWidget {
  const _DepartmentSection({
    required this.body,
    required this.title,
  });

  final Widget body;
  final String title;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return ColoredBox(
      color: theme.scaffoldBackgroundColor,
      child: Padding(
        padding: EdgeInsets.all(12.r),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style:
                  context.ts_s14h22_4w400.copyWith(color: context.c_text_grey),
            ),
            SizedBox(height: 8.h),
            body,
          ],
        ),
      ),
    );
  }
}
