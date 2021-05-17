    AnimatedPhysicalModel(
        duration: const Duration(milliseconds: 500),
        curve: Curves.fastOutSlowIn,
        elevation: this._isToggled ? 0 : 16,
        shape: BoxShape.rectangle,
        shadowColor: Colors.black,
        color: Colors.white,
        child: Container(
            height: 120.0,
            width: 120.0,
            color: Colors.blue[50],
            child: FlutterLogo(
            size: 60,
            ),
        ),
    ),