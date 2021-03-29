import 'package:flutter/material.dart';

import '../../widgets/main_drawer.dart';
import '../../widgets/widget_info.dart';

class AssetWidgetsView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Asset widgets'),
          leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(
              Icons.arrow_back_ios,
            ),
          ),
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
        drawer: MainDrawer(),
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
                          'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
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
  }
}
