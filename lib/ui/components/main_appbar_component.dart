import 'package:flutter/material.dart';

class MainAppBarComponent extends StatelessWidget with PreferredSizeWidget {
  String appBarTitle;

  MainAppBarComponent({@required this.appBarTitle});

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(this.appBarTitle),
    );
  }
}
