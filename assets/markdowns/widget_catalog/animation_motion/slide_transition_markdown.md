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
            return SlideTransition(
                position: Tween<Offset>(
                    begin: Offset.zero,
                    end: const Offset(1.5, 0.0),
                ).animate(
                    CurvedAnimation(
                        parent: _controller,
                        curve: Curves.elasticIn,
                    ),
                ),
                child: FlutterLogo(size: 64),
            );
        }
    }
