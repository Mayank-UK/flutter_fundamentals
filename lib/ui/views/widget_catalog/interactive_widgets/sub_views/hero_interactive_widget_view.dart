import 'package:flutter/material.dart';

import '../../../../components/code_preview_component.dart';
import './../../../../components/section_wrapper_component_component.dart';
import './../../../../components/text_block_component.dart';

class HeroInteractiveWidgetView extends StatelessWidget {
  final String _appBarTitle = 'HeroInteractive';
  final String _codeTabMarkdownLocation = 'assets/markdowns/test.md';

  @override
  Widget build(BuildContext context) {
    return CodePreviewTabsComponent(
      appBarTitle: this._appBarTitle,
      previewTab: _HeroInteractiveWidgetImplementation(),
      codeTabMarkdownLocation: this._codeTabMarkdownLocation,
    );
  }
}

class _HeroInteractiveWidgetImplementation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: <Widget>[
        SectionWrapperComponent(
          title: 'Simple use',
          content: [
            TextBlockComponent(
              '"HeroInteractive" widget animates an item from one screen to another screen, if both screen\'s have a "Hero" widget.',
            ),
            Container(
              child: _MainScreen(),
            ),
          ],
        ),
      ],
    );
  }
}

class _MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Hero(
        tag: 'imageHero',
        child: ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Image.network(
            'https://picsum.photos/250?image=9',
            height: 100,
            width: 100,
          ),
        ),
      ),
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (_) {
          return _SecondaryScreen();
        }));
      },
    );
  }
}

class _SecondaryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Center(
        child: Hero(
          tag: 'imageHero',
          child: Image.network(
            'https://picsum.photos/250?image=9',
          ),
        ),
      ),
      onTap: () {
        Navigator.pop(context);
      },
    );
  }
}
