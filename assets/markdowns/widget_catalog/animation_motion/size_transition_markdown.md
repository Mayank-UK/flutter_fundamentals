    class _SizeTransitionImplementation extends StatefulWidget {
        @override
        __SizeTransitionImplementationState createState() => __SizeTransitionImplementationState();
    }

    class __SizeTransitionImplementationState extends State<_SizeTransitionImplementation> with TickerProviderStateMixin {
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
            return SizeTransition(
                sizeFactor: CurvedAnimation(
                    parent: _controller,
                    curve: Curves.fastOutSlowIn,
                ),
                axis: Axis.horizontal,
                axisAlignment: -1,
                child: FlutterLogo(size: 64),
            );
        }
    }
