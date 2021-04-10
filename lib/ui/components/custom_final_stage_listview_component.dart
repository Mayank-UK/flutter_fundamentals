import 'package:flutter/material.dart';

class ListViewItem {
  final String title;
  final String description;
  final String route;

  ListViewItem(
      {@required this.title, @required this.description, @required this.route});
}

class CustomFinalStageListViewComponent extends StatelessWidget {
  final List<ListViewItem> itemList;

  CustomFinalStageListViewComponent({@required this.itemList});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: itemList.length,
      itemBuilder: (BuildContext ctxt, int index) {
        // return new Text(itemList[index].title);
        return InkWell(
          onTap: () {
            Navigator.of(context).pushNamed(
              itemList[index].route,
              arguments: {'appBarTitle': '${itemList[index].title}'},
            );
          },
          child: Container(
            margin: EdgeInsets.all(8),
            child: Ink(
              decoration: BoxDecoration(
                color: Colors.pink,
                borderRadius: BorderRadius.circular(8),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 4,
                    offset: Offset(2, 2),
                  ),
                ],
              ),
              child: Container(
                padding: EdgeInsets.all(8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  // direction: Axis.vertical,
                  // spacing: 8,
                  children: <Widget>[
                    Text(
                      itemList[index].title,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                    Text(
                      itemList[index].description,
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
