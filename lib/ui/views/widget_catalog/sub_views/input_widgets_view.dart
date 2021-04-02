import 'package:flutter/material.dart';

import '../../../widgets/main_drawer.dart';
import '../../../widgets/widget_info.dart';

import './../../../../core/router/router.dart';
import './../../../widgets/custom_listview.dart';

class InputWidgetsView extends StatelessWidget {
  List<ListViewItem> _itemList = [
    ListViewItem(
      title: 'Autocomplete',
      description:
          'A widget for helping the user make a selection by entering some text and choosing from among a list of options.',
      route: RoutePaths.spacing,
    ),
    ListViewItem(
      title: 'Form',
      description:
          'An optional container for grouping together multiple form field widgets (e.g. TextField widgets).',
      route: RoutePaths.spacing,
    ),
    ListViewItem(
      title: 'FormField',
      description:
          'A single form field. This widget maintains the current state of the form field, so that updates and validation errors are visually reflected in the UI.',
      route: RoutePaths.spacing,
    ),
    ListViewItem(
      title: 'RawKeyboardListener',
      description:
          'A widget that calls a callback whenever the user presses or releases a key on a keyboard.',
      route: RoutePaths.spacing,
    ),
  ];

  String appBarTitle;

  InputWidgetsView({@required this.appBarTitle});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(this.appBarTitle),
      ),
      // drawer: MainDrawer(),
      body: TappableListView(
        itemList: _itemList,
      ),
    );
  }

  /* String appBarTitle;

  InputWidgetsView({@required this.appBarTitle});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text(this.appBarTitle),
          bottom: const TabBar(
            tabs: <Widget>[
              Tab(
                child: Text('Demo'),
              ),
              Tab(
                child: Text('Code'),
              ),
            ],
          ),
        ),
        // drawer: MainDrawer(),
        body: TabBarView(children: [
          Center(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Text(
                      'Input widgets',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                  ),
                  WidgetInfo(
                    title: 'Autocomplete, Form, FormField, RawKeyboardListener',
                    description:
                        'This section includes one example which uses all the widgets including:\n-Autocomplete\n -Form\n -FormField\n -RawKeyboardListener',
                  ),
                  Container(
                    color: Colors.black12,
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          child: MyCustomForm(),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Center(
            child: Text('Demo code here'),
          )
        ]),
      ),
    );
  } */
}

// Define a custom Form widget.
class MyCustomForm extends StatefulWidget {
  @override
  MyCustomFormState createState() {
    return MyCustomFormState();
  }
}

// Define a corresponding State class.
// This class holds data related to the form.
class MyCustomFormState extends State<MyCustomForm> {
  // Create a global key that uniquely identifies the Form widget
  // and allows validation of the form.
  //
  // Note: This is a `GlobalKey<FormState>`,
  // not a GlobalKey<MyCustomFormState>.
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    // Build a Form widget using the _formKey created above.
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          // Add TextFormFields and ElevatedButton here.
          TextFormField(
            // The validator receives the text that the user has entered.
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter some text';
              }
              return null;
            },
          ),
          ElevatedButton(
            onPressed: () {
              // Validate returns true if the form is valid, or false otherwise.
              if (_formKey.currentState.validate()) {
                // If the form is valid, display a snackbar. In the real world,
                // you'd often call a server or save the information in a database.
                ScaffoldMessenger.of(context)
                    .showSnackBar(SnackBar(content: Text('Processing Data')));
              }
            },
            child: Text('Submit'),
          ),
        ],
      ),
    );
  }
}
