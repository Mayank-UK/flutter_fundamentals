import 'package:flutter/material.dart';

import '../../components/main_appbar_component.dart';
import '../../../core/router/routes.dart';
import '../../components/custom_final_stage_listview_component.dart';

class NativeDeviceFeaturesView extends StatelessWidget {
  final List<ListViewItem> _itemList = [
    ListViewItem(
      title: 'Filesystem',
      description: 'Using the filesystem of the device.',
      route: RoutePaths.fileSystem,
    ),
    ListViewItem(
      title: 'Camera',
      description: 'Using the camera of the device.',
      route: RoutePaths.camera,
    ),
    ListViewItem(
      title: 'Location',
      description: 'Using the location and gps of the device.',
      route: RoutePaths.location,
    ),
    ListViewItem(
      title: 'Bluetooth',
      description: 'Using the bluetooth of the device.',
      route: RoutePaths.bluetooth,
    ),
  ];

  final String _appBarTitle = 'Native device features';

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
