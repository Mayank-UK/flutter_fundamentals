import 'package:flutter/material.dart';

import '../../../components/main_appbar_component.dart';
import '../../../components/section_wrapper_component_component.dart';
import '../../../components/text_block_component.dart';

class ClassesView extends StatelessWidget {
  final String _appBarTitle = 'Classes';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppBarComponent(appBarTitle: this._appBarTitle),
      body: SingleChildScrollView(
        child: Wrap(
          children: [
            SectionWrapperComponent(
              title: 'Classes',
              content: [
                TextBlockComponent(
                  'Dart is an object-oriented language with classes and mixin-based inheritance. Every object is an instance of a class, and all classes except Null descend from Object. Mixin-based inheritance means that although every class (except for the top class,Object?) has exactly one superclass, a class body can be reused in multiple class hierarchies. Extension methods are a way to add functionality to a class without changing the class or creating a subclass.',
                ),
                TextBlockComponent(
                    'Objects have members consisting of functions and data (methods and instance variables, respectively). When you call a method, you invoke it on an object: the method has access to that object’s functions and data. Use a dot (.) to refer to an instance variable or method:'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
