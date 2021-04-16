import 'package:flutter/material.dart';

import '../../../components/main_appbar_component.dart';
import '../../../components/section_wrapper_component_component.dart';
import '../../../components/text_block_component.dart';

class LibrariesVisibilityView extends StatelessWidget {
  final String _appBarTitle = 'Libraries and visibility';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppBarComponent(appBarTitle: this._appBarTitle),
      body: SingleChildScrollView(
        child: Wrap(
          children: [
            SectionWrapperComponent(
              title: 'Libraries and visibility',
              content: [
                TextBlockComponent(
                  'The import and library directives can help you create a modular and shareable code base. Libraries not only provide APIs, but are a unit of privacy: identifiers that start with an underscore (_) are visible only inside the library. Every Dart app is a library, even if it doesn’t use a library directive.',
                ),
                TextBlockComponent(
                  'Libraries can be distributed using packages.',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
