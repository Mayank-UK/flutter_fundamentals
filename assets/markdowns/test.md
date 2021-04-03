class ExcludeSemanticsWidget extends StatelessWidget {

    String appBarTitle; 
    ExcludeSemanticsWidget({@required this.appBarTitle});
  
    Future<String> getFileData(String path) async {
      return await rootBundle.loadString(path);
    }

    @override
    Widget build(BuildContext context) {
      return CodePreviewTabs(
        appBarTitle: this.appBarTitle,
        previewTab: Text('preview'),
        codeTab: FutureBuilder(
          future: getFileData('assets/markdowns/test.md'),
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