import 'package:dls_one/web/grid/grid.dart';
import 'package:flutter/material.dart';

class GridBuilder extends StatefulWidget {
  const GridBuilder({
    required this.children,
    required this.color,
    required this.maxWidth,
    required this.maxHeight,
    super.key,
  });

  final List<Widget> children;
  final Color color;
  final double maxWidth;
  final double maxHeight;

  @override
  State<GridBuilder> createState() => _GridBuilderState();
}

class _GridBuilderState extends State<GridBuilder> {
  final _controller = PageController();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final itemsPerPage = widget.maxWidth < 768
        ? 8
        : (widget.maxWidth >= 768 && widget.maxWidth <= 1440)
            ? 16
            : 32;
    final t = widget.children.length % itemsPerPage;
    final pages = widget.children.length ~/ itemsPerPage + (t > 0 ? 1 : 0);
    return SizedBox(
      height: widget.maxHeight,
      child: Scaffold(
        backgroundColor: widget.color,
        body: Stack(
          children: [
            PageView.builder(
              controller: _controller,
              itemCount: pages,
              itemBuilder: (context, i) {
                return Grid(
                  width: widget.maxWidth,
                  children: List.generate(
                    i + 1 == pages ? t : itemsPerPage,
                    (index) => widget.children[index + i * itemsPerPage],
                  ),
                );
              },
            ),
            if (pages > 1)
              Positioned(
                top: 0,
                left: 0,
                child: InkWell(
                  onTap: () => _controller.previousPage(
                    duration: const Duration(milliseconds: 350),
                    curve: Curves.easeInOut,
                  ),
                  child: Container(
                    width: 50,
                    height: widget.maxHeight,
                    color: Colors.black12,
                  ),
                ),
              ),
            if (pages > 1)
              Positioned(
                top: 0,
                right: 0,
                child: InkWell(
                  onTap: () => _controller.nextPage(
                    duration: const Duration(milliseconds: 350),
                    curve: Curves.easeInOut,
                  ),
                  child: Container(
                    width: 50,
                    height: widget.maxHeight,
                    color: Colors.black12,
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
