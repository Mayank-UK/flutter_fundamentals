    SliverList(
        delegate: SliverChildListDelegate(
            List.generate(
                10,
                (index) {
                    return Container(
                        color: Colors.amber,
                        height: 100,
                        margin: const EdgeInsets.only(bottom: 4),
                    );
                },
            ),
        ),
    ),