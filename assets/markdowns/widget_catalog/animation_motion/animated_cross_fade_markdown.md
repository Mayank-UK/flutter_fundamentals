    AnimatedCrossFade(
        duration: const Duration(seconds: 3),
        firstChild: const FlutterLogo(
            style: FlutterLogoStyle.horizontal, size: 100.0),
        secondChild: const FlutterLogo(
            style: FlutterLogoStyle.stacked, size: 100.0),
        crossFadeState: this.isToggled
            ? CrossFadeState.showFirst
            : CrossFadeState.showSecond,
    ),