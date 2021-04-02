import 'package:flutter/material.dart';

class DimesnionsContraintsView extends StatelessWidget {
  String appBarTitle;

  DimesnionsContraintsView({@required this.appBarTitle});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(this.appBarTitle),
        ),
        body: Text('Dimensions and constraints view'));
  }
}

// implement tabs here
