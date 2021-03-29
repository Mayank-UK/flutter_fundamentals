import 'package:flutter/material.dart';

class WidgetInfo extends StatelessWidget {
  String title;
  String description;

  WidgetInfo({@required String this.title, @required String this.description});

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
        children: [
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
