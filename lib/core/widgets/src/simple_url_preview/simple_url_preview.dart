import 'package:collection/collection.dart';
import 'package:common/common.dart';
import 'package:dio/dio.dart';
import 'package:dls_one/app/di/app_di.dart';
import 'package:dls_one/core/core.dart';
import 'package:dls_one/core/widgets/src/simple_url_preview/widgets/preview_description.dart';
import 'package:dls_one/core/widgets/src/simple_url_preview/widgets/preview_title.dart';
import 'package:flutter/material.dart';
import 'package:html/dom.dart';
import 'package:html/parser.dart';
import 'package:queen_validators/queen_validators.dart';
import 'package:url_launcher/url_launcher.dart';

/// Provides URL preview
class SimpleUrlPreview extends StatefulWidget {
  const SimpleUrlPreview({
    required this.url,
    required this.onClosed,
    this.previewHeight = 58.0,
    this.isClosable,
    this.bgColor,
    this.titleStyle,
    this.titleLines = 2,
    this.descriptionStyle,
    this.descriptionLines = 3,
    this.siteNameStyle,
    this.previewContainerPadding,
    this.onTap,
    super.key,
  })  : assert(
          previewHeight >= 54.0,
          'The preview height should be greater than or equal to 130',
        ),
        assert(
          titleLines <= 2 && titleLines > 0,
          'The title lines should be less than or equal to 2 and not equal to 0',
        ),
        assert(
          descriptionLines <= 3 && descriptionLines > 0,
          'The description lines should be less than or equal to 3 and not equal to 0',
        );

  /// URL for which preview is to be shown
  final String url;

  /// Height of the preview
  final double previewHeight;

  /// Whether or not to show close button for the preview
  final bool? isClosable;

  /// Действие по закрытию крестиком
  final VoidCallback onClosed;

  /// Background color
  final Color? bgColor;

  /// Style of Title.
  final TextStyle? titleStyle;

  /// Number of lines for Title. (Max possible lines = 2)
  final int titleLines;

  /// Style of Description
  final TextStyle? descriptionStyle;

  /// Number of lines for Description. (Max possible lines = 3)
  final int descriptionLines;

  /// Style of site title
  final TextStyle? siteNameStyle;

  /// Container padding
  final EdgeInsetsGeometry? previewContainerPadding;

  /// onTap URL preview, by default opens URL in default browser
  final VoidCallback? onTap;

  @override
  State<SimpleUrlPreview> createState() => _SimpleUrlPreviewState();
}

class _SimpleUrlPreviewState extends State<SimpleUrlPreview> {
  static const _documentTitle = 'og:title';
  static const _documentDescription = 'og:description';
  static const _documentSiteName = 'og:site_name';
  static const _documentImage = 'og:image';

  Map<String, dynamic>? _urlPreviewData;
  bool _isVisible = true;
  late bool _isClosable;
  double? _previewHeight;
  TextStyle? _titleStyle;
  int? _titleLines;
  TextStyle? _descriptionStyle;
  int? _descriptionLines;
  EdgeInsetsGeometry? _previewContainerPadding;
  VoidCallback? _onTap;

  @override
  void initState() {
    _previewHeight = widget.previewHeight;

    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      _getUrlData();
    });
  }

  @override
  void didUpdateWidget(SimpleUrlPreview oldWidget) {
    super.didUpdateWidget(oldWidget);
    _getUrlData();
  }

  void _initialize() {
    _descriptionStyle = widget.descriptionStyle;
    _descriptionLines = widget.descriptionLines;
    _titleStyle = widget.titleStyle;
    _titleLines = widget.titleLines;
    _previewContainerPadding = widget.previewContainerPadding;
    _onTap = widget.onTap ?? _launchURL;
  }

  Future<void> _getUrlData() async {
    try {
      if (!IsUrl().isValid(widget.url)) {
        setState(() {
          _urlPreviewData = null;
        });
        return;
      }

      final response = await Dio().get<dynamic>(widget.url);
      if (response.statusCode != 200) {
        if (!mounted) {
          return;
        }
        setState(() {
          _urlPreviewData = null;
        });
      }

      final document = parse(response.data);
      final data = <String, dynamic>{};
      _extractOGData(document, data, _documentTitle);
      _extractOGData(document, data, _documentDescription);
      _extractOGData(document, data, _documentSiteName);
      _extractOGData(document, data, _documentImage);

      if (!mounted) {
        return;
      }

      if (data.isNotEmpty) {
        setState(() {
          _urlPreviewData = data;
          _isVisible = true;
        });
      }
    } catch (error, stack) {
      AppDI.findRepository<DlsLogger>().errorPrinter(error, stack);
    }
  }

  void _extractOGData(
    Document document,
    Map<String, dynamic> data,
    String parameter,
  ) {
    final titleMetaTag = document
        .getElementsByTagName('meta')
        .firstWhereOrNull((meta) => meta.attributes['property'] == parameter);
    if (titleMetaTag != null) {
      data[parameter] = titleMetaTag.attributes['content'];
    }
  }

  Future<void> _launchURL() async {
    try {
      await launchUrl(Uri.parse(widget.url));
    } catch (error, stack) {
      AppDI.findRepository<DlsLogger>().errorPrinter(error, stack);
    }
  }

  @override
  Widget build(BuildContext context) {
    _isClosable = widget.isClosable ?? false;
    _initialize();

    if (_urlPreviewData == null || !_isVisible) {
      return const SizedBox();
    }

    return Container(
      padding: _previewContainerPadding,
      height: _previewHeight,
      child: Padding(
        padding: EdgeInsets.only(left: 16.w, right: 16.w),
        child: Stack(
          children: [
            Padding(
              padding: EdgeInsets.only(right: _isClosable ? 16.w : 0),
              child: _buildPreviewCard(context),
            ),
            _buildClosablePreview(context)
          ],
        ),
      ),
    );
  }

  Widget _buildClosablePreview(BuildContext context) {
    if (_isClosable) {
      return Align(
        alignment: Alignment.topRight,
        child: DLSiconButton(
          svg: Assets.icons.times1.svg(
            width: 18.r,
            height: 18.r,
            color: context.c_text_grey,
          ),
          onTap: () {
            setState(() {
              _isVisible = false;
              _previewHeight = 0.0;
            });
            widget.onClosed();
          },
        ),
      );
    }
    return const SizedBox();
  }

  Widget _buildPreviewCard(BuildContext context) {
    return GestureDetector(
      onTap: _onTap,
      child: Column(
        children: [
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 4.w,
                  height: double.infinity,
                  color: context.c_grey_stoke,
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(left: 8.w),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        if (_isVisible &&
                            _urlPreviewData?[_documentTitle] != null)
                          PreviewTitle(
                            _urlPreviewData![_documentTitle] as String,
                            _titleStyle ??
                                TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16.sp,
                                  color:
                                      Theme.of(context).colorScheme.secondary,
                                ),
                            _titleLines,
                          ),
                        PreviewDescription(
                          description,
                          _descriptionStyle ??
                              TextStyle(
                                fontSize: 14.sp,
                                color: Theme.of(context).colorScheme.secondary,
                              ),
                          _descriptionLines,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  String get description {
    if (_urlPreviewData != null) {
      if (_urlPreviewData![_documentDescription] != null) {
        return _urlPreviewData![_documentDescription] as String;
      } else {
        return '';
      }
    } else {
      return '';
    }
  }
}
