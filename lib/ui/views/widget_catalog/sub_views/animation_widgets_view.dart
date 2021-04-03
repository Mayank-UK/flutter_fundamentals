import 'package:flutter/material.dart';

import './../../../../core/router/router.dart';

import '../../../widgets/main_drawer.dart';
import '../../../widgets/widget_info.dart';

import './../../../widgets/custom_listview.dart';
import './../../../widgets/code_preview.dart';

class AnimationWidgetsView extends StatelessWidget {
  List<ListViewItem> _itemList = [
    ListViewItem(
      title: 'AnimatedAlign',
      description:
          'Animated version of Align which automatically transitions the child\'s position over a given duration whenever the given alignment changes.',
      route: RoutePaths.animatedAlign,
    ),
    ListViewItem(
      title: 'AnimatedBuilder',
      description:
          'A general-purpose widget for building animations. AnimatedBuilder is useful for more complex widgets that wish to include animation as part of a larger build function. To use AnimatedBuilder, simply construct the widget and pass it a builder function.',
      route: RoutePaths.animatedBuilder,
    ),
    ListViewItem(
        title: 'AnimatedContainer',
        description:
            'A container that gradually changes its values over a period of time.',
        route: RoutePaths.animatedContainer),
    ListViewItem(
      title: 'AnimatedCrossFade',
      description:
          'A widget that cross-fades between two given children and animates itself between their sizes.',
      route: RoutePaths.animatedCrossFade,
    ),
    ListViewItem(
      title: 'AnimatedDefaultTextStyle',
      description:
          'Animated version of DefaultTextStyle which automatically transitions the default text style (the text style to apply to descendant Text widgets without explicit style) over a given duration whenever the given style changes.',
      route: RoutePaths.animatedDefaultTextStyle,
    ),
    ListViewItem(
        title: 'AnimatedListState',
        description:
            'The state for a scrolling container that animates items when they are inserted or removed.',
        route: RoutePaths.animatedListState),
    ListViewItem(
      title: 'AnimatedModalBarrier',
      description:
          'A widget that prevents the user from interacting with widgets behind itself.',
      route: RoutePaths.animatedModalBarrier,
    ),
    ListViewItem(
      title: 'AnimatedOpacity',
      description:
          'Animated version of Opacity which automatically transitions the child\'s opacity over a given duration whenever the given opacity changes.',
      route: RoutePaths.animatedOpacity,
    ),
    ListViewItem(
      title: 'AnimatedPhysicalModel',
      description: 'Animated version of PhysicalModel.',
      route: RoutePaths.animatedPhysicalModel,
    ),
    ListViewItem(
      title: 'AnimatedPositioned',
      description:
          'Animated version of Positioned which automatically transitions the child\'s position over a given duration whenever the given position changes.',
      route: RoutePaths.animatedPositioned,
    ),
    ListViewItem(
        title: 'AnimatedSize',
        description:
            'Animated widget that automatically transitions its size over a given duration whenever the given child\'s size changes.',
        route: RoutePaths.animatedSize),
    ListViewItem(
        title: 'AnimatedWidget',
        description:
            'A widget that rebuilds when the given Listenable changes value.',
        route: RoutePaths.animatedWidget),
    ListViewItem(
      title: 'AnimatedWidgetBaseState',
      description: 'A base class for widgets with implicit animations.',
      route: RoutePaths.animatedWidgetBaseState,
    ),
    ListViewItem(
      title: 'DecoratedBoxTransition',
      description:
          'Animated version of a DecoratedBox that animates the different properties of its Decoration.',
      route: RoutePaths.decoratedBoxTransition,
    ),
    ListViewItem(
      title: 'FadeTransition',
      description: 'Animates the opacity of a widget.',
      route: RoutePaths.fadeTransition,
    ),
    ListViewItem(
      title: 'Hero',
      description:
          'A widget that marks its child as being a candidate for hero animations.',
      route: RoutePaths.hero,
    ),
    ListViewItem(
        title: 'PositionedTransition',
        description:
            'Animated version of Positioned which takes a specific Animation to transition the child\'s position from a start position to and end position over the lifetime of the animation.',
        route: RoutePaths.positionedTransition),
    ListViewItem(
      title: 'RotationTransition',
      description: 'Animates the rotation of a widget.',
      route: RoutePaths.rotationTransition,
    ),
    ListViewItem(
      title: 'ScaleTransition',
      description: 'Animates the scale of transformed widget.',
      route: RoutePaths.scaleTransition,
    ),
    ListViewItem(
      title: 'SizeTransition',
      description: 'Animates its own size and clips and aligns the child.',
      route: RoutePaths.sizeTransition,
    ),
    ListViewItem(
      title: 'SlideTransition',
      description:
          'Animates the position of a widget relative to its normal position.',
      route: RoutePaths.slideTransition,
    ),
  ];

  String appBarTitle;

  AnimationWidgetsView({@required this.appBarTitle});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(this.appBarTitle),
      ),
      // drawer: MainDrawer(),
      body: TappableListView(
        itemList: _itemList,
      ),
    );
  }

  /* String appBarTitle;

  AnimationWidgetsView({@required this.appBarTitle});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text(this.appBarTitle),
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
        // drawer: MainDrawer(),
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
    ); */
}

