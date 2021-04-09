import 'package:flutter/material.dart';

import '../../../components/code_preview_component.dart';
import '../../../components/section_wrapper_component_component.dart';

class VisibilityView extends StatelessWidget {
  String appBarTitle = 'Visibility';
  String codeTabMarkdownLocation = 'assets/markdowns/test.md';

  @override
  Widget build(BuildContext context) {
    return CodePreviewTabsComponent(
      appBarTitle: this.appBarTitle,
      previewTab: _VisibilityImplementation(),
      codeTabMarkdownLocation: this.codeTabMarkdownLocation,
    );
  }
}

class _VisibilityImplementation extends StatefulWidget {
  @override
  _VisibilityImplementationState createState() =>
      _VisibilityImplementationState();
}

class _VisibilityImplementationState extends State<_VisibilityImplementation> {
  bool isSwitchedVisible = true;
  bool isSwitchedOpacity = true;
  double opacity = 1;

  void toggleSwitchVisibility(bool value) {
    if (this.isSwitchedVisible == false) {
      setState(() {
        this.isSwitchedVisible = true;
      });
      print('Switch Button is ON');
    } else {
      setState(() {
        this.isSwitchedVisible = false;
      });
      print('Switch Button is OFF');
    }
  }

  void toggleSwitchOpacity(bool value) {
    if (this.isSwitchedOpacity == false) {
      setState(() {
        this.isSwitchedOpacity = true;
        this.opacity = 1;
      });
      print('Switch Button is ON');
    } else {
      setState(() {
        this.isSwitchedOpacity = false;
        this.opacity = 0;
      });
      print('Switch Button is OFF');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        SectionWrapperComponent(
          title: 'Using "Visibility" widget for not occupy space',
          content: [
            Container(
              child: Text(
                  '"Visibility" widget has a named parameter "visible", which takes a boolean as a value.'),
            ),
            Container(
              child: Text(
                  'Below are two boxes, right one is visible, while left one is not visible and is not taking any space.'),
            ),
            Wrap(
              spacing: 8,
              children: [
                Wrap(
                  direction: Axis.vertical,
                  children: [
                    Switch(
                        value: this.isSwitchedVisible,
                        onChanged: this.toggleSwitchVisibility),
                    Text("Box visibility: ${this.isSwitchedVisible}")
                  ],
                ),
                Visibility(
                  visible: this.isSwitchedVisible,
                  child: Container(
                    color: Colors.amber,
                    height: 100,
                    width: 100,
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  color: Colors.red,
                  height: 50,
                  padding: EdgeInsets.all(8),
                  width: 100,
                  child: Text('Layout element'),
                ),
              ],
            ),
          ],
        ),
        SectionWrapperComponent(
          title: 'Using "Opacity" widget for occupying space',
          content: [
            Container(
              child: Text(
                  '"Opacity" widget has a named parameter "opacity", which takes in a floating point value.'),
            ),
            Wrap(
              spacing: 8,
              children: [
                Wrap(
                  direction: Axis.vertical,
                  children: [
                    Switch(
                        value: this.isSwitchedOpacity,
                        onChanged: this.toggleSwitchOpacity),
                    Text("Box opacity: ${this.opacity}"),
                  ],
                ),
                Opacity(
                  opacity: this.opacity,
                  child: Container(
                    color: Colors.amber,
                    height: 100,
                    width: 100,
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  color: Colors.red,
                  height: 50,
                  padding: EdgeInsets.all(8),
                  width: 100,
                  child: Text('Layout element'),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
