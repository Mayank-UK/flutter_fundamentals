    class _BottomSheetWidgetImplementation extends StatelessWidget {
        void _showModalBottomSheetMenu(BuildContext context) {
            showModalBottomSheet(
                context: context,
                builder: (builder) {
                    return Container(
                        height: 350.0,
                        color: Colors.transparent,
                        child: Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.only(
                                    topLeft: const Radius.circular(10.0),
                                    topRight: const Radius.circular(10.0),
                                ),
                            ),
                            child: Center(
                                child: Text("This is a modal sheet"),
                            ),
                        ),
                    );
                },
            );
        }

        @override
        Widget build(BuildContext context) {
            return ElevatedButton(
                onPressed: () => this._showModalBottomSheetMenu(context),
                child: Text('Show bottom sheet'),
            ),
        }
    }
