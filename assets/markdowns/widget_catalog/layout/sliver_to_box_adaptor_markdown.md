    SliverToBoxAdapter(
        child: ListView(
            shrinkWrap: true,
            children: List.generate(
                10,
                (index) {
                    return Container(
                        color: Colors.amber,
                        height: 50,
                        margin: const EdgeInsets.only(
                            bottom: 4,
                        ),
                    );
                },
            ),
        ),
    ),