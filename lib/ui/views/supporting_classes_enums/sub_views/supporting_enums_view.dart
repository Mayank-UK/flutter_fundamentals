import 'package:flutter/material.dart';
import 'package:flutter_developers_guide/ui/components/text_block_component.dart';

import '../../../components/code_preview_component.dart';
import '../../../components/section_wrapper_component_component.dart';

class SupportingEnumsView extends StatelessWidget {
  final String _appBarTitle = 'Most used supporting enums';
  final String _codeTabMarkdownLocation = 'assets/markdowns/test.md';

  @override
  Widget build(BuildContext context) {
    return CodePreviewTabsComponent(
      appBarTitle: this._appBarTitle,
      previewTab: _SupportingEnumsImplementation(),
      codeTabMarkdownLocation: this._codeTabMarkdownLocation,
    );
  }
}

class _SupportingEnumsImplementation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: <Widget>[
        SectionWrapperComponent(
          title: 'Axis',
          content: [
            TextBlockComponent(
              'The two cardinal directions in two dimensions.',
            ),
            TextBlockComponent(
              'The axis is always relative to the current coordinate space. This means, for example, that a horizontal axis might actually be diagonally from top right to bottom left, due to some local Transform applied to the scene.',
            ),
          ],
        ),
        SectionWrapperComponent(
          title: 'AxisDirection',
          content: [
            TextBlockComponent(
              'A direction along either the horizontal or vertical Axis.',
            ),
          ],
        ),
        SectionWrapperComponent(
          title: 'BorderStyle',
          content: [
            TextBlockComponent(
              'The style of line to draw for a BorderSide in a Border.',
            ),
          ],
        ),
        SectionWrapperComponent(
          title: 'BoxFit',
          content: [
            TextBlockComponent(
              'How a box should be inscribed into another box.',
            ),
          ],
        ),
        SectionWrapperComponent(
          title: 'BoxShape',
          content: [
            TextBlockComponent(
              'The shape to use when rendering a Border or BoxDecoration.',
            ),
            TextBlockComponent(
              'Consider using ShapeBorder subclasses directly (with ShapeDecoration), instead of using BoxShape and Border, if the shapes will need to be interpolated or animated. The Border class cannot interpolate between different shapes.',
            ),
          ],
        ),
        SectionWrapperComponent(
          title: 'FontStyle',
          content: [
            TextBlockComponent(
              'Whether to slant the glyphs in the font.',
            ),
          ],
        ),
        SectionWrapperComponent(
          title: 'TextAlign',
          content: [
            TextBlockComponent(
              'Whether and how to align text horizontally.',
            ),
          ],
        ),
        SectionWrapperComponent(
          title: 'TextDirection',
          content: [
            TextBlockComponent(
              'A direction in which text flows.',
            ),
          ],
        ),
      ],
    );
  }
}
