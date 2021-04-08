import 'package:flutter/material.dart';

class SectionWrapperComponent extends StatelessWidget {
  String title;
  List<Widget> content;

  SectionWrapperComponent({
    @required this.title,
    @required this.content,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black12,
      margin: EdgeInsets.only(bottom: 16),
      padding: EdgeInsets.all(16),
      width: double.infinity,
      child: Wrap(
        // direction: Axis.vertical,
        runSpacing: 16,
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 16),
            child: Text(
              this.title,
              style: TextStyle(fontSize: 24),
            ),
          ),
          ...this.content,
        ],
      ),
    );
  }
}
