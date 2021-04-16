import 'package:flutter/material.dart';

import '../../../components/main_appbar_component.dart';
import '../../../components/section_wrapper_component_component.dart';
import '../../../components/text_block_component.dart';

class Flutter2View extends StatelessWidget {
  final String _appBarTitle = 'Flutter 2.0';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppBarComponent(appBarTitle: this._appBarTitle),
      body: SingleChildScrollView(
        child: Wrap(
          children: [
            SectionWrapperComponent(
              title: 'Flutter 2.0',
              content: [
                TextBlockComponent('content will be available soon.'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
