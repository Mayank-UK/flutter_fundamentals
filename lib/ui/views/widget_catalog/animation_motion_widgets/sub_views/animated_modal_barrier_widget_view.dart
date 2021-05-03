import 'package:flutter/material.dart';

import '../../../../components/code_preview_component.dart';
import '../../../../components/section_wrapper_component_component.dart';
import '../../../../components/text_block_component.dart';

class AnimatedModalBarrierWidgetView extends StatelessWidget {
  final String _appBarTitle = 'AnimatedModalBarrier';
  final String _codeTabMarkdownLocation = 'assets/markdowns/test.md';

  @override
  Widget build(BuildContext context) {
    return CodePreviewTabsComponent(
      appBarTitle: this._appBarTitle,
      previewTab: _AnimatedModalBarrierImplementation(),
      codeTabMarkdownLocation: this._codeTabMarkdownLocation,
    );
  }
}

class _AnimatedModalBarrierImplementation extends StatefulWidget {
  @override
  __AnimatedModalBarrierImplementationState createState() =>
      __AnimatedModalBarrierImplementationState();
}

class __AnimatedModalBarrierImplementationState
    extends State<_AnimatedModalBarrierImplementation>
    with SingleTickerProviderStateMixin {
  bool _isToggled = false;

  AnimationController _animationController;
  Animation<Color> _colorTweenAnimation;

  @override
  void initState() {
    super.initState();

    ColorTween _colorTween = ColorTween(
      begin: Color.fromARGB(100, 255, 255, 255),
      end: Color.fromARGB(100, 127, 127, 127),
    );

    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(
        seconds: 3,
      ),
    );

    _colorTweenAnimation = _colorTween.animate(_animationController);
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
        SectionWrapperComponent(
          title: 'Simple use',
          content: [
            TextBlockComponent(
              '"AnimatedModalBarrier" has a named parameter "color" which is of type "Animation<Color>".',
            ),
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
                                color: this._colorTweenAnimation,
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
        ),
      ],
    );
  }
}
