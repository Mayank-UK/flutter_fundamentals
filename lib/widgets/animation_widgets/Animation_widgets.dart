import 'package:flutter/material.dart';

class AnimationWidgets extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Animation widgets',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ],
          ),
        ),
        Container(
          color: Colors.black12,
          margin: EdgeInsets.only(top: 16),
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('AnimatedAlign'),
              Container(
                margin: EdgeInsets.only(top: 8, right: 8, bottom: 8, left: 16),
                child: Text(
                    '-Animated version of Align which automatically transitions the child\'s position over a given duration whenever the given alignment changes.'),
              ),
            ],
          ),
        ),
        Container(
            color: Colors.black12,
            margin: EdgeInsets.only(top: 8),
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('AnimatedBuilder'),
                Container(
                  margin:
                      EdgeInsets.only(top: 8, right: 8, bottom: 8, left: 16),
                  child: Text(
                      '-A general-purpose widget for building animations. AnimatedBuilder is useful for more complex widgets that wish to include animation as part of a larger build function. To use AnimatedBuilder, simply construct the widget and pass it a builder function.'),
                ),
              ],
            )),
        Container(
            color: Colors.black12,
            margin: EdgeInsets.only(top: 8),
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('AnimatedContainer'),
                Container(
                  margin:
                      EdgeInsets.only(top: 8, right: 8, bottom: 8, left: 16),
                  child: Text(
                      '-A container that gradually changes its values over a period of time.'),
                ),
              ],
            )),
        Container(
            color: Colors.black12,
            margin: EdgeInsets.only(top: 8),
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('AnimatedDefaultTextStyle'),
                Container(
                  margin:
                      EdgeInsets.only(top: 8, right: 8, bottom: 8, left: 16),
                  child: Text(
                      '-A widget that cross-fades between two given children and animates itself between their sizes.'),
                ),
              ],
            )),
        Container(
            color: Colors.black12,
            margin: EdgeInsets.only(top: 8),
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('AnimatedCrossFade'),
                Container(
                  margin:
                      EdgeInsets.only(top: 8, right: 8, bottom: 8, left: 16),
                  child: Text(
                      '-Animated version of DefaultTextStyle which automatically transitions the default text style (the text style to apply to descendant Text widgets without explicit style) over a given duration whenever the given style changes.'),
                ),
              ],
            )),
        Container(
            color: Colors.black12,
            margin: EdgeInsets.only(top: 8),
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('AnimatedListState'),
                Container(
                  margin:
                      EdgeInsets.only(top: 8, right: 8, bottom: 8, left: 16),
                  child: Text(
                      '-The state for a scrolling container that animates items when they are inserted or removed.'),
                ),
              ],
            )),
        Container(
            color: Colors.black12,
            margin: EdgeInsets.only(top: 8),
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('AnimatedModalBarrier'),
                Container(
                  margin:
                      EdgeInsets.only(top: 8, right: 8, bottom: 8, left: 16),
                  child: Text(
                      '-A widget that prevents the user from interacting with widgets behind itself.'),
                ),
              ],
            )),
        Container(
            color: Colors.black12,
            margin: EdgeInsets.only(top: 8),
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('AnimatedOpacity'),
                Container(
                  margin:
                      EdgeInsets.only(top: 8, right: 8, bottom: 8, left: 16),
                  child: Text(
                      '-Animated version of Opacity which automatically transitions the child\'s opacity over a given duration whenever the given opacity changes.'),
                ),
              ],
            )),
        Container(
            color: Colors.black12,
            margin: EdgeInsets.only(top: 8),
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('AnimatedPhysicalModel'),
                Container(
                  margin:
                      EdgeInsets.only(top: 8, right: 8, bottom: 8, left: 16),
                  child: Text('-Animated version of PhysicalModel.'),
                ),
              ],
            )),
        Container(
            color: Colors.black12,
            margin: EdgeInsets.only(top: 8),
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('AnimatedPositioned'),
                Container(
                  margin:
                      EdgeInsets.only(top: 8, right: 8, bottom: 8, left: 16),
                  child: Text(
                      '-Animated version of Positioned which automatically transitions the child\'s position over a given duration whenever the given position changes.'),
                ),
              ],
            )),
        Container(
            color: Colors.black12,
            margin: EdgeInsets.only(top: 8),
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('AnimatedSize'),
                Container(
                  margin:
                      EdgeInsets.only(top: 8, right: 8, bottom: 8, left: 16),
                  child: Text(
                      '-Animated widget that automatically transitions its size over a given duration whenever the given child\'s size changes.'),
                ),
              ],
            )),
        Container(
            color: Colors.black12,
            margin: EdgeInsets.only(top: 8),
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('AnimatedWidget'),
                Container(
                  margin:
                      EdgeInsets.only(top: 8, right: 8, bottom: 8, left: 16),
                  child: Text(
                      '-A widget that rebuilds when the given Listenable changes value.'),
                ),
              ],
            )),
        Container(
            color: Colors.black12,
            margin: EdgeInsets.only(top: 8),
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('AnimatedWidgetBaseState'),
                Container(
                  margin:
                      EdgeInsets.only(top: 8, right: 8, bottom: 8, left: 16),
                  child: Text(
                      '-A base class for widgets with implicit animations.'),
                ),
              ],
            )),
        Container(
            color: Colors.black12,
            margin: EdgeInsets.only(top: 8),
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('DecoratedBoxTransition'),
                Container(
                  margin:
                      EdgeInsets.only(top: 8, right: 8, bottom: 8, left: 16),
                  child: Text(
                      '-Animated version of a DecoratedBox that animates the different properties of its Decoration.'),
                ),
              ],
            )),
        Container(
            color: Colors.black12,
            margin: EdgeInsets.only(top: 8),
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('FadeTransition'),
                Container(
                  margin:
                      EdgeInsets.only(top: 8, right: 8, bottom: 8, left: 16),
                  child: Text('-Animates the opacity of a widget.'),
                ),
              ],
            )),
        Container(
            color: Colors.black12,
            margin: EdgeInsets.only(top: 8),
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Hero'),
                Container(
                  margin:
                      EdgeInsets.only(top: 8, right: 8, bottom: 8, left: 16),
                  child: Text(
                      '-A widget that marks its child as being a candidate for hero animations.'),
                ),
              ],
            )),
        Container(
            color: Colors.black12,
            margin: EdgeInsets.only(top: 8),
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('PositionedTransition'),
                Container(
                  margin:
                      EdgeInsets.only(top: 8, right: 8, bottom: 8, left: 16),
                  child: Text(
                      '-Animated version of Positioned which takes a specific Animation to transition the child\'s position from a start position to and end position over the lifetime of the animation.'),
                ),
              ],
            )),
        Container(
            color: Colors.black12,
            margin: EdgeInsets.only(top: 8),
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('RotationTransition'),
                Container(
                  margin:
                      EdgeInsets.only(top: 8, right: 8, bottom: 8, left: 16),
                  child: Text('-Animates the rotation of a widget.'),
                ),
              ],
            )),
        Container(
            color: Colors.black12,
            margin: EdgeInsets.only(top: 8),
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('ScaleTransition'),
                Container(
                  margin:
                      EdgeInsets.only(top: 8, right: 8, bottom: 8, left: 16),
                  child: Text('-Animates the scale of transformed widget.'),
                ),
              ],
            )),
        Container(
            color: Colors.black12,
            margin: EdgeInsets.only(top: 8),
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('SizeTransition'),
                Container(
                  margin:
                      EdgeInsets.only(top: 8, right: 8, bottom: 8, left: 16),
                  child: Text(
                      '-Animates its own size and clips and aligns the child.'),
                ),
              ],
            )),
        Container(
            color: Colors.black12,
            margin: EdgeInsets.only(top: 8),
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('SlideTransition'),
                Container(
                  margin:
                      EdgeInsets.only(top: 8, right: 8, bottom: 8, left: 16),
                  child: Text(
                      '-Animates the position of a widget relative to its normal position.'),
                ),
              ],
            )),
      ],
    );
  }
}
