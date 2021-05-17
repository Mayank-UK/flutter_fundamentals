    class _FutureBuilderWidgetImplementation extends StatefulWidget {
        @override
        __FutureBuilderWidgetImplementationState createState() => __FutureBuilderWidgetImplementationState();
    }

    class __FutureBuilderWidgetImplementationState extends State<_FutureBuilderWidgetImplementation> {
        final Future<String> _calculation = Future<String>.delayed(
            const Duration(seconds: 3),
            () => 'Data Loaded',
        );

        @override
        Widget build(BuildContext context) {
            return FutureBuilder<String>(
                future: _calculation,
                builder:
                    (BuildContext context, AsyncSnapshot<String> snapshot) {
                List<Widget> children;
                if (snapshot.hasData) {
                    children = <Widget>[
                    const Icon(
                        Icons.check_circle_outline,
                        color: Colors.green,
                        size: 60,
                    ),
                    Container(
                        padding: const EdgeInsets.only(top: 16),
                        child: Text('Result: ${snapshot.data}'),
                    )
                    ];
                } else if (snapshot.hasError) {
                    children = <Widget>[
                    const Icon(
                        Icons.error_outline,
                        color: Colors.red,
                        size: 60,
                    ),
                    Container(
                        padding: const EdgeInsets.only(top: 16),
                        child: Text('Error: ${snapshot.error}'),
                    )
                    ];
                } else {
                    children = const <Widget>[
                    SizedBox(
                        child: const CircularProgressIndicator(),
                        width: 60,
                        height: 60,
                    ),
                    Padding(
                        padding: const EdgeInsets.only(top: 16),
                        child: const Text('Awaiting result...'),
                    )
                    ];
                }
                return Column(
                    children: children,
                );
                },
            );
        }
    }
