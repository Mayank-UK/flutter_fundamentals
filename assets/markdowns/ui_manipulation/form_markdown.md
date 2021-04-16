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
            return Form(
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
            );
        }
    }