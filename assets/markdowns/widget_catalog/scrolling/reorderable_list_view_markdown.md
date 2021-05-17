    class _ReorderableListViewWidgetImplementation extends StatefulWidget {
        @override
        __ReorderableListViewWidgetImplementationState createState() => __ReorderableListViewWidgetImplementationState();
    }

    class __ReorderableListViewWidgetImplementationState extends State<_ReorderableListViewWidgetImplementation> {
        final List<int> _items = List<int>.generate(50, (int index) => index);

        void _onReorder(int oldIndex, int newIndex) {
            setState(() {
                if (oldIndex < newIndex) {
                    newIndex -= 1;
                }
                final int item = _items.removeAt(oldIndex);
                _items.insert(newIndex, item);
            });
        }

        @override
        Widget build(BuildContext context) {
            return ReorderableListView(
                onReorder: (int oldIndex, int newIndex) => _onReorder,
                children: List.generate(
                    _items.length,
                    (index) {
                        return Container(
                            key: Key('$index'),
                            margin: const EdgeInsets.only(
                                bottom: 8,
                            ),
                            child: ListTile(
                                tileColor: Colors.amber,
                                title: Text('Item ${_items[index]}'),
                            ),
                        );
                    },
                ),
            );
        }
    }
