    class _DismissibleWidgetImplementation extends StatefulWidget {
        @override
        __DismissibleWidgetImplementationState createState() => __DismissibleWidgetImplementationState();
    }

    class __DismissibleWidgetImplementationState extends State<_DismissibleWidgetImplementation> {
        List<int> items = List<int>.generate(100, (int index) => index);

        @override
        Widget build(BuildContext context) {
            return ListView.builder(
                shrinkWrap: true,
                itemCount: items.length,
                padding: const EdgeInsets.symmetric(vertical: 16),
                itemBuilder: (BuildContext context, int index) {
                    return Dismissible(
                        key: ValueKey<int>(items[index]),
                        background: Container(
                            color: Colors.green,
                        ),
                        onDismissed: (DismissDirection direction) {
                            setState(() {
                                items.removeAt(index);
                            });
                        },
                        child: ListTile(
                            title: Text(
                                'Item ${items[index]}',
                            ),
                        ),
                    );
                },
            );
        }
    }