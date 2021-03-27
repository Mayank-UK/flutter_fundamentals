import 'package:flutter/material.dart';

class StylingWidgets extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          child: Text(
            'Styling widgets',
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
              Text('MediaQuery'),
              Container(
                margin: EdgeInsets.only(top: 8, right: 8, bottom: 8, left: 16),
                child: Text(
                    '-Establishes a subtree in which media queries resolve to the given data.'),
              ),
              Container(
                  margin:
                      EdgeInsets.only(top: 8, right: 8, bottom: 8, left: 16),
                  child: MyMediaQueryWidget()),
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
              Text('Padding'),
              Container(
                margin: EdgeInsets.only(top: 8, right: 8, bottom: 8, left: 16),
                child: Text(
                    '-A widget that insets its child by the given padding.'),
              ),
              Container(
                margin: EdgeInsets.only(top: 8, right: 8, bottom: 8, left: 16),
                child: Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text('This is text has padding.'),
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
              Text('Theme'),
              Container(
                margin: EdgeInsets.only(top: 8, right: 8, bottom: 8, left: 16),
                child: Text(
                    '-Applies a theme to descendant widgets. A theme describes the colors and typographic choices of an application.'),
              ),
              Container(
                  margin:
                      EdgeInsets.only(top: 8, right: 8, bottom: 8, left: 16),
                  child: Theme(
                    // Create a unique theme with "ThemeData"
                    data: ThemeData(
                      accentColor: Colors.yellow,
                    ),
                    child: FloatingActionButton(
                      onPressed: () {},
                      child: Icon(Icons.add),
                    ),
                  )),
            ],
          ),
        )
      ],
    );
  }
}

class MyMediaQueryWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    MediaQueryData deviceInfo = MediaQuery.of(context);

    print('size: ${deviceInfo.size}');
    print('padding: ${deviceInfo.padding}');

    return Container(
      child: Text('size: ${deviceInfo.size}\npadding: ${deviceInfo.padding}'),
    );
  }
}
