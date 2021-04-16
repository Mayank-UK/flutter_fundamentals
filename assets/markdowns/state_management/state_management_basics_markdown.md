## stateful widget example

    class ExampleStatefulWidget extends StatefulWidget {
        @override
        _ExampleStatefulWidgetState createState() => _ExampleStatefulWidgetState();
    }

    class _ExampleStatefulWidgetState extends State<ExampleStatefulWidget> {
        int data = 0;

        void onTap(BuildContext context) {
            setState(() {
                this.data += 1;
            });

            final Widget snackBar = SnackBar(
            content: Text(
                    'data: ${this.data}',
                ),
            );
            ScaffoldMessenger.of(context).showSnackBar(snackBar);
        }

        @override
        Widget build(BuildContext context) {
            return Container(
                child: ElevatedButton(
                    onPressed: () => onTap(context),
                    child: Text('button'),
                ),
            );
        }
    }
