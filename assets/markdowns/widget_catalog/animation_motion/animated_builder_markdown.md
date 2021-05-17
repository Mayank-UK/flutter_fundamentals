    class _AnimatedBuilderWidgetImplementation extends StatefulWidget {
        @override
        __AnimatedBuilderWidgetImplementationState createState() => __AnimatedBuilderWidgetImplementationState();
    }

    class __AnimatedBuilderWidgetImplementationState extends State<_AnimatedBuilderWidgetImplementation> with TickerProviderStateMixin {

        AnimationController _controller;

        @override
        void initState() {
            super.initState();

            this._controller = AnimationController(
            duration: const Duration(seconds: 10),
            vsync: this,
            )..repeat();
        }

        @override
        void dispose() {
            _controller.dispose();
            super.dispose();
        }

        @override
        Widget build(BuildContext context) {
            return AnimatedBuilder(
                animation: _controller,
                child: Container(
                    width: 100.0,
                    height: 100.0,
                    color: Colors.amber,
                    child: Container(
                    alignment: Alignment.center,
                    child: const Text('Whee!'),
                    ),
                ),
                builder: (BuildContext context, Widget child) {
                    return Transform.rotate(
                    angle: _controller.value * 2.0 * math.pi,
                    child: child,
                    );
                },
            );
        }
    }