class AnimatedAlignWidget extends StatelessWidget {
  String appBarTitle;
  String codeTabMarkdownLocation = 'assets/markdowns/test.md';

  AnimatedAlignWidget({@required this.appBarTitle});

  @override
  Widget build(BuildContext context) {
    return CodePreviewTabs(
      appBarTitle: this.appBarTitle,
      previewTab: Text('preview'),
      codeTabMarkdownLocation: this.codeTabMarkdownLocation,
    );
  }
}

class AnimatedBuilderWidget extends StatelessWidget {
  String appBarTitle;
  String codeTabMarkdownLocation = 'assets/markdowns/test.md';

  AnimatedBuilderWidget({@required this.appBarTitle});

  @override
  Widget build(BuildContext context) {
    return CodePreviewTabs(
      appBarTitle: this.appBarTitle,
      previewTab: Text('preview'),
      codeTabMarkdownLocation: this.codeTabMarkdownLocation,
    );
  }
}

class AnimatedContainerWidget extends StatelessWidget {
  String appBarTitle;
  String codeTabMarkdownLocation = 'assets/markdowns/test.md';

  AnimatedContainerWidget({@required this.appBarTitle});

  @override
  Widget build(BuildContext context) {
    return CodePreviewTabs(
      appBarTitle: this.appBarTitle,
      previewTab: Text('preview'),
      codeTabMarkdownLocation: this.codeTabMarkdownLocation,
    );
  }
}

class AnimatedCrossFadeWidget extends StatelessWidget {
  String appBarTitle;
  String codeTabMarkdownLocation = 'assets/markdowns/test.md';

  AnimatedCrossFadeWidget({@required this.appBarTitle});

  @override
  Widget build(BuildContext context) {
    return CodePreviewTabs(
      appBarTitle: this.appBarTitle,
      previewTab: Text('preview'),
      codeTabMarkdownLocation: this.codeTabMarkdownLocation,
    );
  }
}

class AnimatedDefaultTextStyleWidget extends StatelessWidget {
  String appBarTitle;
  String codeTabMarkdownLocation = 'assets/markdowns/test.md';

  AnimatedDefaultTextStyleWidget({@required this.appBarTitle});

  @override
  Widget build(BuildContext context) {
    return CodePreviewTabs(
      appBarTitle: this.appBarTitle,
      previewTab: Text('preview'),
      codeTabMarkdownLocation: this.codeTabMarkdownLocation,
    );
  }
}

class AnimatedListStateWidget extends StatelessWidget {
  String appBarTitle;
  String codeTabMarkdownLocation = 'assets/markdowns/test.md';

  AnimatedListStateWidget({@required this.appBarTitle});

  @override
  Widget build(BuildContext context) {
    return CodePreviewTabs(
      appBarTitle: this.appBarTitle,
      previewTab: Text('preview'),
      codeTabMarkdownLocation: this.codeTabMarkdownLocation,
    );
  }
}

class AnimatedModalBarrierWidget extends StatelessWidget {
  String appBarTitle;
  String codeTabMarkdownLocation = 'assets/markdowns/test.md';

  AnimatedModalBarrierWidget({@required this.appBarTitle});

  @override
  Widget build(BuildContext context) {
    return CodePreviewTabs(
      appBarTitle: this.appBarTitle,
      previewTab: Text('preview'),
      codeTabMarkdownLocation: this.codeTabMarkdownLocation,
    );
  }
}

class AnimatedOpacityWidget extends StatelessWidget {
  String appBarTitle;
  String codeTabMarkdownLocation = 'assets/markdowns/test.md';

  AnimatedOpacityWidget({@required this.appBarTitle});

  @override
  Widget build(BuildContext context) {
    return CodePreviewTabs(
      appBarTitle: this.appBarTitle,
      previewTab: Text('preview'),
      codeTabMarkdownLocation: this.codeTabMarkdownLocation,
    );
  }
}

class AnimatedPhysicalModelWidget extends StatelessWidget {
  String appBarTitle;
  String codeTabMarkdownLocation = 'assets/markdowns/test.md';

  AnimatedPhysicalModelWidget({@required this.appBarTitle});

  @override
  Widget build(BuildContext context) {
    return CodePreviewTabs(
      appBarTitle: this.appBarTitle,
      previewTab: Text('preview'),
      codeTabMarkdownLocation: this.codeTabMarkdownLocation,
    );
  }
}

class AnimatedPositionedWidget extends StatelessWidget {
  String appBarTitle;
  String codeTabMarkdownLocation = 'assets/markdowns/test.md';

  AnimatedPositionedWidget({@required this.appBarTitle});

  @override
  Widget build(BuildContext context) {
    return CodePreviewTabs(
      appBarTitle: this.appBarTitle,
      previewTab: Text('preview'),
      codeTabMarkdownLocation: this.codeTabMarkdownLocation,
    );
  }
}

class AnimatedSizeWidget extends StatelessWidget {
  String appBarTitle;
  String codeTabMarkdownLocation = 'assets/markdowns/test.md';

