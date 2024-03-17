library simple_url_preview;

import 'package:collection/collection.dart';
import 'package:dio/dio.dart';
import 'package:dls_one/core/core.dart';
import 'package:flutter/material.dart';
import 'package:html/dom.dart';
import 'package:html/parser.dart';
import 'package:queen_validators/queen_validators.dart';
import 'package:url_launcher/url_launcher.dart';

import 'widgets/preview_description.dart';
import 'widgets/preview_title.dart';

/// Provides URL preview
class WebSimpleUrlPreview extends StatefulWidget {
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

  const WebSimpleUrlPreview({
    Key? key,
    required this.url,
    this.previewHeight = 66.0,
    this.isClosable,
    this.bgColor,
    this.titleStyle,
    this.titleLines = 2,
    this.descriptionStyle,
    this.descriptionLines = 3,
    this.siteNameStyle,
    this.previewContainerPadding,
    this.onTap,
    required this.onClosed,
  })  : assert(previewHeight >= 66.0, 'The preview height should be greater than or equal to 66'),
        assert(titleLines <= 2 && titleLines > 0, 'The title lines should be less than or equal to 2 and not equal to 0'),
        assert(descriptionLines <= 3 && descriptionLines > 0, 'The description lines should be less than or equal to 3 and not equal to 0'),
        super(key: key);

  @override
  WebSimpleUrlPreviewState createState() => WebSimpleUrlPreviewState();
}

class WebSimpleUrlPreviewState extends State<WebSimpleUrlPreview> {
  Map? _urlPreviewData;
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
    _getUrlData();
  }

  @override
  void didUpdateWidget(WebSimpleUrlPreview oldWidget) {
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

  void _getUrlData() async {
    if (!IsUrl().isValid(widget.url)) {
      setState(() {
        _urlPreviewData = null;
      });
      return;
    }

    var response = await Dio().get<dynamic>(widget.url);
    if (response.statusCode != 200) {
      if (!mounted) {
        return;
      }
      setState(() {
        _urlPreviewData = null;
      });
    }

    var document = parse(response.data);
    var data = <String, dynamic>{};
    _extractOGData(document, data, 'og:title');
    _extractOGData(document, data, 'og:description');
    _extractOGData(document, data, 'og:site_name');
    _extractOGData(document, data, 'og:image');

    if (!mounted) {
      return;
    }

    if (data.isNotEmpty) {
      setState(() {
        _urlPreviewData = data;
        _isVisible = true;
      });
    }
  }

  void _extractOGData(Document document, Map data, String parameter) {
    var titleMetaTag = document.getElementsByTagName("meta").firstWhereOrNull((meta) => meta.attributes['property'] == parameter);
    if (titleMetaTag != null) {
      data[parameter] = titleMetaTag.attributes['content'];
    }
  }

  void _launchURL() async {
    try {
      launchUrl(Uri.parse(widget.url));
    } catch (e) {
      throw 'Could not launch ${widget.url}: $e';
    }
  }

  @override
  Widget build(BuildContext context) {
    _isClosable = widget.isClosable ?? false;
    _initialize();

    if (_urlPreviewData == null || !_isVisible) {
      return Container();
    }

    return Container(
      padding: _previewContainerPadding,
      height: _previewHeight,
      color: widget.bgColor,
      child: Stack(
        children: [
          _buildPreviewCard(context).gestureDetector(onTap: _onTap).paddingOnly(right: _isClosable ? 16 : 0),
          _buildClosablePreview(context),
        ],
      ),
    );
  }

  Widget _buildClosablePreview(BuildContext context) {
    return _isClosable
        ? Align(
            alignment: Alignment.topRight,
            child: Container(child: Assets.icons.times1.svg(width: 18, height: 18, color: context.c_text_grey)).gestureDetector(
              onTap: () {
                setState(() {
                  _isVisible = false;
                  _previewHeight = 0.0;
                });
                widget.onClosed();
              },
            ),
          ).paddingSymmetric(horizontal: 12, vertical: 10)
        : const SizedBox();
  }

  Widget _buildPreviewCard(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              width: 4.0,
              height: double.infinity,
              color: context.c_grey_stoke,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                if (_isVisible)
                  PreviewTitle(
                    _urlPreviewData!['og:title'] as String,
                    _titleStyle ??
                        TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Theme.of(context).colorScheme.secondary,
                        ),
                    _titleLines,
                  ),
                PreviewDescription(
                  description,
                  _descriptionStyle ??
                      TextStyle(
                        fontSize: 14,
                        color: Theme.of(context).colorScheme.secondary,
                      ),
                  _descriptionLines,
                ),
              ],
            ).paddingOnly(left: 8).expanded(),
          ],
        ).expanded(),
      ],
    ).paddingSymmetric(horizontal: 12, vertical: 10);
  }

  String get description {
    if (_urlPreviewData != null) {
      if (_urlPreviewData!['og:description'] != null) {
        return _urlPreviewData!['og:description'] as String;
      } else {
        return '';
      }
    } else {
      return '';
    }
  }
}
