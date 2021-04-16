import 'package:flutter/material.dart';

import '../../../components/main_appbar_component.dart';
import '../../../components/section_wrapper_component_component.dart';
import '../../../components/text_block_component.dart';

class ImportantConceptsView extends StatelessWidget {
  final String _appBarTitle = 'Important concepts';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppBarComponent(appBarTitle: this._appBarTitle),
      body: SingleChildScrollView(
        child: Wrap(
          children: [
            SectionWrapperComponent(
              title: 'Important concepts',
              content: [
                TextBlockComponent(
                  'Everything in dart is an object, even numbers, functions, and null are objects, all objects inherit from the "Object" class.',
                ),
                TextBlockComponent(
                  'Although Dart is strongly typed, type annotations are optional because Dart can infer types.',
                ),
                TextBlockComponent(
                  'If you enable null safety, variables can’t contain null unless you say they can. You can make a variable nullable by putting a question mark (?) at the end of its type',
                ),
                TextBlockComponent(
                  'When you want to explicitly say that any type is allowed, use the type "Object".',
                ),
                TextBlockComponent(
                  'Dart supports generic types, like List<int> (a list of integers) or List<Object> (a list of objects of any type).',
                ),
                TextBlockComponent(
                  'Dart supports top-level functions (such as main()), as well as functions tied to a class or object (static and instance methods, respectively).',
                ),
                TextBlockComponent(
                  'Unlike Java, Dart doesn’t have the keywords public, protected, and private. If an identifier starts with an underscore (_), it’s private to its library.',
                ),
                TextBlockComponent(
                  'Dart tools can report two kinds of problems: warnings and errors. Warnings are just indications that your code might not work, but they don’t prevent your program from executing. Errors can be either compile-time or run-time. A compile-time error prevents the code from executing at all; a run-time error results in an exception being raised while the code executes.',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
