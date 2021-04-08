import 'package:flutter/material.dart';

import '../../../../core/router/router.dart';

import '../../../components/main_appbar_component.dart';
import '../../../components/custom_listview_component.dart';
import '../../../components/code_preview_component.dart';

class AssetWidgetsView extends StatelessWidget {
  List<ListViewItem> _itemList = [
    ListViewItem(
      title: 'AssetBundle',
      description:
          'Asset bundles contain resources, such as images and strings, that can be used by an application. Access to these resources is asynchronous so that they can be transparently loaded over a network (e.g., from a NetworkAssetBundle) or from the local file system without blocking the application\'s user interface.',
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

  String appBarTitle;

  AssetWidgetsView();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppBarComponent(appBarTitle: this.appBarTitle),
      body: CustomListViewComponent(
        itemList: _itemList,
      ),
    );
  }

  /* String appBarTitle;

  AssetWidgetsView();

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text(this.appBarTitle),
          bottom: const TabBar(
            tabs: <Widget>[
              Tab(
                child: Text('Demo'),
              ),
              Tab(
                child: Text('Code'),
              ),
            ],
          ),
        ),
        
        body: TabBarView(children: [
          Center(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
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
                        '-Asset bundles contain resources, such as images and strings, that can be used by an application. Access to these resources is asynchronous so that they can be transparently loaded over a network (e.g., from a NetworkAssetBundle) or from the local file system without blocking the application\'s user interface.',
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
            child: Text('Demo code here'),
          )
        ]),
      ),
    );
  } */
}
