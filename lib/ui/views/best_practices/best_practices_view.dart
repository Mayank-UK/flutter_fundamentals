import 'package:flutter/material.dart';

import '../../components/main_appbar_component.dart';
import '../../components/section_wrapper_component_component.dart';
import '../../components/content_group_wrapper_component.dart';
import '../../components/text_block_component.dart';

class BestPracticesView extends StatelessWidget {
  final String _appBarTitle = 'Best practices';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppBarComponent(appBarTitle: this._appBarTitle),
      body: SingleChildScrollView(
        child: Wrap(
          children: [
            SectionWrapperComponent(
              title: 'Technical',
              content: [
                ContentGroupWrapperComponent(
                  title: 'Controlling build() cost',
                  content: [
                    TextBlockComponent(
                      'Avoid repetitive and costly work in build() method.',
                    ),
                    TextBlockComponent(
                      'Avoid large single widgets with a large build() method, refactor and split into different small widgets to optimize performance.',
                    ),
                    TextBlockComponent(
                      'For widgets that don\'t change when the state changes, declare them as constants, this will prevent save build time.',
                    ),
                  ],
                ),
                ContentGroupWrapperComponent(
                  title: 'Apply effects only when needed (avoid saveLayer())',
                  content: [
                    TextBlockComponent(
                      'Use opacity only when necessary, prefer using other things like transparent images, etc.',
                    ),
                    TextBlockComponent(
                      'Clipping is not as expensive but still costly , prefer using borderRadius',
                    ),
                    TextBlockComponent(
                      'Avoid using effects with animations, instead use animation properties to achieve the same effect.',
                    ),
                  ],
                ),
                TextBlockComponent(
                  'Render grids and lists lazily.',
                ),
                TextBlockComponent(
                  'When using AnimatedBuilder, avoid putting a subtree in the builder function that builds widgets that don\'t depend on the animations, this subtree is rebuild for every tick, instead build it once and pass it as a child to the AnimatedBuilder.',
                ),
                TextBlockComponent(
                  'Avoid using constructors with a concrete list of children such as Column() or ListView().',
                ),
                TextBlockComponent(
                  'Specify types for class members, avoid using var when possible.',
                ),
                TextBlockComponent(
                  'Avoid using "new" and "this" keyword, it makes code look cluttered and verbose.',
                ),
                TextBlockComponent(
                  'Handle errors using custom error screens.',
                ),
                TextBlockComponent(
                  'Separate UI from logic.',
                ),
                TextBlockComponent(
                  'Single responsibility of a single widget.',
                ),
                TextBlockComponent(
                  'Use a design system.',
                ),
                TextBlockComponent(
                  'Use an architecture pattern for codebase like MVVM.',
                ),
              ],
            ),
            SectionWrapperComponent(
              title: 'Naming convention',
              content: [
                TextBlockComponent(
                  'Classes, enums, typedefs and extensions name should be in UpperCamelCase.',
                ),
                TextBlockComponent(
                  'Libraries, packages, directories and file names should be in snake_case.',
                ),
                TextBlockComponent(
                  'Variables, constants, parameters, and named parameters should be in lowerCamelCase.',
                ),
                TextBlockComponent(
                  'Write every tappable method name staring with "onTap...", or refresh method as "onRefresh...", etc.',
                ),
                TextBlockComponent(
                  'Write every class member name with an underscore "_" by default, which marks them as private.',
                ),
              ],
            ),
            SectionWrapperComponent(
              title: 'Refactoring',
              content: [
                TextBlockComponent(
                  'Refactor every page into a separate widget class. Put "SingleChildScrollView" as the root widget having "Column" as child widget and put page content inside "Column" widget.',
                ),
                TextBlockComponent(
                  'Refactor a page into different sections using methods/functions to use in build method.',
                ),
                TextBlockComponent(
                  'Separate the widgets in individual methods/functions including their wrappers which will be used to specify their margin/padding/position.',
                ),
                TextBlockComponent(
                  'Put the lifecycle methods at top, then non widget methods, then widget methods and at last build method.',
                ),
              ],
            ),
            SectionWrapperComponent(
              title: 'Tools',
              content: [
                ContentGroupWrapperComponent(
                  title: 'IDE (flutter and dart plugins)',
                  content: [
                    TextBlockComponent(
                      'Use auto formatter.',
                    ),
                    TextBlockComponent(
                      'Add or remove widget using right click context menu->refactor->add/remove widget.',
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
