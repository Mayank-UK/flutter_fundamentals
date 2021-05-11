import 'package:flutter/material.dart';

import '../../../../components/code_preview_component.dart';
import './../../../../components/section_wrapper_component_component.dart';
import './../../../../components/text_block_component.dart';

class SliderWidgetView extends StatelessWidget {
  final String _appBarTitle = 'Slider';
  final String _codeTabMarkdownLocation = 'assets/markdowns/test.md';

  @override
  Widget build(BuildContext context) {
    return CodePreviewTabsComponent(
      appBarTitle: this._appBarTitle,
      previewTab: _SliderWidgetImplementation(),
      codeTabMarkdownLocation: this._codeTabMarkdownLocation,
    );
  }
}

class _SliderWidgetImplementation extends StatefulWidget {
  @override
  __SliderWidgetImplementationState createState() =>
      __SliderWidgetImplementationState();
}

class __SliderWidgetImplementationState
    extends State<_SliderWidgetImplementation> {
  double _currentSliderValue = 20;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: <Widget>[
        SectionWrapperComponent(
          title: 'Simple use',
          content: [
            TextBlockComponent(
              '"Slider" widget has named parameters like value, min, man, division, label, etc, which specify the widget\'s behavior and it\'s content.',
            ),
            Container(
              color: Colors.amber,
              child: Slider(
                value: _currentSliderValue,
                min: 0,
                max: 100,
                divisions: 5,
                label: _currentSliderValue.round().toString(),
                onChanged: (double value) {
                  setState(() {
                    _currentSliderValue = value;
                  });
                },
              ),
            ),
          ],
        ),
      ],
    );
  }
}
