import 'package:flutter/material.dart';

import '../../../components/main_appbar_component.dart';
import '../../../../core/router/routes.dart';
import '../../../components/custom_final_stage_listview_component.dart';

class AccessibilityWidgetsView extends StatelessWidget {
  final List<ListViewItem> _itemList = [
    ListViewItem(
      title: 'ExcludeSemantics',
      description:
          'A widget that drops all the semantics of its descendants. This can be used to hide subwidgets that would otherwise be reported but that would only be confusing. For example, the Material Components Chip widget hides the avatar since it is redundant with the chip label.',
      route: RoutePaths.excludeSemanticsWidget,
    ),
    ListViewItem(
      title: 'MergeSemantics',
      description: 'A widget that merges the semantics of its descendants.',
      route: RoutePaths.mergeSemanticsWidget,
    ),
    ListViewItem(
      title: 'Semantics',
      description:
          'A widget that annotates the widget tree with a description of the meaning of the widgets. Used by accessibility tools, search engines, and other semantic analysis software to determine the meaning of the application.',
      route: RoutePaths.semanticsWidget,
    ),
  ];

  final String _appBarTitle = 'Accessibility widgets';

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
