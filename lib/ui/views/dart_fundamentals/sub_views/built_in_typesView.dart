import 'package:flutter/material.dart';

import '../../../components/main_appbar_component.dart';
import '../../../components/section_wrapper_component_component.dart';
import '../../../components/content_group_wrapper_component.dart';
import '../../../components/text_block_component.dart';

class BuiltInTypesView extends StatelessWidget {
  final String _appBarTitle = 'Build in types';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppBarComponent(appBarTitle: this._appBarTitle),
      body: SingleChildScrollView(
        child: Wrap(
          children: [
            SectionWrapperComponent(
              title: 'Build in types',
              content: [
                TextBlockComponent(
                  'The data types build into dart language',
                ),
                ContentGroupWrapperComponent(
                  title: 'Important build in data types',
                  content: [
                    TextBlockComponent(
                      'int\ndouble\nString\nbool\nList\nSet\nMap\nRunes\nSymbol\nNull',
                    ),
                  ],
                ),
                ContentGroupWrapperComponent(
                  title: 'Other types',
                  content: [
                    TextBlockComponent(
                      'Object\nFuture\nStream\nIterable\nNever\ndynamic\nvoid',
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
