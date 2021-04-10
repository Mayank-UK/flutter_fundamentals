import 'package:flutter/material.dart';

import '../../../../core/router/routes.dart';

import '../../../components/main_appbar_component.dart';
import '../../../components/custom_final_stage_listview_component.dart';

class AssetWidgetsView extends StatelessWidget {
  final List<ListViewItem> _itemList = [
    ListViewItem(
      title: 'AssetBundle',
      description:
          'Asset bundles contain resources, such as images and final Strings, that can be used by an application. Access to these resources is asynchronous so that they can be transparently loaded over a network (e.g., from a NetworkAssetBundle) or from the local file system without blocking the application\'s user interface.',
      route: RoutePaths.assetBundle,
    ),
    ListViewItem(
      title: 'Icon',
      description: 'A Material Design icon.',
      route: RoutePaths.icon,
    ),
    ListViewItem(
      title: 'Image',
      description: 'A widget that displays an image.',
      route: RoutePaths.image,
    ),
    ListViewItem(
      title: 'RawImage',
      description: 'A widget that displays a dart:ui.Image directly.',
      route: RoutePaths.rawImage,
    ),
  ];

  final String _appBarTitle = 'Asset widgets';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppBarComponent(appBarTitle: this._appBarTitle),
      body: CustomFinalStageListViewComponent(
        itemList: _itemList,
      ),
    );
  }

  /* final String _appBarTitle;

  AssetWidgetsView();

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text(this._appBarTitle),
          bottom: const TabBar(
            tabs: <Widget>[
              Tab(
                child: const Text('Demo'),
              ),
              Tab(
                child: const Text('Code'),
              ),
            ],
          ),
        ),
        
        body: TabBarView(children: <Widget> [
          Center(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget> [
                  Container(
                    child: Text(
                      'Assets',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                  ),
                  WidgetInfo(
                    title: 'AssetBundle',
                    description:
                        '-Asset bundles contain resources, such as images and final Strings, that can be used by an application. Access to these resources is asynchronous so that they can be transparently loaded over a network (e.g., from a NetworkAssetBundle) or from the local file system without blocking the application\'s user interface.',
                  ),
                  WidgetInfo(
                    title: 'Icon',
                    description: '-A Material Design icon.',
                  ),
                  Container(
                    child: Icon(
                      Icons.favorite,
                      color: Colors.pink,
                      size: 32.0,
                      semanticLabel: 'Text to announce in accessibility modes',
                    ),
                  ),
                  WidgetInfo(
                    title: 'Image',
                    description: '-A widget that displays an image.',
                  ),
                  Container(
                    child: const Image(
                      image: NetworkImage(
                          'https://flutter.github.io/assets-for-api-docs/assets/components/owl.jpg'),
                    ),
                  ),
                  WidgetInfo(
                    title: 'RawImage',
                    description:
                        '-A widget that displays a dart:ui.Image directly.',
                  ),
                ],
              ),
            ),
          ),
          Center(
            child: const Text('Demo code here'),
          )
        ]),
      ),
    );
  } */
}
