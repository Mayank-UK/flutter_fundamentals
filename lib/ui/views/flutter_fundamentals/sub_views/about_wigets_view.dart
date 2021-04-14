import 'package:flutter/material.dart';
import 'package:flutter_developers_guide/ui/design_system/design_system.dart';

import '../../../components/main_appbar_component.dart';
import '../../../components/section_wrapper_component_component.dart';
import '../../../components/content_group_wrapper_component.dart';
import '../../../components/text_block_component.dart';

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
                TextBlockComponent(
                  'Every UI element in flutter is a widget including padding, margin, border, colors, etc. These widgets can be nested to form widget trees.',
                ),
                TextBlockComponent(
                  'Every user defined widget extends either "StatelessWidget" or "StatefullWidget"',
                ),
                TextBlockComponent(
                  'Every widget contain a build method with a context argument and return a widget.',
                ),
                TextBlockComponent(
                  'A function "runApp()" is used to render flutter app, it takes the root widget as a parameter.',
                ),
                TextBlockComponent(
                  'Every widget is an instance of a dart class.',
                ),
                ContentGroupWrapperComponent(
                  title: 'Flutter maintains three types of tree structures:',
                  content: <Widget>[
                    Text(
                      'Widget tree (rebuilds frequently)',
                    ),
                    Text(
                        'Element tree (links widget tree with render tree, rebuilds rarely)'),
                    Text(
                      'Render tree (render objects on the screen, rebuilds rarely)',
                    ),
                  ],
                ),
              ],
            ),
            SectionWrapperComponent(
              title: 'StatefulWidget',
              content: [
                TextBlockComponent(
                  'Stateful widget is a combination of two classes, one inherits "StatelessWidget" while other inherits "StatefulWidget"',
                ),
                TextBlockComponent(
                  'Stateful widget gets access to "setState()" api, which trigger a re-render whenever it is called. Every time state is changed, flutter calls the build method to update the changes in UI.',
                ),
              ],
            ),
            SectionWrapperComponent(
              title: 'Optimizing widgets for performance',
              content: [
                TextBlockComponent(
                  'Make class properties final and it\'s constructor const wherever possible. This will help in instantiating a class with const.',
                ),
                TextBlockComponent(
                  'Use const whenever possible when instantiating a class object. This prevents unnecessary rebuilding of that class again and again whenever build is called, which results in good performance gains.',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
