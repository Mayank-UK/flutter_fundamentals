    Scrollbar(
        isAlwaysShown: true,
        child: ListView(
            children: List.generate(
                50,
                (index) {
                    return Container(
                        alignment: Alignment.center,
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