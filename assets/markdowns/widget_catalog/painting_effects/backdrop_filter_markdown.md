    BackdropFilter(
        filter: ui.ImageFilter.blur(
            sigmaX: 5.0,
            sigmaY: 5.0,
        ),
        child: Container(
            alignment: Alignment.center,
            width: 100.0,
            height: 100.0,
            child: Text('Hello World'),
        ),
    ),