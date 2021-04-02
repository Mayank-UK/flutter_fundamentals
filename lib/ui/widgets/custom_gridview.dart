import 'package:flutter/material.dart';

class GridViewItem {
  String title;
  String route;

  GridViewItem({@required String this.title, @required String this.route});
}

class TappableGridView extends StatelessWidget {
  List<GridViewItem> gridList;
  bool hasPushReplacement;

  TappableGridView(
      {@required this.gridList, @required this.hasPushReplacement});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      // without this property, GridView is not visible
      shrinkWrap: true,
      primary: false,
      padding: const EdgeInsets.all(20),
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      crossAxisCount: 2,
      children: gridList.map((item) {
        return InkWell(
          onTap: () {
            if (hasPushReplacement) {
              Navigator.of(context).pushReplacementNamed(
                item.route,
                arguments: {"appBarTitle": '${item.title}'},
              );

              return;
            }

            Navigator.of(context).pushNamed(
              item.route,
              arguments: {'appBarTitle': '${item.title}'},
            );
          },
          child: Ink(
            color: Colors.teal[300],
            height: 200,
            padding: EdgeInsets.all(8),
            width: 200,
            child: Text(item.title),
          ),
        );
      }).toList(),
    );
  }
}
