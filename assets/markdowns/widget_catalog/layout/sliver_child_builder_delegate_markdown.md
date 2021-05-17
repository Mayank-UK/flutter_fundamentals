    SliverChildBuilderDelegate(
        (BuildContext context, int index) {
            return Container(
                alignment: Alignment.center,
                color: Colors.teal[100 * (index % 9)],
                child: Text('Grid Item $index'),
            );
        },
        childCount: 20,
    ),