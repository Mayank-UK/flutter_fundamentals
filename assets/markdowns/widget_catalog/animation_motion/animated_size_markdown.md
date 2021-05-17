    AnimatedSize(
        vsync: this,
        curve: Curves.easeIn,
        duration: const Duration(
            seconds: 1,
        ),
        child: FlutterLogo(
            size: _isToggled ? 24 : 64,
        ),
    ),