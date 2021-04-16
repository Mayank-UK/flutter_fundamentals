import 'package:flutter/material.dart';

import '../../../components/main_appbar_component.dart';
import '../../../components/section_wrapper_component_component.dart';
import '../../../components/content_group_wrapper_component.dart';
import '../../../components/text_block_component.dart';

class AsynchronyView extends StatelessWidget {
  final String _appBarTitle = 'Asynchrony support';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppBarComponent(appBarTitle: this._appBarTitle),
      body: SingleChildScrollView(
        child: Wrap(
          children: [
            SectionWrapperComponent(
              title: 'Asynchrony support',
              content: [
                TextBlockComponent(
                  'Dart libraries are full of functions that return Future or Stream objects. These functions are asynchronous: they return after setting up a possibly time-consuming operation (such as I/O), without waiting for that operation to complete. The async and await keywords support asynchronous programming, letting you write asynchronous code that looks similar to synchronous code.',
                ),
                ContentGroupWrapperComponent(
                  title: 'Handling Futures',
                  content: [
                    TextBlockComponent(
                      'Use async and await.',
                    ),
                    TextBlockComponent(
                      'Use the Future API, as described in the library tour.',
                    ),
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
