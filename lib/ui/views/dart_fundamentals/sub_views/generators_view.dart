import 'package:flutter/material.dart';

import '../../../components/main_appbar_component.dart';
import '../../../components/section_wrapper_component_component.dart';
import '../../../components/content_group_wrapper_component.dart';
import '../../../components/text_block_component.dart';

class GeneratorsView extends StatelessWidget {
  final String _appBarTitle = 'Generators';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppBarComponent(appBarTitle: this._appBarTitle),
      body: SingleChildScrollView(
        child: Wrap(
          children: [
            SectionWrapperComponent(
              title: 'Generators',
              content: [
                TextBlockComponent(
                  'When you need to lazily produce a sequence of values, consider using a generator function.',
                ),
                ContentGroupWrapperComponent(
                  title:
                      'Dart has built-in support for two kinds of generator functions:',
                  content: [
                    TextBlockComponent(
                        'Synchronous generator: Returns an Iterable object.'),
                    TextBlockComponent(
                        'Asynchronous generator: Returns a Stream object.'),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
