    class _RefreshIndicatorWidgetImplementation extends StatelessWidget {
    Future _onRefresh(context) async {
        return Future<String>.delayed(
            const Duration(seconds: 1),
            () {
                final Widget snackBar = SnackBar(content: const Text('Data refreshed'));
                ScaffoldMessenger.of(context).showSnackBar(snackBar);

                return;
            },
        );
    }

        @override
        Widget build(BuildContext context) {
            return RefreshIndicator(
                onRefresh: () => _onRefresh(context),
                child: ListView.builder(
                    itemBuilder: (BuildContext ctx, index) {
                        return Container(
                            alignment: Alignment.center,
                            color: Colors.amber,
                            height: 100,
                            margin: const EdgeInsets.only(
                                // top: 8,
                                bottom: 8,
                            ),
                            width: double.infinity,
                            child: Text('$index'),
                        );
                    },
                ),
            );
        }
    }
