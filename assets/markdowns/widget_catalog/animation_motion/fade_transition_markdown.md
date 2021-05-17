    class _FadeTransitionImplementation extends StatefulWidget {
        @override
        __FadeTransitionImplementationState createState() => __FadeTransitionImplementationState();
    }

    class __FadeTransitionImplementationState extends State<_FadeTransitionImplementation> with TickerProviderStateMixin {

        AnimationController _controller;

        @override
        void initState() {
            _controller = AnimationController(
                vsync: this,
                duration: const Duration(
                    seconds: 2,
                ),
            )..repeat(reverse: true);
        }

        @override
        void dispose() {
            _controller.dispose();
            super.dispose();
        }

        @override
        Widget build(BuildContext context) {
            return FadeTransition(
                opacity: CurvedAnimation(
                    parent: _controller,
                    curve: Curves.easeIn,
                ),
                child: const Padding(
                    padding: EdgeInsets.all(8),
                    child: FlutterLogo(
                        size: 64,
                    ),
                ),
            );
        }
    }
