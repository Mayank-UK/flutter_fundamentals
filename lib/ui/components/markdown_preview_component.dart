import 'package:flutter/material.dart';

import 'package:flutter/services.dart' show rootBundle;
import 'package:flutter_markdown/flutter_markdown.dart';

class MarkdownPreviewComponent extends StatelessWidget {
  String markdownLocation;
  // 'assets/markdowns/flutter_fundamentals/important_concepts/directory_structure_markdown.md';

  MarkdownPreviewComponent({@required this.markdownLocation});

  Future<String> getFileData(String path) async {
    return await rootBundle.loadString(path);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      width: double.infinity,
      child: FutureBuilder(
        future: getFileData(this.markdownLocation),
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return Text('Loading Markdown Info...');
          }
          return Markdown(data: snapshot.data);
        },
      ),
    );
  }
}
