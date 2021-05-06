import 'package:flutter/material.dart';

import '../../../../components/code_preview_component.dart';
import './../../../../components/section_wrapper_component_component.dart';
import './../../../../components/text_block_component.dart';

class FormFieldWidgetView extends StatelessWidget {
  final String _appBarTitle = 'FormField';
  final String _codeTabMarkdownLocation = 'assets/markdowns/test.md';

  @override
  Widget build(BuildContext context) {
    return CodePreviewTabsComponent(
      appBarTitle: this._appBarTitle,
      previewTab: _FormFieldWidgetImplementation(),
      codeTabMarkdownLocation: this._codeTabMarkdownLocation,
    );
  }
}

class _FormFieldWidgetImplementation extends StatefulWidget {
  @override
  __FormFieldWidgetImplementationState createState() =>
      __FormFieldWidgetImplementationState();
}

class __FormFieldWidgetImplementationState
    extends State<_FormFieldWidgetImplementation> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: <Widget>[
        SectionWrapperComponent(
          title: 'Simple use',
          content: [
            TextBlockComponent(
              '"Form" widget serves as the container widget for various "FormField" widgets.',
            ),
            Container(
              child: Form(
                key: _formKey,
                child: Column(
                  children: <Widget>[
                    TextFormField(),
                    TextFormField(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
