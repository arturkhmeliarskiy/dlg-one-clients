import 'package:dls_one/core/core.dart';
import 'package:dls_one/core/widgets/dls_loader/square_progress_indicator.dart';
import 'package:flutter/material.dart';

class LoadMoreListItem extends StatefulWidget {
  const LoadMoreListItem({
    required this.loadMore,
    super.key,
  });

  final VoidCallback loadMore;

  @override
  State<LoadMoreListItem> createState() => _LoadMoreListItemState();
}

class _LoadMoreListItemState extends State<LoadMoreListItem> {
  @override
  void initState() {
    super.initState();
    widget.loadMore();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100.h,
      child: const Center(child: SquareProgressIndicator()),
    );
  }
}
