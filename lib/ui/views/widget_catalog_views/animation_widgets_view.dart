import 'package:flutter/material.dart';

import '../../widgets/main_drawer.dart';
import '../../widgets/widget_info.dart';

class AnimationWidgetsView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Animation widgets'),
          leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(
              Icons.arrow_back_ios,
            ),
          ),
          bottom: const TabBar(
            tabs: <Widget>[
              Tab(
                child: Text('Demo'),
              ),
              Tab(
                child: Text('Code'),
              ),
            ],
          ),
        ),
        drawer: MainDrawer(),
        body: TabBarView(children: [
          Center(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Animation widgets',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                      ],
                    ),
                  ),
                  WidgetInfo(
                    title: 'AnimatedAlign',
                    description:
                        '-Animated version of Align which automatically transitions the child\'s position over a given duration whenever the given alignment changes.',
                  ),
                  WidgetInfo(
                    title: 'AnimatedBuilder',
                    description:
                        '-A general-purpose widget for building animations. AnimatedBuilder is useful for more complex widgets that wish to include animation as part of a larger build function. To use AnimatedBuilder, simply construct the widget and pass it a builder function.',
                  ),
                  WidgetInfo(
                    title: 'AnimatedContainer',
                    description:
                        '-A container that gradually changes its values over a period of time.',
                  ),
                  WidgetInfo(
                    title: 'AnimatedDefaultTextStyle',
                    description:
                        '-A widget that cross-fades between two given children and animates itself between their sizes.',
                  ),
                  WidgetInfo(
                    title: 'AnimatedCrossFade',
                    description:
                        '-Animated version of DefaultTextStyle which automatically transitions the default text style (the text style to apply to descendant Text widgets without explicit style) over a given duration whenever the given style changes.',
                  ),
                  WidgetInfo(
                    title: 'AnimatedListState',
                    description:
                        '-The state for a scrolling container that animates items when they are inserted or removed.',
                  ),
                  WidgetInfo(
                    title: 'AnimatedModalBarrier',
                    description:
                        '-A widget that prevents the user from interacting with widgets behind itself.',
                  ),
                  WidgetInfo(
                    title: 'AnimatedOpacity',
                    description:
                        '-Animated version of Opacity which automatically transitions the child\'s opacity over a given duration whenever the given opacity changes.',
                  ),
                  WidgetInfo(
                    title: 'AnimatedPhysicalModel',
                    description: '-Animated version of PhysicalModel.',
                  ),
                  WidgetInfo(
                    title: 'AnimatedPositioned',
                    description:
                        '-Animated version of Positioned which automatically transitions the child\'s position over a given duration whenever the given position changes.',
                  ),
                  WidgetInfo(
                    title: 'AnimatedSize',
                    description:
                        '-Animated widget that automatically transitions its size over a given duration whenever the given child\'s size changes.',
                  ),
                  WidgetInfo(
                    title: 'AnimatedWidget',
                    description:
                        '-A widget that rebuilds when the given Listenable changes value.',
                  ),
                  WidgetInfo(
                    title: 'AnimatedWidgetBaseState',
                    description:
                        '-A base class for widgets with implicit animations.',
                  ),
                  WidgetInfo(
                    title: 'DecoratedBoxTransition',
                    description:
                        '-Animated version of a DecoratedBox that animates the different properties of its Decoration.',
                  ),
                  WidgetInfo(
                    title: 'FadeTransition',
                    description: '-Animates the opacity of a widget.',
                  ),
                  WidgetInfo(
                    title: 'Hero',
                    description:
                        '-A widget that marks its child as being a candidate for hero animations.',
                  ),
                  WidgetInfo(
                    title: 'PositionedTransition',
                    description:
                        '-Animated version of Positioned which takes a specific Animation to transition the child\'s position from a start position to and end position over the lifetime of the animation.',
                  ),
                  WidgetInfo(
                    title: 'RotationTransition',
                    description: '-Animates the rotation of a widget.',
                  ),
                  WidgetInfo(
                    title: 'ScaleTransition',
                    description: '-Animates the scale of transformed widget.',
                  ),
                  WidgetInfo(
                    title: 'SizeTransition',
                    description:
                        '-Animates its own size and clips and aligns the child.',
                  ),
                  WidgetInfo(
                    title: 'SlideTransition',
                    description:
                        '-Animates the position of a widget relative to its normal position.',
                  ),
                ],
              ),
            ),
          ),
          Center(
            child: Text('Demo code here'),
          )
        ]),
      ),
    );
  }
}
