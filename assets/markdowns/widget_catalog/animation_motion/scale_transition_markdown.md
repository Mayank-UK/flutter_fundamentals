    class _ScaleTransitionImplementation extends StatefulWidget {
        @override
        __ScaleTransitionImplementationState createState() => __ScaleTransitionImplementationState();
    }

    class __ScaleTransitionImplementationState extends State<_ScaleTransitionImplementation> with TickerProviderStateMixin {
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
            super.dispose();
            _controller.dispose();
        }

        @override
        Widget build(BuildContext context) {
            return ScaleTransition(
                scale: CurvedAnimation(
                    parent: _controller,
                    curve: Curves.fastOutSlowIn,
                ),
                child: FlutterLogo(size: 64),
            );
        }
    }
