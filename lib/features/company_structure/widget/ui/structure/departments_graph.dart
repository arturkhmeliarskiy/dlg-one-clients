import 'package:dls_one/core/core.dart';
import 'package:dls_one/features/company_structure/model/department_node.dart';
import 'package:dls_one/features/company_structure/widget/ui/department_card/department_card.dart';
import 'package:dls_one/features/company_structure/widget/ui/structure/department_graph_builder.dart';
import 'package:dls_one/features/company_structure/widget/ui/structure/zoom_control_panel.dart';
import 'package:flutter/material.dart';
import 'package:graphview/GraphView.dart';

class DepartmentsGraph extends StatefulWidget {
  const DepartmentsGraph({
    required this.node,
    this.openSettings,
    this.createDepartment,
    super.key,
  });

  final DepartmentNode node;
  final void Function(DepartmentNode)? openSettings;
  final void Function(DepartmentNode)? createDepartment;

  @override
  State<DepartmentsGraph> createState() => _DepartmentsGraphState();
}

class _DepartmentsGraphState extends State<DepartmentsGraph> {
  static final _siblingSpace = 20.w;
  // TODO: добавить расчет максимальной ширины из дерева.
  static final _margin = 100000.0.r;

  final BuchheimWalkerConfiguration _configuration =
      BuchheimWalkerConfiguration();
  final _graphBuilder = DepartmentGraphBuilder();

  final _controller = TransformationController();

  ValueNotifier<double>? _zoomNotifier;

  double get _zoomValue => _controller.value.entry(0, 0);

  @override
  void initState() {
    super.initState();
    _graphBuilder.apply(widget.node);

    _configuration
      ..siblingSeparation = _siblingSpace.ceil()
      ..levelSeparation = 40.h.ceil()
      ..subtreeSeparation = _siblingSpace.ceil()
      ..orientation = (BuchheimWalkerConfiguration.ORIENTATION_TOP_BOTTOM);

    _controller.addListener(_controllerListener);
  }

  void _controllerListener() {
    _zoomNotifier?.value = _zoomValue;
  }

  @override
  void didUpdateWidget(DepartmentsGraph oldWidget) {
    super.didUpdateWidget(oldWidget);

    if (widget.node != oldWidget.node) {
      _graphBuilder.apply(widget.node);
    }
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    final notifier = ScaleFactorNotifier.of(context);

    if (_zoomNotifier != notifier) {
      _zoomNotifier?.removeListener(_zoomListener);
      _zoomNotifier = notifier;
      _zoomNotifier?.addListener(_zoomListener);
    }
  }

  void _zoomListener() {
    final newValue = _zoomNotifier?.value;
    if (newValue == null || newValue == _zoomValue) {
      return;
    }
    final matrix = _controller.value
      ..setEntry(0, 0, newValue)
      ..setEntry(1, 1, newValue)
      ..setEntry(2, 2, newValue);

    _controller.value = matrix;
  }

  @override
  void dispose() {
    _controller.dispose();
    _zoomNotifier?.removeListener(_zoomListener);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return InteractiveViewer(
      transformationController: _controller,
      boundaryMargin: EdgeInsets.all(_margin.r),
      minScale: ZoomControlPanel.minZoom,
      maxScale: ZoomControlPanel.maxZoom,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          // Если граф будет слишком большой, он не влезет в размеры жкрана.
          // Добавляем большие отступы при помощи стека.
          Positioned(
            left: -_margin,
            right: -_margin,
            bottom: -_margin,
            top: -_margin,
            child: Center(
              child: GraphView(
                animated: false,
                graph: _graphBuilder.graph,
                algorithm: BuchheimWalkerAlgorithm(
                  _configuration,
                  TreeEdgeRenderer(_configuration),
                ),
                paint: Paint()
                  ..color = context.c_text_grey
                  ..strokeWidth = 1.r
                  ..style = PaintingStyle.stroke,
                builder: (Node node) {
                  // Пакет написан не очень качественно, тут всегда точно будет key не null.
                  final value = node.key!.value as DepartmentNode;

                  return DepartmentCard(
                    node: value,
                    onTapAdd: widget.createDepartment != null
                        ? () {
                            widget.createDepartment?.call(value);
                          }
                        : null,
                    onTapSettings: widget.openSettings != null
                        ? () {
                            widget.openSettings?.call(value);
                          }
                        : null,
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
