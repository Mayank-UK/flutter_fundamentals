import 'package:flutter/material.dart';

import '../../../components/code_preview_component.dart';
import '../../../components/section_wrapper_component_component.dart';

class FormView extends StatelessWidget {
  final String _appBarTitle = 'Form';
  final String _codeTabMarkdownLocation = 'assets/markdowns/test.md';

  @override
  Widget build(BuildContext context) {
    return CodePreviewTabsComponent(
      appBarTitle: this._appBarTitle,
      previewTab: _FormImplementation(),
      codeTabMarkdownLocation: this._codeTabMarkdownLocation,
    );
  }
}

class _FormImplementation extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();

  void onSubmit(BuildContext context) {
    if (_formKey.currentState.validate()) {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: const Text('Processing Data')));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: <Widget>[
        SectionWrapperComponent(
          title: '"Form" widget',
          content: [
            Container(
              child: Text(
                  '"Form" widget serves as a container for all the inputs and other form related elements.'),
            ),
            Container(
              child: Text(
                  'It is recommended to create a global key for form widget to access it easily using this global key.'),
            ),
          ],
        ),
        SectionWrapperComponent(
          title: '"TextFormField" widget for input and validation',
          content: [
            Container(
              child: Text(
                  '"TextFoldField" widget is used for taking input from the user.'),
            ),
            Container(
              child: Text(
                  '"TextFoldField" widget has a named parameter "validator", which takes a function as a value and return true for success and false for failure.'),
            ),
            Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  TextFormField(
                    // The validator receives the text that the user has entered.
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter some text';
                      }
                      return null;
                    },
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16.0),
                    child: ElevatedButton(
                      onPressed: () => onSubmit(context),
                      child: const Text('Submit'),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
