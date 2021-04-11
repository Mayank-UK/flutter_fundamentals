import 'package:flutter/material.dart';

import '../../../components/main_appbar_component.dart';
import '../../../components/section_wrapper_component_component.dart';

class AboutWidgetsView extends StatelessWidget {
  final String _appBarTitle = 'About widgets';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppBarComponent(appBarTitle: this._appBarTitle),
      body: SingleChildScrollView(
        child: Wrap(
          children: [
            SectionWrapperComponent(
              title: 'Important concepts',
              content: [
                Container(
                  width: double.infinity,
                  child: Text(
                      'Every UI element in flutter is a widget including padding, margin, border, colors, etc. These widgets can be nested to form widget trees.'),
                ),
                Container(
                  width: double.infinity,
                  child: Text(
                      'Every user defined widget extends either "StatelessWidget" or "StatefullWidget"'),
                ),
                Container(
                  width: double.infinity,
                  child: Text(
                      'Every widget contain a build method with a context argument and return a widget.'),
                ),
                Container(
                  width: double.infinity,
                  child: Text(
                      'A function "runApp()" is used to render flutter app, it takes the root widget as a parameter.'),
                ),
                Container(
                  width: double.infinity,
                  child: const Text(
                      'Every widget is an instance of a dart class.'),
                ),
                Wrap(
                  runSpacing: 4,
                  children: [
                    Text(
                      'Flutter maintains three types of tree structures:',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '* Widget tree (rebuilds frequently)',
                    ),
                    Text(
                        '* Element tree (links widget tree with render tree, rebuilds rarely)'),
                    Text(
                        '* Render tree (render objects on the screen, rebuilds rarely)'),
                  ],
                ),
              ],
            ),
            SectionWrapperComponent(
              title: 'StatefulWidget',
              content: [
                Container(
                  width: double.infinity,
                  child: Text(
                      'Stateful widget is a combination of two classes, one inherits "StatelessWidget" while other inherits "StatefulWidget"'),
                ),
                Container(
                  width: double.infinity,
                  child: Text(
                      'Stateful widget gets access to "setState()" api, which trigger a re-render whenever it is called. Every time state is changed, flutter calls the build method to update the changes in UI.'),
                ),
              ],
            ),
            SectionWrapperComponent(
              title: 'Optimizing widgets for performance',
              content: [
                Container(
                  width: double.infinity,
                  child: const Text(
                      'Make class properties final and it\'s constructor const wherever possible. This will help in instantiating a class with const.'),
                ),
                Container(
                  width: double.infinity,
                  child: const Text(
                      'Use const whenever possible when instantiating a class object. This prevents unnecessary rebuilding of that class again and again whenever build is called, which results in good performance gains.'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
