    SliverList(
        delegate: SliverChildBuilderDelegate(
            (BuildContext context, int index) {
            return Container(
                color: index.isOdd ? Colors.white : Colors.black12,
                height: 100.0,
                child: Center(
                child: Text('$index', textScaleFactor: 5),
                ),
            );
            },
            childCount: 20,
        ),
    ),