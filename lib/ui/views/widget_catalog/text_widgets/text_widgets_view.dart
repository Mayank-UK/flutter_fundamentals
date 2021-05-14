import 'package:flutter/material.dart';

import '../../../components/main_appbar_component.dart';

import '../../../../core/router/routes.dart';
import '../../../components/custom_final_stage_listview_component.dart';

class TextWidgetsView extends StatelessWidget {
  final List<ListViewItem> _itemList = [
    ListViewItem(
      title: 'DefaultTextStyle',
      description:
          'The text style to apply to descendant Text widgets without explicit style.',
      route: RoutePaths.defaultTextStyle,
    ),
    ListViewItem(
      title: 'RichText',
      description:
          'The RichText widget displays text that uses multiple different styles. The text to display is described using a tree of TextSpan objects, each of which has an associated style that is used for that subtree. The text might break across multiple lines or might all be displayed on the same line depending on the layout constraints.',
      route: RoutePaths.richText,
    ),
    ListViewItem(
      title: 'Text',
      description: 'A run of text with a single style.',
      route: RoutePaths.text,
    ),
  ];

  final String _appBarTitle = 'Text widgets';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppBarComponent(appBarTitle: this._appBarTitle),
      body: CustomFinalStageListViewComponent(
        itemList: _itemList,
      ),
    );
  }
}