  AnimatedSizeWidget({@required this.appBarTitle});

  @override
  Widget build(BuildContext context) {
    return CodePreviewTabs(
      appBarTitle: this.appBarTitle,
      previewTab: Text('preview'),
      codeTabMarkdownLocation: this.codeTabMarkdownLocation,
    );
  }
}

class AnimatedWidgetWidget extends StatelessWidget {
  String appBarTitle;
  String codeTabMarkdownLocation = 'assets/markdowns/test.md';

  AnimatedWidgetWidget({@required this.appBarTitle});

  @override
  Widget build(BuildContext context) {
    return CodePreviewTabs(
      appBarTitle: this.appBarTitle,
      previewTab: Text('preview'),
      codeTabMarkdownLocation: this.codeTabMarkdownLocation,
    );
  }
}

class AnimatedWidgetBaseStateWidget extends StatelessWidget {
  String appBarTitle;
  String codeTabMarkdownLocation = 'assets/markdowns/test.md';

  AnimatedWidgetBaseStateWidget({@required this.appBarTitle});

  @override
  Widget build(BuildContext context) {
    return CodePreviewTabs(
      appBarTitle: this.appBarTitle,
      previewTab: Text('preview'),
      codeTabMarkdownLocation: this.codeTabMarkdownLocation,
    );
  }
}

class DecoratedBoxTransitionWidget extends StatelessWidget {
  String appBarTitle;
  String codeTabMarkdownLocation = 'assets/markdowns/test.md';

  DecoratedBoxTransitionWidget({@required this.appBarTitle});

  @override
  Widget build(BuildContext context) {
    return CodePreviewTabs(
      appBarTitle: this.appBarTitle,
      previewTab: Text('preview'),
      codeTabMarkdownLocation: this.codeTabMarkdownLocation,
    );
  }
}

class FadeTransitionWidget extends StatelessWidget {
  String appBarTitle;
  String codeTabMarkdownLocation = 'assets/markdowns/test.md';

  FadeTransitionWidget({@required this.appBarTitle});

  @override
  Widget build(BuildContext context) {
    return CodePreviewTabs(
      appBarTitle: this.appBarTitle,
      previewTab: Text('preview'),
      codeTabMarkdownLocation: this.codeTabMarkdownLocation,
    );
  }
}

class HeroWidget extends StatelessWidget {
  String appBarTitle;
  String codeTabMarkdownLocation = 'assets/markdowns/test.md';

  HeroWidget({@required this.appBarTitle});

  @override
  Widget build(BuildContext context) {
    return CodePreviewTabs(
      appBarTitle: this.appBarTitle,
      previewTab: Text('preview'),
      codeTabMarkdownLocation: this.codeTabMarkdownLocation,
    );
  }
}

class PositionedTransitionWidget extends StatelessWidget {
  String appBarTitle;
  String codeTabMarkdownLocation = 'assets/markdowns/test.md';

  PositionedTransitionWidget({@required this.appBarTitle});

  @override
  Widget build(BuildContext context) {
    return CodePreviewTabs(
      appBarTitle: this.appBarTitle,
      previewTab: Text('preview'),
      codeTabMarkdownLocation: this.codeTabMarkdownLocation,
    );
  }
}

class RotationTransitionWidget extends StatelessWidget {
  String appBarTitle;
  String codeTabMarkdownLocation = 'assets/markdowns/test.md';

  RotationTransitionWidget({@required this.appBarTitle});

  @override
  Widget build(BuildContext context) {
    return CodePreviewTabs(
      appBarTitle: this.appBarTitle,
      previewTab: Text('preview'),
      codeTabMarkdownLocation: this.codeTabMarkdownLocation,
    );
  }
}

class SizeTransitionWidget extends StatelessWidget {
  String appBarTitle;
  String codeTabMarkdownLocation = 'assets/markdowns/test.md';

  SizeTransitionWidget({@required this.appBarTitle});

  @override
  Widget build(BuildContext context) {
    return CodePreviewTabs(
      appBarTitle: this.appBarTitle,
      previewTab: Text('preview'),
      codeTabMarkdownLocation: this.codeTabMarkdownLocation,
    );
  }
}

class SlideTransitionWidget extends StatelessWidget {
  String appBarTitle;
  String codeTabMarkdownLocation = 'assets/markdowns/test.md';

  SlideTransitionWidget({@required this.appBarTitle});

  @override
  Widget build(BuildContext context) {
    return CodePreviewTabs(
      appBarTitle: this.appBarTitle,
      previewTab: Text('preview'),
      codeTabMarkdownLocation: this.codeTabMarkdownLocation,
    );
  }
}

class ScaleTransitionWidget extends StatelessWidget {
  String appBarTitle;
  String codeTabMarkdownLocation = 'assets/markdowns/test.md';

  ScaleTransitionWidget({@required this.appBarTitle});

  @override
  Widget build(BuildContext context) {
    return CodePreviewTabs(
      appBarTitle: this.appBarTitle,
      previewTab: Text('preview'),
      codeTabMarkdownLocation: this.codeTabMarkdownLocation,
    );
  }
}
