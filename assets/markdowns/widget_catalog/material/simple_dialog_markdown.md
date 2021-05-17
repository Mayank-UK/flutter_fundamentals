    class _SimpleDialogWidgetImplementation extends StatelessWidget {
        void _showSimpleDialog(BuildContext ctx) {
            showDialog(
                context: ctx,
                builder: (_) {
                    return SimpleDialog(
                        title: Text('The Title'),
                        children: [
                            SimpleDialogOption(
                                child: Text('Option 1'),
                                onPressed: () {
                                    // Do something
                                    print('You have selected the option 1');
                                    Navigator.of(ctx).pop();
                                },
                            ),
                            SimpleDialogOption(
                                child: Text('Option 2'),
                                onPressed: () {
                                    // Do something
                                    print('You have selected the option 2');
                                    Navigator.of(ctx).pop();
                                },
                            )
                        ],
                    );
                },
            );
        }

        @override
        Widget build(BuildContext context) {
            return ElevatedButton(
                onPressed: () => this._showSimpleDialog(context),
                child: Text(
                'show simple dialog',
                ),
            );
        }
    }
