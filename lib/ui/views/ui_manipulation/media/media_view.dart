import 'package:flutter/material.dart';

import '../../../components/main_appbar_component.dart';
import '../../../components/custom_final_stage_listview_component.dart';
import './../../../../core/router/routes.dart';

class MediaView extends StatelessWidget {
  final List<ListViewItem> _itemList = [
    ListViewItem(
      title: 'Video',
      description: 'Playback of video.',
      route: RoutePaths.video,
    ),
    ListViewItem(
      title: 'Audio',
      description: 'Playback of audio.',
      route: RoutePaths.audio,
    ),
  ];

  final String _appBarTitle = 'Media';

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
