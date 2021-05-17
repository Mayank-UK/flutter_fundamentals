    AnimatedDefaultTextStyle(
        duration: const Duration(milliseconds: 300),
        style: this.isToggled
            ? DSTypography.h6Dark
            : DSTypography.h3Dark,
        child: Text('Flutter'),
    ),