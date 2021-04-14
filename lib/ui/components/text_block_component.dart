import 'package:flutter/material.dart';

import 'package:flutter_developers_guide/ui/design_system/design_system.dart';

class TextBlockComponent extends StatelessWidget {
  final String text;
  TextStyle style;

  TextBlockComponent(this.text, {this.style = DSTypography.body2Dark});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Text(
        this.text,
        style: this.style,
      ),
    );
  }
}
