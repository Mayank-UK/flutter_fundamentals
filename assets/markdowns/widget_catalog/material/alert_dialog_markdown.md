    class _AlertDialogWidgetImplementation extends StatelessWidget {
        Future<void> _showDialog(BuildContext context) async {
            return showDialog<void>(
                context: context,
                barrierDismissible: false, // user must tap button!
                builder: (BuildContext context) {
                    return AlertDialog(
                        title: Text('AlertDialog Title'),
                        content: Text('This is a demo alert dialog.'),
                        actions: <Widget>[
                            TextButton(
                                child: Text('Approve'),
                                onPressed: () {
                                    Navigator.of(context).pop();
                                },
                            ),
                        ],
                    );
                },
            );
        }

        @override
        Widget build(BuildContext context) {
            return ElevatedButton(
                onPressed: () => this._showDialog(context),
                child: Text(
                    'Show alert dialog',
                ),
            );          
        }
    }
