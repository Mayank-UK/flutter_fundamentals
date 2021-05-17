    class _AnimatedModalBarrierImplementation extends StatefulWidget {
        @override
        __AnimatedModalBarrierImplementationState createState() => __AnimatedModalBarrierImplementationState();
    }

    class __AnimatedModalBarrierImplementationState extends State<_AnimatedModalBarrierImplementation> with SingleTickerProviderStateMixin {
        bool _isToggled = false;

        AnimationController _animationController;
        Animation<Color> _colorTweenAnimation;

        @override
        void initState() {
            super.initState();

            _animationController = AnimationController(
                vsync: this,
                duration: const Duration(
                    seconds: 3,
                ),
            );
        }

        void onPressed() {
            setState(() {
                this._isToggled = !this._isToggled;
            });

            _animationController.reset();
            _animationController.forward();
        }

        @override
        Widget build(BuildContext context) {
            return Wrap(
            children: <Widget>[
                    Container(
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                                Container(
                                    height: 100.0,
                                    width: 250.0,
                                    child: Stack(
                                        alignment: AlignmentDirectional.center,
                                        children: <Widget>[
                                            ElevatedButton(
                                                onPressed: this.onPressed,
                                                child: Text('Tap to toggle modal barrier'),
                                            ),
                                            this._isToggled
                                                ? AnimatedModalBarrier(
                                                    color: ColorTween(
                                                    begin: Color.fromARGB(100, 255, 255, 255),
                                                    end: Color.fromARGB(100, 127, 127, 127),
                                                    ).animate(_animationController),
                                                    dismissible: false,
                                                )
                                                : Container(),
                                        ],
                                    ),
                                ),
                                ElevatedButton(
                                    onPressed: this.onPressed,
                                    child: Text('Tap to toggle modal barrier'),
                                ),
                            ],
                        ),
                    ),
                ],
            );
        }
    }
