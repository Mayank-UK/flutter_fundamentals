import 'package:flutter/material.dart';

import 'package:flutter/services.dart' show rootBundle;
import 'package:flutter_markdown/flutter_markdown.dart';

class CodePreviewTabs extends StatelessWidget {
  String appBarTitle;
  Widget previewTab;
  String codeTabMarkdownLocation;

  CodePreviewTabs(
      {@required this.appBarTitle,
      @required this.previewTab,
      @required this.codeTabMarkdownLocation});

  Future<String> getFileData(String path) async {
    return await rootBundle.loadString(path);
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text(this.appBarTitle),
          bottom: TabBar(
            tabs: <Widget>[
              Tab(
                child: Text('Preview'),
              ),
              Tab(
                child: Text('Code'),
              ),
            ],
          ),
        ),
        // drawer: MainDrawer(),
        body: TabBarView(
          children: [
            this.previewTab,
            FutureBuilder(
              future: getFileData(this.codeTabMarkdownLocation),
              builder: (context, snapshot) {
                if (!snapshot.hasData) {
                  return Text('Loading Markdown Info...');
                }
                return Markdown(data: snapshot.data);
              },
            ),
          ],
        ),
      ),
    );
  }
}
