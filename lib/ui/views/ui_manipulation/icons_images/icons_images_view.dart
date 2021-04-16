import 'package:flutter/material.dart';

import '../../../components/code_preview_component.dart';
import '../../../components/section_wrapper_component_component.dart';

class IconsImagesView extends StatelessWidget {
  final String _appBarTitle = 'Icons and images';
  final String _codeTabMarkdownLocation =
      'assets/markdowns/ui_manipulation/icons_images_markdown.md';

  @override
  Widget build(BuildContext context) {
    return CodePreviewTabsComponent(
      appBarTitle: this._appBarTitle,
      previewTab: _IconsImagesImplementation(),
      codeTabMarkdownLocation: this._codeTabMarkdownLocation,
    );
  }
}

class _IconsImagesImplementation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: <Widget>[
        SectionWrapperComponent(
          title: 'Using "Icon" widget',
          content: [
            Container(
              width: double.infinity,
              child: Text(
                  '"Icon" widget takes first positional parameter as a value for icon. Use "Icons" enum using some predefined icons.'),
            ),
            Icon(
              Icons.favorite,
              size: 32,
            ),
          ],
        ),
        SectionWrapperComponent(
          title: 'Using "Image" widget',
          content: [
            Container(
              width: double.infinity,
              child: Text(
                  '"Image" widget has a named parameter "image", which takes value either using an object of "NetworkImage" class or "AssetImage" class.'),
            ),
            Container(
              width: double.infinity,
              child:
                  const Text('Using "NetworkImage" class for network images'),
            ),
            Image(
              height: 100,
              width: 100,
              image: NetworkImage(
                  'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
            ),
            Container(
              child: Text(
                  'Using "AssetImage" class for local images (first include the images in pubspec.yaml)'),
            ),
            Image(
              height: 100,
              width: 100,
              image: AssetImage('assets/images/demo.jpeg'),
            ),
          ],
        ),
      ],
    );
  }
}
