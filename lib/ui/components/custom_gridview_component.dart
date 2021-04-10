import 'package:flutter/material.dart';

class GridViewItem {
  final String title;
  final String route;

  GridViewItem({@required this.title, @required this.route});
}

class CustomGridViewComponent extends StatelessWidget {
  final List<GridViewItem> gridList;

  CustomGridViewComponent({@required this.gridList});

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
            Navigator.of(context).pushNamed(
              item.route,
            );
          },
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
              height: 200,
              padding: EdgeInsets.all(8),
              width: 200,
              child: Text(
                item.title,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ),
          ),
        );
      }).toList(),
    );
  }
}
