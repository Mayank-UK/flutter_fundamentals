    class _PositionedTransitionImplementation extends StatefulWidget {
        @override
        __PositionedTransitionImplementationState createState() => __PositionedTransitionImplementationState();
    }

    class __PositionedTransitionImplementationState extends State<_PositionedTransitionImplementation> with TickerProviderStateMixin {
        AnimationController _controller;

        @override
        void initState() {
            _controller = AnimationController(
            duration: const Duration(seconds: 2),
            vsync: this,
            )..repeat(reverse: true);
        }

        @override
        Widget build(BuildContext context) {
            return Stack(
                children: [
                    PositionedTransition(
                        rect: RelativeRectTween(
                        begin: RelativeRect.fromSize(
                            Rect.fromLTWH(0, 0, 64, 64),
                            Size(64, 64),
                        ),
                        end: RelativeRect.fromSize(
                            Rect.fromLTWH(50, 50, 32, 32),
                            Size(32, 32),
                        ),
                        ).animate(
                            CurvedAnimation(
                                parent: _controller,
                                curve: Curves.easeInOut,
                            ),
                        ),
                        child: FlutterLogo(
                            size: 64,
                        ),
                    ),
                ],
            );
        }
    }
