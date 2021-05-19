import 'package:flutter/material.dart';

import '../../../components/code_preview_component.dart';
import '../../../components/section_wrapper_component_component.dart';
import '../../../components/text_block_component.dart';
import './../../../components/content_group_wrapper_component.dart';

class ImperativeRoutingView extends StatelessWidget {
  final String _appBarTitle = 'Imperative routing';
  final String _codeTabMarkdownLocation =
      'assets/markdowns/navigation_routing/imperative_approach_markdown.md';

  @override
  Widget build(BuildContext context) {
    return CodePreviewTabsComponent(
      appBarTitle: this._appBarTitle,
      previewTab: _ImperativeRoutingImplementation(),
      codeTabMarkdownLocation: this._codeTabMarkdownLocation,
    );
  }
}

class _ImperativeRoutingImplementation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: <Widget>[
        SectionWrapperComponent(
          title: 'Navigator ',
          content: [
            TextBlockComponent(
              'A widget that manages a set of child widgets with a stack discipline.',
            ),
          ],
        ),
        SectionWrapperComponent(
          title: 'Using the Navigator API',
          content: [
            TextBlockComponent(
              'Mobile apps typically reveal their contents via full-screen elements called "screens" or "pages". In Flutter these elements are called routes and they\'re managed by a Navigator widget.',
            ),
            TextBlockComponent(
              'The navigator manages a stack of Route objects and provides two ways for managing the stack, the declarative API Navigator.pages or imperative API Navigator.push and Navigator.pop.',
            ),
          ],
        ),
        SectionWrapperComponent(
          title: 'Displaying a full-screen route',
          content: [
            TextBlockComponent(
              'Although you can create a navigator directly, it\'s most common to use the navigator created by the Router which itself is created and configured by a WidgetsApp or a MaterialApp widget. You can refer to that navigator with Navigator.of.',
            ),
            TextBlockComponent(
              'A MaterialApp is the simplest way to set things up. The MaterialApp\'s home becomes the route at the bottom of the Navigator\'s stack. It is what you see when the app is launched.',
            ),
            TextBlockComponent(
              'To push a new route on the stack you can create an instance of MaterialPageRoute with a builder function that creates whatever you want to appear on the screen.',
            ),
            TextBlockComponent(
              'The route defines its widget with a builder function instead of a child widget because it will be built and rebuilt in different contexts depending on when it\'s pushed and popped.',
            ),
            TextBlockComponent(
              'Scaffold automatically adds a "back" button to its AppBar. Pressing the back button causes Navigator.pop to be called. On Android, pressing the system back button does the same thing.',
            ),
            TextBlockComponent(
              'Routes can return a value.',
            ),
          ],
        ),
        SectionWrapperComponent(
          title: 'Using named routes',
          content: [
            TextBlockComponent(
              'Mobile apps often manage a large number of routes and it\'s often easiest to refer to them by name. Route names, by convention, use a path-like structure (for example, "/a/b/c"). The app\'s home page route is named "/" by default.',
            ),
            TextBlockComponent(
              'The MaterialApp uses onGenerateRoute callback to generate all routes.',
            ),
            ContentGroupWrapperComponent(
              title: 'Passing arguments between views',
              content: [
                TextBlockComponent(
                  '1) Create a class whose object will be passed.',
                ),
                TextBlockComponent(
                  '2) Pass the object to the named parameter "arguments" of "Navigator".',
                ),
                TextBlockComponent(
                  '3) Access the passed arguments by casting the "settings.arguments" to the class definition inside "generateRoute".',
                ),
                TextBlockComponent(
                  '4) Pass the arguments to the view using it\'s named parameters.',
                ),
              ],
            )
          ],
        ),
        /* SectionWrapperComponent(
          title: 'Popup routes',
          content: [
            TextBlockComponent(
              'Routes don\'t have to obscure the entire screen. PopupRoutes cover the screen with a ModalRoute.barrierColor that can be only partially opaque to allow the current screen to show through. Popup routes are "modal" because they block input to the widgets below.',
            ),
            TextBlockComponent(
              'There are also widgets which create popup routes, like PopupMenuButton and DropdownButton. These widgets create internal subclasses of PopupRoute and use the Navigator\'s push and pop methods to show and dismiss them.',
            ),
          ],
        ),
        SectionWrapperComponent(
          title: 'Custom routes',
          content: [
            TextBlockComponent(
              'You can create your own subclass of one of the widget library route classes like PopupRoute, ModalRoute, or PageRoute, to control the animated transition employed to show the route, the color and behavior of the route\'s modal barrier, and other aspects of the route.',
            ),
          ],
        ), */
      ],
    );
  }
}
