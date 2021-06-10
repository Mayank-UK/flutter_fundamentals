import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../components/code_preview_component.dart';

import './../../../components/section_wrapper_component_component.dart';
import './../../../components/text_block_component.dart';

class ShareView extends StatelessWidget {
  final String _appBarTitle = 'Share';
  final String _codeTabMarkdownLocation =
      'assets/markdowns/native_device_features/share_markdown.md';

  @override
  Widget build(BuildContext context) {
    return CodePreviewTabsComponent(
      appBarTitle: this._appBarTitle,
      previewTab: _ShareImplementation(),
      codeTabMarkdownLocation: this._codeTabMarkdownLocation,
    );
  }
}

class _ShareImplementation extends StatelessWidget {
  void _onTapShare() {
    Share.share('test string');
  }

  void _onTapWhatsapp() async {
    String whatsappUrl = 'https://api.whatsapp.com/send?text=\'test string\'';

    await launch(whatsappUrl);
  }

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: <Widget>[
        SectionWrapperComponent(
          title: 'Using \'share_plus\' package',
          content: [
            TextBlockComponent(
              'Just import the package and use \'Share.share(\'String\')\' method.',
            ),
            TextBlockComponent(
              'In native app mode it will open the share menu, while in web mode it will open the gmail.',
            ),
            Container(
              child: ElevatedButton(
                onPressed: _onTapShare,
                child: Text('Share'),
              ),
            ),
          ],
        ),
        SectionWrapperComponent(
          title:
              'Using \'url_launcher\' package to share to particular app or url',
          content: [
            TextBlockComponent(
              'Just import the package and use \'launch(\'String\')\' function.',
            ),
            TextBlockComponent(
              'If the app exists in phone to open the url, it will launch the app or else it will launch default browser to open the url.',
            ),
            TextBlockComponent(
              ' On web it will open the url on browser tab.',
            ),
            Container(
              child: ElevatedButton(
                onPressed: _onTapWhatsapp,
                child: Text('Share to whatsapp'),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
