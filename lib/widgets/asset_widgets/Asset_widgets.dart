import 'package:flutter/material.dart';

class AssetWidgets extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          child: Text(
            'Assets',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
        ),
        Container(
          color: Colors.black12,
          margin: EdgeInsets.only(top: 16),
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('AssetBundle'),
              Container(
                margin: EdgeInsets.only(top: 8, right: 8, bottom: 8, left: 16),
                child: Text(
                    '-Asset bundles contain resources, such as images and strings, that can be used by an application. Access to these resources is asynchronous so that they can be transparently loaded over a network (e.g., from a NetworkAssetBundle) or from the local file system without blocking the application\'s user interface.'),
              ),
            ],
          ),
        ),
        Container(
          color: Colors.black12,
          margin: EdgeInsets.only(top: 16),
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Icon'),
              Container(
                margin: EdgeInsets.only(top: 8, right: 8, bottom: 8, left: 16),
                child: Text('-A Material Design icon.'),
              ),
              Container(
                margin: EdgeInsets.only(top: 8),
                child: Icon(
                  Icons.favorite,
                  color: Colors.pink,
                  size: 32.0,
                  semanticLabel: 'Text to announce in accessibility modes',
                ),
              ),
            ],
          ),
        ),
        Container(
          color: Colors.black12,
          margin: EdgeInsets.only(top: 16),
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Image'),
              Container(
                margin: EdgeInsets.only(top: 8, right: 8, bottom: 8, left: 16),
                child: Text('-A widget that displays an image.'),
              ),
              Container(
                margin: EdgeInsets.only(top: 8),
                child: const Image(
                  image: NetworkImage(
                      'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
                ),
              ),
            ],
          ),
        ),
        Container(
          color: Colors.black12,
          margin: EdgeInsets.only(top: 16),
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('RawImage'),
              Container(
                margin: EdgeInsets.only(top: 8, right: 8, bottom: 8, left: 16),
                child:
                    Text('-A widget that displays a dart:ui.Image directly.'),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
