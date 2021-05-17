    class _RotationTransitionImplementation extends StatefulWidget {
        @override
        __RotationTransitionImplementationState createState() => __RotationTransitionImplementationState();
    }

    class __RotationTransitionImplementationState extends State<_RotationTransitionImplementation> with TickerProviderStateMixin {
        AnimationController _controller;

        @override
        void initState() {
            _controller = AnimationController(
            duration: const Duration(seconds: 2),
            vsync: this,
            )..repeat(reverse: true);
        }

        @override
        void dispose() {
            _controller.dispose();
            super.dispose();
        }

        @override
        Widget build(BuildContext context) {
            return RotationTransition(
                turns: CurvedAnimation(
                    parent: _controller,
                    curve: Curves.elasticOut,
                ),
                child: FlutterLogo(
                    size: 64,
                ),
            );
        }
    }
