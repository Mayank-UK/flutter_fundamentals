import 'package:flutter/material.dart';

class AppBarWithBackButton extends StatelessWidget
    implements PreferredSizeWidget {
  String appBarTitle;

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  AppBarWithBackButton({@required this.appBarTitle});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(this.appBarTitle),
      leading: InkWell(
        onTap: () {
          Navigator.pop(context);
        },
        child: Icon(Icons.arrow_back_sharp),
      ),
    );
  }
}
