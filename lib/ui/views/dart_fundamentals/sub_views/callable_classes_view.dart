import 'package:flutter/material.dart';

import '../../../components/main_appbar_component.dart';
import '../../../components/section_wrapper_component_component.dart';
import '../../../components/text_block_component.dart';

class CallableClassesView extends StatelessWidget {
  final String _appBarTitle = 'Callable classes';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppBarComponent(appBarTitle: this._appBarTitle),
      body: SingleChildScrollView(
        child: Wrap(
          children: [
            SectionWrapperComponent(
              title: 'Callable classes',
              content: [
                TextBlockComponent(
                    'To allow an instance of your Dart class to be called like a function, implement the call() method.'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
