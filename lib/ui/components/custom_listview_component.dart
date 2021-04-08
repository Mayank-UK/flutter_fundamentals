import 'package:flutter/material.dart';

class ListViewItem {
  String title;
  String description;
  String route;

  ListViewItem(
      {@required this.title, @required this.description, @required this.route});
}

class CustomListViewComponent extends StatelessWidget {
  List<ListViewItem> itemList;

  CustomListViewComponent({@required this.itemList});

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
                color: Colors.teal[300],
                padding: EdgeInsets.only(
                  top: 0,
                  right: 8,
                  bottom: 8,
                  left: 8,
                ),
                width: 200,
                child: Container(
                  child: Column(
                    // crossAxisAlignment: Alignment.bottomCenter,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(itemList[index].title),
                      Text(itemList[index].description),
                    ],
                  ),
                ),
              ),
            ));
      },
    );
  }
}
