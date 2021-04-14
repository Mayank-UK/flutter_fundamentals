import 'package:flutter/material.dart';
import 'package:flutter_developers_guide/ui/design_system/design_system.dart';

class MainAppBarComponent extends StatelessWidget with PreferredSizeWidget {
  final String appBarTitle;

  MainAppBarComponent({@required this.appBarTitle});

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        this.appBarTitle,
        style: DSTypography.h5Light,
      ),
    );
  }
}
