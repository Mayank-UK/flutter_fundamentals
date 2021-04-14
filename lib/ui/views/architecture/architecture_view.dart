import 'package:flutter/material.dart';

import '../../components/main_appbar_component.dart';
import '../../components/section_wrapper_component_component.dart';
import '../../components/text_block_component.dart';

class ArchitectureView extends StatelessWidget {
  final String _appBarTitle = 'Architecture';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppBarComponent(appBarTitle: this._appBarTitle),
      body: SingleChildScrollView(
        child: Wrap(
          children: [
            SectionWrapperComponent(
              title: 'MVVM architecture pattern',
              content: [
                TextBlockComponent('In development'),
              ],
            ),
            SectionWrapperComponent(
              title: 'Directory structure',
              content: [
                TextBlockComponent('In development'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
