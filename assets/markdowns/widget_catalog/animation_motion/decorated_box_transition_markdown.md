    class _DecoratedBoxTransitionImplementation extends StatefulWidget {
        @override
        __DecoratedBoxTransitionImplementationState createState() => __DecoratedBoxTransitionImplementationState();
    }

    class __DecoratedBoxTransitionImplementationState extends State<_DecoratedBoxTransitionImplementation> with TickerProviderStateMixin {

        AnimationController _controller;

        @override
        void initState() {
            _controller = AnimationController(
            vsync: this,
            duration: const Duration(
                seconds: 3,
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
            return DecoratedBoxTransition(
                position: DecorationPosition.background,
                decoration: DecorationTween(
                    begin: BoxDecoration(
                        color: const Color(0xFFFFFFFF),
                        border: Border.all(style: BorderStyle.none),
                        borderRadius: BorderRadius.circular(60.0),
                        shape: BoxShape.rectangle,
                        boxShadow: const <BoxShadow>[
                        BoxShadow(
                            color: Color(0x66666666),
                            blurRadius: 10.0,
                            spreadRadius: 3.0,
                            offset: Offset(0, 6.0),
                        )
                        ],
                    ),
                    end: BoxDecoration(
                        color: const Color(0xFFFFFFFF),
                        border: Border.all(
                        style: BorderStyle.none,
                        ),
                        borderRadius: BorderRadius.zero,
                        // No shadow.
                    ),
                ).animate(_controller),
                    child: Container(
                    width: 200,
                    height: 200,
                    padding: const EdgeInsets.all(10),
                    child: const FlutterLogo(),
                ),
            );
        }
    }
