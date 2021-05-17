    ConstrainedBox(
        constraints: BoxConstraints(
            minHeight: 50,
            minWidth: 100,
            maxHeight: 100,
            maxWidth: 100,
        ),
        child: Container(
            color: Colors.amber,
            height: 100,
            width: double.infinity,
        ),
    ),