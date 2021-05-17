    AnimatedContainer(
        width: _selected ? 200.0 : 100.0,
        height: _selected ? 100.0 : 200.0,
        color: _selected ? Colors.red : Colors.blue,
        alignment: _selected
            ? Alignment.center
            : AlignmentDirectional.topCenter,
        duration: const Duration(seconds: 2),
        curve: Curves.fastOutSlowIn,
        child: const FlutterLogo(size: 75),
    ),