import 'package:flutter/material.dart';

class WidgetInfoComponent extends StatelessWidget {
  final String title;
  final String description;

  WidgetInfoComponent({@required this.title, @required this.description});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black12,
      margin: EdgeInsets.only(
        top: 8,
      ),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(this.title),
          Container(
            margin: EdgeInsets.only(top: 8, right: 8, bottom: 8, left: 16),
            child: Text(this.description),
          ),
        ],
      ),
    );
  }
}
