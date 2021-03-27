import 'package:flutter/material.dart';

class TextWidgets extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          child: Text(
            'Text widgets',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
        ),
        Container(
          color: Colors.black12,
          margin: EdgeInsets.only(
            top: 16,
          ),
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('DefaultTextStyle'),
              Container(
                margin: EdgeInsets.only(top: 8, right: 8, bottom: 8, left: 16),
                child: Text(
                    '-The text style to apply to descendant Text widgets without explicit style.'),
              ),
              Container(
                margin: EdgeInsets.only(top: 8, right: 8, bottom: 8, left: 16),
                child: DefaultTextStyle(
                  style: TextStyle(fontSize: 36, color: Colors.blue),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'The first text',
                      ),
                      const Text(
                        'The second text',
                        style: TextStyle(fontSize: 24),
                      ),
                      const Text(
                        'The third text',
                        style: TextStyle(color: Colors.red),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          color: Colors.black12,
          margin: EdgeInsets.only(
            top: 8,
          ),
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('RichText'),
              Container(
                margin: EdgeInsets.only(top: 8, right: 8, bottom: 8, left: 16),
                child: Text(
                    '-The RichText widget displays text that uses multiple different styles. The text to display is described using a tree of TextSpan objects, each of which has an associated style that is used for that subtree. The text might break across multiple lines or might all be displayed on the same line depending on the layout constraints.'),
              ),
              Container(
                  margin:
                      EdgeInsets.only(top: 8, right: 8, bottom: 8, left: 16),
                  child: RichText(
                    text: TextSpan(
                      text: 'Hello ',
                      style: DefaultTextStyle.of(context).style,
                      children: <TextSpan>[
                        TextSpan(
                            text: 'bold',
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        TextSpan(text: ' world!'),
                      ],
                    ),
                  )),
            ],
          ),
        ),
        Container(
          color: Colors.black12,
          margin: EdgeInsets.only(
            top: 8,
          ),
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Text'),
              Container(
                margin: EdgeInsets.only(top: 8, right: 8, bottom: 8, left: 16),
                child: Text('-A run of text with a single style.'),
              ),
              Container(
                margin: EdgeInsets.only(top: 8, right: 8, bottom: 8, left: 16),
                child: Text('This is written using text widget.'),
              ),
            ],
          ),
        )
      ],
    );
  }
}
