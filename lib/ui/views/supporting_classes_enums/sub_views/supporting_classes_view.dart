import 'package:flutter/material.dart';
import 'package:flutter_developers_guide/ui/components/text_block_component.dart';

import '../../../components/code_preview_component.dart';
import '../../../components/section_wrapper_component_component.dart';

class SupportingClassesView extends StatelessWidget {
  final String _appBarTitle = 'Most used supporting classes';
  final String _codeTabMarkdownLocation =
      'assets/markdowns/supporting_classes_enums/supporting_classes_markdown.md';

  @override
  Widget build(BuildContext context) {
    return CodePreviewTabsComponent(
      appBarTitle: this._appBarTitle,
      previewTab: _SupportingClassesImplementation(),
      codeTabMarkdownLocation: this._codeTabMarkdownLocation,
    );
  }
}

class _SupportingClassesImplementation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: <Widget>[
        SectionWrapperComponent(
          title: 'Alignment',
          content: [
            TextBlockComponent(
              'A point within a rectangle.',
            ),
            TextBlockComponent(
              'Alignment(0.0, 0.0) represents the center of the rectangle. The distance from -1.0 to +1.0 is the distance from one side of the rectangle to the other side of the rectangle. Therefore, 2.0 units horizontally (or vertically) is equivalent to the width (or height) of the rectangle.',
            ),
          ],
        ),
        SectionWrapperComponent(
          title: 'AssetImage',
          content: [
            TextBlockComponent(
              'Fetches an image from an AssetBundle, having determined the exact image to use based on the context.',
            ),
            TextBlockComponent(
              'Given a main asset and a set of variants, AssetImage chooses the most appropriate asset for the current context, based on the device pixel ratio and size given in the configuration passed to resolve.',
            ),
          ],
        ),
        SectionWrapperComponent(
          title: 'Border',
          content: [
            TextBlockComponent(
              'A border of a box, comprised of four sides: top, right, bottom, left.',
            ),
            TextBlockComponent(
              'The sides are represented by BorderSide objects.',
            ),
          ],
        ),
        SectionWrapperComponent(
          title: 'BorderRadius',
          content: [
            TextBlockComponent(
              'An immutable set of radii for each corner of a rectangle.',
            ),
            TextBlockComponent(
              'Used by BoxDecoration when the shape is a BoxShape.rectangle.',
            ),
          ],
        ),
        SectionWrapperComponent(
          title: 'BorderSide',
          content: [TextBlockComponent('content will be available soon.')],
        ),
        SectionWrapperComponent(
          title: 'BoxBorder',
          content: [TextBlockComponent('content will be available soon.')],
        ),
        SectionWrapperComponent(
          title: 'BoxDecoration',
          content: [TextBlockComponent('content will be available soon.')],
        ),
        SectionWrapperComponent(
          title: 'BoxShadow',
          content: [TextBlockComponent('content will be available soon.')],
        ),
        SectionWrapperComponent(
          title: 'Color',
          content: [TextBlockComponent('content will be available soon.')],
        ),
        SectionWrapperComponent(
          title: 'CircleBorder',
          content: [TextBlockComponent('content will be available soon.')],
        ),
        SectionWrapperComponent(
          title: 'EdgeInsets',
          content: [TextBlockComponent('content will be available soon.')],
        ),
        SectionWrapperComponent(
          title: 'FontWeight',
          content: [TextBlockComponent('content will be available soon.')],
        ),
        SectionWrapperComponent(
          title: 'Gradient',
          content: [TextBlockComponent('content will be available soon.')],
        ),
        SectionWrapperComponent(
          title: 'Shadow',
          content: [TextBlockComponent('content will be available soon.')],
        ),
        SectionWrapperComponent(
          title: 'TextDecoration',
          content: [TextBlockComponent('content will be available soon.')],
        ),
        SectionWrapperComponent(
          title: 'TextStyle',
          content: [TextBlockComponent('content will be available soon.')],
        ),
      ],
    );
  }
}
