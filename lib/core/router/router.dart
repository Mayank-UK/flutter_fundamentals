import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_fundamentals/ui/views/ui_manipulation/sub_views/effects_view.dart';

import '../../ui/views/page_not_found/page_not_found_view.dart';
import '../../ui/views/home_view.dart';
import '../../ui/views/dart_fundamentals/dart_fundamentals_view.dart';
import '../../ui/views/flutter_fundamentals/flutter_fundamentals_view.dart';
import '../../ui/views/ui_manipulation/ui_manipulation_view.dart';
import '../../ui/views/widget_catalog/widget_catalog_view.dart';
import '../../ui/views/navigation/navigation_view.dart';
import '../../ui/views/state_management/state_management_view.dart';
import '../../ui/views/native_device_features/native_device_features_view.dart';
import '../../ui/views/architecture/architecture_view.dart';
import '../../ui/views/best_practices/best_practices_view.dart';

import '../../ui/views/widget_catalog/sub_views/accessibility_widgets_view.dart';
import '../../ui/views/widget_catalog/sub_views/animation_widgets_view.dart';
import '../../ui/views/widget_catalog/sub_views/asset_widgets_view.dart';
import '../../ui/views/widget_catalog/sub_views/async_widgets_view.dart';
import '../../ui/views/widget_catalog/sub_views/cupertino_widgets_view.dart';
import '../../ui/views/widget_catalog/sub_views/input_widgets_view.dart';
import '../../ui/views/widget_catalog/sub_views/interactive_widgets_view.dart';
import '../../ui/views/widget_catalog/sub_views/layout_widgets_view.dart';
import '../../ui/views/widget_catalog/sub_views/material_widgets_view.dart';
import '../../ui/views/widget_catalog/sub_views/painting_and_effects_widgets_view.dart';
import '../../ui/views/widget_catalog/sub_views/scrolling_widgets_view.dart';
import '../../ui/views/widget_catalog/sub_views/styling_widgets_view.dart';
import '../../ui/views/widget_catalog/sub_views/text_widgets_view.dart';

import './../../ui/views/ui_manipulation/sub_views/dimensions_constraints_view.dart';
import './../../ui/views/ui_manipulation/sub_views/spacing_view.dart';
import './../../ui/views/ui_manipulation/sub_views/colors_backgrounds_view.dart';
import './../../ui/views/ui_manipulation/sub_views/alignment_view.dart';
import './../../ui/views/ui_manipulation/sub_views/positioning_view.dart';
import './../../ui/views/ui_manipulation/sub_views/visibility_view.dart';
import './../../ui/views/ui_manipulation/sub_views/text_view.dart';
import './../../ui/views/ui_manipulation/sub_views/borders_view.dart';
import './../../ui/views/ui_manipulation/sub_views/effects_view.dart';

class RoutePaths {
  // home paths
  static const String home = '/';
  static const String pageNotFound = '/page-not-found';
  static const String dartFundamentals = '/dart-fundamentals';
  static const String flutterFundamentals = '/flutter-fundamentals';
  static const String uiManipulation = '/ui-manipulation';
  static const String widgetsCatalog = '/widgets-catalog';
  static const String navigation = '/navigation';
  static const String stateManagement =
      '/state-manaNative device featuresgement';
  static const String nativeDeviceFeatures = '/native-device-features';
  static const String architecture = '/architecture';
  static const String bestPractices = '/best-practices';

  // widget catalog category widgets
  static const String accessibilityWidgets =
      '/widgets-catalog/accessibility-widgets';
  static const String animationMotionWidgets =
      '/widgets-catalog/animation-motion-widgets';
  static const String assetWidgets = '/widgets-catalog/assets-widgets';
  static const String asyncWidgets = '/widgets-catalog/async-widgets';
  static const String cupertinoWidgets = '/widgets-catalog/cupertino-widgets';
  static const String inputWidgets = '/widgets-catalog/input-widgets';
  static const String interactiveWidgets =
      '/widgets-catalog/interactive-widgets';
  static const String layoutWidgets = '/widgets-catalog/layout-widgets';
  static const String materialWidgets = '/widgets-catalog/material-widgets';
  static const String paintingEffectWidgets =
      '/widgets-catalog/painting-effects-widgets';
  static const String scrollingWidgets = '/widgets-catalog/scrolling-widgets';
  static const String stylingWidgets = '/widgets-catalog/styling-widgets';
  static const String textWidgets = '/widgets-catalog/text-widgets';

  // widget catalog accessibility widgets
  static const String excludeSemanticsWidget =
      '/widgets-catalog/accessibility-widgets/exclude-semantics';
  static const String mergeSemanticsWidget =
      '/widgets-catalog/accessibility-widgets/merge-semantics';
  static const String semanticsWidget =
      '/widgets-catalog/accessibility-widgets/semantics';

  // widget catalog animations and motion widgets
  static const String animatedAlign =
      '/widgets-catalog/animation-motion/animated-align';
  static const String animatedBuilder =
      '/widgets-catalog/animation-motion/animated-builder';
  static const String animatedContainer =
      '/widgets-catalog/animation-motion/animated-container';
  static const String animatedCrossFade =
      '/widgets-catalog/animation-motion/animated-default-cross-fade';
  static const String animatedDefaultTextStyle =
      '/widgets-catalog/animation-motion/animated-default-text-style';
  static const String animatedListState =
      '/widgets-catalog/animation-motion/animated-list-state';
  static const String animatedModalBarrier =
      '/widgets-catalog/animation-motion/animated-modal-barrier';
  static const String animatedOpacity =
      '/widgets-catalog/animation-motion/animated-opacity';
  static const String animatedPhysicalModel =
      '/widgets-catalog/animation-motion/animated-physical-model';
  static const String animatedPositioned =
      '/widgets-catalog/animation-motion/animated-positioned';
  static const String animatedSize =
      '/widgets-catalog/animation-motion/animated-size';
  static const String animatedWidget =
      '/widgets-catalog/animation-motion/animated-widget';
  static const String animatedWidgetBaseState =
      '/widgets-catalog/animation-motion/animated-widget-base-state';
  static const String decoratedBoxTransition =
      '/widgets-catalog/animation-motion/decorated-box-transition';
  static const String fadeTransition =
      '/widgets-catalog/animation-motion/fade-transition';
  static const String hero = '/widgets-catalog/animation-motion/hero';
  static const String positionedTransition =
      '/widgets-catalog/animation-motion/positioned-transition';
  static const String rotationTransition =
      '/widgets-catalog/animation-motion/rotation-transition';
  static const String scaleTransition =
      '/widgets-catalog/animation-motion/scale-transition';
  static const String sizeTransition =
      '/widgets-catalog/animation-motion/size-transition';
  static const String slideTransition =
      '/widgets-catalog/animation-motion/slide-transition';

  // widget catalog assets, icons and images widgets
  static const String assetBundle = '/widgets-catalog/assets/asset-bundle';
  static const String icon = '/widgets-catalog/assets/icon';
  static const String image = '/widgets-catalog/assets/image';
  static const String rawImage = '/widgets-catalog/assets/raw-image';

  // widget catalog async widgets
  static const String futureBuilder = '/widgets-catalog/async/future-builder';
  static const String streamBuilder = '/widgets-catalog/async/stream-builder';

  // widget catalog cupertino widgets
  static const String cupertinoActionSheet =
      '/widgets-catalog/cupertino/cupertino-action-sheet';
  static const String cupertinoActivityIndicator =
      '/widgets-catalog/cupertino/cupertino-activity-indicator';
  static const String cupertinoAlertDialog =
      '/widgets-catalog/cupertino/cupertino-alert-dialog';
  static const String cupertinoButton =
      '/widgets-catalog/cupertino/cupertino-button';
  static const String cupertinoContextMenu =
      '/widgets-catalog/cupertino/cupertino-context-menu';
  static const String cupertinoDatePicker =
      '/widgets-catalog/cupertino/cupertino-date-picker';
  static const String cupertinoDialog =
      '/widgets-catalog/cupertino/cupertino-dialog';
  static const String cupertinoDialogAction =
      '/widgets-catalog/cupertino/cupertino-dialog-action';
  static const String cupertinoFullScreenDialogTransition =
      '/widgets-catalog/cupertino/cupertino-full-screen-dialog-transition';
  static const String cupertinoNavigationBar =
      '/widgets-catalog/cupertino/cupertino-navigation-bar';
  static const String cupertinoScaffold =
      '/widgets-catalog/cupertino/cupertino-scaffold';
  static const String cupertinoPageTransition =
      '/widgets-catalog/cupertino/cupertino-page-transition';
  static const String cupertinoPicker =
      '/widgets-catalog/cupertino/cupertino-picker';
  static const String cupertinoPopupSurface =
      '/widgets-catalog/cupertino/cupertino-popup-surface';
  static const String cupertinoScrollbar =
      '/widgets-catalog/cupertino/cupertino-scrollbar';
  static const String cupertinoSearchField =
      '/widgets-catalog/cupertino/cupertino-search-field';
  static const String cupertinoSegmentedControl =
      '/widgets-catalog/cupertino/cupertino-segmented-control';
  static const String cupertinoSlider =
      '/widgets-catalog/cupertino/cupertino-slider';
  static const String cupertinoSlidingSegmentedControl =
      '/widgets-catalog/cupertino/cupertino-sliding-segmented-control';
  static const String cupertinoSliverNavigationBar =
      '/widgets-catalog/cupertino/cupertino-sliver-navigation-bar';
  static const String cupertinoSwitch =
      '/widgets-catalog/cupertino/cupertino-switch';
  static const String cupertinoTabBar =
      '/widgets-catalog/cupertino/cupertino-tab-bar';
  static const String cupertinoTabScaffold =
      '/widgets-catalog/cupertino/cupertino-tab-scaffold';
  static const String cupertinoTabView =
      '/widgets-catalog/cupertino/cupertino-tab-view';
  static const String cupertinoTextField =
      '/widgets-catalog/cupertino/cupertino-text-field';
  static const String cupertinoTimePicker =
      '/widgets-catalog/cupertino/cupertino-time-picker';

  // widget catalog input widgets
  static const String autocomplete = '/widgets-catalog/input/autocomplete';
  static const String form = '/widgets-catalog/input/form';
  static const String formField = '/widgets-catalog/input/form-field';
  static const String rawKeyboardListener =
      '/widgets-catalog/input/raw-keyboard-listener';

  // widget catalog interactive widgets
  static const String absorbPointer = '/widgets-catalog/interactive';
  static const String dismissible = '/widgets-catalog/interactive';
  static const String dragTarget = '/widgets-catalog/interactive';
  static const String draggable = '/widgets-catalog/interactive';
  static const String draggableScrollableSheet = '/widgets-catalog/interactive';
  static const String gestureDetector = '/widgets-catalog/interactive';
  static const String ignorePointer = '/widgets-catalog/interactive';
  static const String interactiveViewer = '/widgets-catalog/interactive';
  static const String longPressDraggable = '/widgets-catalog/interactive';
  static const String scrollable = '/widgets-catalog/interactive';
  static const String heroInteractive = '/widgets-catalog/interactive/hero';
  static const String navigator = '/widgets-catalog/interactive/navigator';

  // widget catalog layout widgets
  static const String align = '/widgets-catalog/layout/align';
  static const String aspectRatio = '/widgets-catalog/layout/aspect-ration';
  static const String baseline = '/widgets-catalog/layout/baseline';
  static const String center = '/widgets-catalog/layout/center';
  static const String constrainedBox =
      '/widgets-catalog/layout/constrained-box';
  static const String container = '/widgets-catalog/layout/container';
  static const String customSingleChildLayout =
      '/widgets-catalog/layout/custom-single-child-layout';
  static const String expanded = '/widgets-catalog/layout/expanded';
  static const String fittedBox = '/widgets-catalog/layout/fitted-box';
  static const String fractionallySizedBox =
      '/widgets-catalog/layout/fractionally-sized-box';
  static const String intrinsicHeight =
      '/widgets-catalog/layout/intrinsic-height';
  static const String intrinsicWidth =
      '/widgets-catalog/layout/intrinsic-width';
  static const String limitedBox = '/widgets-catalog/layout/limited-box';
  static const String offStage = '/widgets-catalog/layout/off-stage';
  static const String overflowBox = '/widgets-catalog/layout/overflow-box';
  static const String padding = '/widgets-catalog/layout/padding';
  static const String sizedBox = '/widgets-catalog/layout/sized-box';
  static const String sizedOverflowBox =
      '/widgets-catalog/layout/sized-overflow-box';
  static const String transform = '/widgets-catalog/layout/transform';
  static const String column = '/widgets-catalog/layout/column';
  static const String customMultiChildLayout =
      '/widgets-catalog/layout/custom-multi-child-layout';
  static const String flow = '/widgets-catalog/layout/flow';
  static const String gridView = '/widgets-catalog/layout/grid-view';
  static const String indexedStack = '/widgets-catalog/layout/indexed-stack';
  static const String layoutBuilder = '/widgets-catalog/layout/layout-builder';
  static const String listBody = '/widgets-catalog/layout/list-body';
  static const String listView = '/widgets-catalog/layout/list-view';
  static const String row = '/widgets-catalog/layout/row';
  static const String stack = '/widgets-catalog/layout/stack';
  static const String table = '/widgets-catalog/layout/table';
  static const String wrap = '/widgets-catalog/layout/wrap';
  static const String cupertinoSliverNavigationLayoutBar =
      '/widgets-catalog/layout/cupertino-sliver-navigation-bar';
  static const String customScrollView =
      '/widgets-catalog/layout/custom-scroll-view';
  static const String sliverAppBar = '/widgets-catalog/layout/sliver-app-bar';
  static const String sliverChildBuilderDelegate =
      '/widgets-catalog/layout/sliver-child-builder-delegate';
  static const String sliverChildListDelegate =
      '/widgets-catalog/layout/sliver-child-list-delegate';
  static const String sliverFixedExtentList =
      '/widgets-catalog/layout/sliver-fixed-extent-list';
  static const String sliverGrid = '/widgets-catalog/layout/sliver-grid';
  static const String sliverList = '/widgets-catalog/layout/sliver-list';
  static const String sliverPadding = '/widgets-catalog/layout/sliver-padding';
  static const String sliverPersistentHeader =
      '/widgets-catalog/layout/sliver-persistent-header';
  static const String sliverToBoxAdaptor =
      '/widgets-catalog/layout/sliver-to-box-adaptor';

  // widget catalog material widgets
  static const String appBar = '/widgets-catalog/material/app-bar';
  static const String bottomNavigationBar =
      '/widgets-catalog/material/bottom-navigation-bar';
  static const String drawer = '/widgets-catalog/material/drawer';
  static const String materialApp = '/widgets-catalog/material/material-app';
  static const String scaffold = '/widgets-catalog/material/scaffold';
  static const String sliverAppBarMaterial =
      '/widgets-catalog/material/sliver-app-bar';
  static const String tabBar = '/widgets-catalog/material/tab-bar';
  static const String tabBarView = '/widgets-catalog/material/tab-bar-view';
  static const String tabController =
      '/widgets-catalog/material/tab-controller';
  static const String tabPageSelector =
      '/widgets-catalog/material/tab-page-selector';
  static const String widgetsApp = '/widgets-catalog/material/widgets-app';
  static const String dropdownButton =
      '/widgets-catalog/material/dropdown-button';
  static const String elevatedButton =
      '/widgets-catalog/material/elevated-button';
  static const String floatingActionButton =
      '/widgets-catalog/material/floating-action-button';
  static const String iconButton = '/widgets-catalog/material/icon-button';
  static const String outlineButton =
      '/widgets-catalog/material/outline-button';
  static const String popupMenuButton =
      '/widgets-catalog/material/popup-menu-button';
  static const String textButton = '/widgets-catalog/material/text-button';
  static const String checkBox = '/widgets-catalog/material/check-box';
  static const String showDatePicker =
      '/widgets-catalog/material/show-date-picker';
  static const String radio = '/widgets-catalog/material/radio';
  static const String slider = '/widgets-catalog/material/slider';
  static const String switchMaterial =
      '/widgets-catalog/material/switch-material';
  static const String textField = '/widgets-catalog/material/text-field';
  static const String alertDialog = '/widgets-catalog/material/alert-dialog';
  static const String bottomSheet = '/widgets-catalog/material/bottom-sheet';
  static const String expansionPanel =
      '/widgets-catalog/material/expansion-panel';
  static const String simpleDialog = '/widgets-catalog/material/simple-dialog';
  static const String snackBar = '/widgets-catalog/material/snack-bar';
  static const String card = '/widgets-catalog/material/card';
  static const String chip = '/widgets-catalog/material/chip';
  static const String circularProgressIndicator =
      '/widgets-catalog/material/circular-progress-indicator';
  static const String dataTable = '/widgets-catalog/material/data-table';
  static const String gridViewMaterial = '/widgets-catalog/material/grid-view';
  static const String iconMaterial = '/widgets-catalog/material/icon-material';
  static const String imageMaterial = '/widgets-catalog/material/image';
  static const String linearProgressIndicator =
      '/widgets-catalog/material/linear-progress-indicator';
  static const String tooltip = '/widgets-catalog/material/tooltip';
  static const String divider = '/widgets-catalog/material/divider';
  static const String listTile = '/widgets-catalog/material/list-tile';
  static const String stepper = '/widgets-catalog/material/stepper';

  // widget catalog painting and effects widgets
  static const String backDropFilter =
      '/widgets-catalog/painting-effects/back-drop-filter';
  static const String clipOval = '/widgets-catalog/painting-effects/clip-oval';
  static const String clipPath = '/widgets-catalog/painting-effects/clip-path';
  static const String clipRect = '/widgets-catalog/painting-effects/clip-rect';
  static const String customPaint =
      '/widgets-catalog/painting-effects/custom-paint';
  static const String decoratedBox =
      '/widgets-catalog/painting-effects/decorated-box';
  static const String fractionalTranslation =
      '/widgets-catalog/painting-effects/fractional-translation';
  static const String opacity = '/widgets-catalog/painting-effects/opacity';
  static const String rotatedBox =
      '/widgets-catalog/painting-effects/rotated-box';
  static const String transformPaintingEffects =
      '/widgets-catalog/painting-effects/transform';

  // widget catalog scrolling widgets
  static const String customScrollViewScrolling =
      '/widgets-catalog/scrolling/custom-scroll-view';
  static const String draggableScrollableSheetScrolling =
      '/widgets-catalog/scrolling/draggable-scrollable-sheet';
  static const String gridViewScrolling =
      '/widgets-catalog/scrolling/grid-view';
  static const String listViewScrolling =
      '/widgets-catalog/scrolling/list-view';
  static const String nestedScrollView =
      '/widgets-catalog/scrolling/nested-scroll-view';
  static const String notificationListener =
      '/widgets-catalog/scrolling/notification-listener';
  static const String pageView = '/widgets-catalog/scrolling/page-view';
  static const String refreshIndicator =
      '/widgets-catalog/scrolling/refresh-indicator';
  static const String reorderableListView =
      '/widgets-catalog/scrolling/reorderable-list-view';
  static const String scrollConfiguration =
      '/widgets-catalog/scrolling/scroll-configuration';
  static const String scrollableScrolling =
      '/widgets-catalog/scrolling/scrollable';
  static const String scrollbar = '/widgets-catalog/scrolling/scrollbar';
  static const String singleChildScrollView =
      '/widgets-catalog/scrolling/single-child-scroll-view';

  // widget catalog styling widgets
  static const String mediaQuery = '/widgets-catalog/styling/media-query';
  static const String paddingStyling = '/widgets-catalog/styling/padding';
  static const String theme = '/widgets-catalog/styling/theme';

  // widget catalog text widgets
  static const String defaultTextStyle =
      '/widgets-catalog/text/default-text-style';
  static const String richText = '/widgets-catalog/text/rich-text';
  static const String text = '/widgets-catalog/text/text';

  // ui manipulation nested paths
  static const String dimensionsConstraints =
      '/ui-manipulation/dimensions-constraints';
  static const String spacing = '/ui-manipulation/spacing';
  static const String colorsBackgrounds = '/ui-manipulation/colorsBackgrounds';
  static const String alignment = '/ui-manipulation/alignment';
  static const String positioning = '/ui-manipulation/positioning';
  static const String visibility = '/ui-manipulation/visibility';
  static const String textUiManipulation = '/ui-manipulation/text';
  static const String borders = '/ui-manipulation/borders';
  static const String effects = '/ui-manipulation/effects';
}

class MyRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final arguments = settings.arguments as Map<String, String>;

    switch (settings.name) {
      case RoutePaths.home:
        return MaterialPageRoute(builder: (_) => HomeView());
      case RoutePaths.dartFundamentals:
        return MaterialPageRoute(
          builder: (_) => DartFundamentalsView(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.flutterFundamentals:
        return MaterialPageRoute(
          builder: (_) => FlutterFundamentalsView(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.uiManipulation:
        return MaterialPageRoute(
          builder: (_) => UiManipulationView(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.widgetsCatalog:
        return MaterialPageRoute(
          builder: (_) => WidgetCatalogView(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.navigation:
        return MaterialPageRoute(
          builder: (_) => NavigationView(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.stateManagement:
        return MaterialPageRoute(builder: (_) => StateManagementView());
      case RoutePaths.nativeDeviceFeatures:
        return MaterialPageRoute(
          builder: (_) => NativeDeviceFeaturesView(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.architecture:
        return MaterialPageRoute(
          builder: (_) => ArchitectureView(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.bestPractices:
        return MaterialPageRoute(
          builder: (_) => BestPracticesView(
            appBarTitle: arguments['appBarTitle'],
          ),
        );

      // widget catalog category widgets
      case RoutePaths.accessibilityWidgets:
        return MaterialPageRoute(
          builder: (_) => AccessibilityWidgetsView(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.animationMotionWidgets:
        return MaterialPageRoute(
          builder: (_) => AnimationWidgetsView(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.assetWidgets:
        return MaterialPageRoute(
          builder: (_) => AssetWidgetsView(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.asyncWidgets:
        return MaterialPageRoute(
          builder: (_) => AsyncWidgetsView(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.cupertinoWidgets:
        return MaterialPageRoute(
          builder: (_) => CupertinoWidgetsView(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.inputWidgets:
        return MaterialPageRoute(
          builder: (_) => InputWidgetsView(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.interactiveWidgets:
        return MaterialPageRoute(
          builder: (_) => InteractiveWidgetsView(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.layoutWidgets:
        return MaterialPageRoute(
          builder: (_) => LayoutWidgetsView(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.materialWidgets:
        return MaterialPageRoute(
          builder: (_) => MaterialWidgetsView(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.paintingEffectWidgets:
        return MaterialPageRoute(
          builder: (_) => PaintingEffectsWidgetsView(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.scrollingWidgets:
        return MaterialPageRoute(
          builder: (_) => ScrollingWidgetsView(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.stylingWidgets:
        return MaterialPageRoute(
          builder: (_) => StylingWidgetsView(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.textWidgets:
        return MaterialPageRoute(
          builder: (_) => TextWidgetsView(
            appBarTitle: arguments['appBarTitle'],
          ),
        );

      // widget catalog accessibility widgets
      case RoutePaths.excludeSemanticsWidget:
        return MaterialPageRoute(
          builder: (_) => ExcludeSemanticsWidget(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.mergeSemanticsWidget:
        return MaterialPageRoute(
          builder: (_) => MergeSemanticsWidget(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.semanticsWidget:
        return MaterialPageRoute(
          builder: (_) => SemanticsWidget(
            appBarTitle: arguments['appBarTitle'],
          ),
        );

      // widget catalog animations and motion widgets
      case RoutePaths.animatedAlign:
        return MaterialPageRoute(
          builder: (_) => AnimatedAlignWidget(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.animatedBuilder:
        return MaterialPageRoute(
          builder: (_) => AnimatedBuilderWidget(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.animatedContainer:
        return MaterialPageRoute(
          builder: (_) => AnimatedContainerWidget(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.animatedCrossFade:
        return MaterialPageRoute(
          builder: (_) => AnimatedCrossFadeWidget(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.animatedDefaultTextStyle:
        return MaterialPageRoute(
          builder: (_) => AnimatedDefaultTextStyleWidget(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.animatedListState:
        return MaterialPageRoute(
          builder: (_) => AnimatedListStateWidget(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.animatedModalBarrier:
        return MaterialPageRoute(
          builder: (_) => AnimatedModalBarrierWidget(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.animatedOpacity:
        return MaterialPageRoute(
          builder: (_) => AnimatedOpacityWidget(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.animatedPhysicalModel:
        return MaterialPageRoute(
          builder: (_) => AnimatedPhysicalModelWidget(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.animatedPositioned:
        return MaterialPageRoute(
          builder: (_) => AnimatedPositionedWidget(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.animatedSize:
        return MaterialPageRoute(
          builder: (_) => AnimatedSizeWidget(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.animatedWidget:
        return MaterialPageRoute(
          builder: (_) => AnimatedWidgetWidget(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.animatedWidgetBaseState:
        return MaterialPageRoute(
          builder: (_) => AnimatedWidgetBaseStateWidget(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.decoratedBoxTransition:
        return MaterialPageRoute(
          builder: (_) => DecoratedBoxTransitionWidget(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.fadeTransition:
        return MaterialPageRoute(
          builder: (_) => FadeTransitionWidget(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.hero:
        return MaterialPageRoute(
          builder: (_) => HeroWidget(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.positionedTransition:
        return MaterialPageRoute(
          builder: (_) => PositionedTransitionWidget(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.rotationTransition:
        return MaterialPageRoute(
          builder: (_) => RotationTransitionWidget(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.scaleTransition:
        return MaterialPageRoute(
          builder: (_) => ScaleTransitionWidget(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.sizeTransition:
        return MaterialPageRoute(
          builder: (_) => SizeTransitionWidget(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.slideTransition:
        return MaterialPageRoute(
          builder: (_) => SlideTransitionWidget(
            appBarTitle: arguments['appBarTitle'],
          ),
        );

      // widget catalog assets, icons and images widgets
      case RoutePaths.assetBundle:
        return MaterialPageRoute(
          builder: (_) => AssetBundleWidget(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.icon:
        return MaterialPageRoute(
          builder: (_) => IconWidget(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.image:
        return MaterialPageRoute(
          builder: (_) => ImageWidget(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.rawImage:
        return MaterialPageRoute(
          builder: (_) => RawImageWidget(
            appBarTitle: arguments['appBarTitle'],
          ),
        );

      // widget catalog async widgets
      case RoutePaths.futureBuilder:
        return MaterialPageRoute(
          builder: (_) => FutureBuilderWidget(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.streamBuilder:
        return MaterialPageRoute(
          builder: (_) => StreamBuilderWidget(
            appBarTitle: arguments['appBarTitle'],
          ),
        );

      // widget catalog cupertino widgets
      case RoutePaths.cupertinoActionSheet:
        return MaterialPageRoute(
          builder: (_) => CupertinoActionSheetWidget(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.cupertinoActivityIndicator:
        return MaterialPageRoute(
          builder: (_) => CupertinoActivityIndicatorWidget(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.cupertinoAlertDialog:
        return MaterialPageRoute(
          builder: (_) => CupertinoAlertDialogWidget(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.cupertinoButton:
        return MaterialPageRoute(
          builder: (_) => CupertinoButtonWidget(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.cupertinoContextMenu:
        return MaterialPageRoute(
          builder: (_) => CupertinoContextMenuWidget(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.cupertinoDatePicker:
        return MaterialPageRoute(
          builder: (_) => CupertinoDatePickerWidget(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.cupertinoDialog:
        return MaterialPageRoute(
          builder: (_) => CupertinoDialogWidget(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.cupertinoDialogAction:
        return MaterialPageRoute(
          builder: (_) => CupertinoDialogActionWidget(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.cupertinoFullScreenDialogTransition:
        return MaterialPageRoute(
          builder: (_) => CupertinoDialogFullScreenDialogTransitionWidget(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.cupertinoNavigationBar:
        return MaterialPageRoute(
          builder: (_) => CupertinoNavigationBarWidget(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.cupertinoScaffold:
        return MaterialPageRoute(
          builder: (_) => CupertinoScaffoldWidget(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.cupertinoPageTransition:
        return MaterialPageRoute(
          builder: (_) => CupertinoPageTransitionWidget(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.cupertinoPicker:
        return MaterialPageRoute(
          builder: (_) => CupertinoPickerWidget(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.cupertinoPopupSurface:
        return MaterialPageRoute(
          builder: (_) => CupertinoPopupSurfaceWidget(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.cupertinoScrollbar:
        return MaterialPageRoute(
          builder: (_) => CupertinoScrollbarWidget(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.cupertinoSearchField:
        return MaterialPageRoute(
          builder: (_) => CupertinoSearchFieldWidget(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.cupertinoSegmentedControl:
        return MaterialPageRoute(
          builder: (_) => CupertinoSegmentedControlWidget(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.cupertinoSlider:
        return MaterialPageRoute(
          builder: (_) => CupertinoSliderWidget(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.cupertinoSlidingSegmentedControl:
        return MaterialPageRoute(
          builder: (_) => CupertinoSlidingSegmentedControlWidget(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.cupertinoSliverNavigationBar:
        return MaterialPageRoute(
          builder: (_) => CupertinoSliverNavigationBarWidget(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.cupertinoNavigationBar:
        return MaterialPageRoute(
          builder: (_) => CupertinoNavigationBarWidget(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.cupertinoSwitch:
        return MaterialPageRoute(
          builder: (_) => CupertinoSwitchWidget(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.cupertinoTabBar:
        return MaterialPageRoute(
          builder: (_) => CupertinoTabBarWidget(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.cupertinoTabScaffold:
        return MaterialPageRoute(
          builder: (_) => CupertinoTabScaffoldWidget(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.cupertinoTabView:
        return MaterialPageRoute(
          builder: (_) => CupertinoTabViewWidget(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.cupertinoTextField:
        return MaterialPageRoute(
          builder: (_) => CupertinoTextFieldWidget(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.cupertinoTimePicker:
        return MaterialPageRoute(
          builder: (_) => CupertinoTimePickerWidget(
            appBarTitle: arguments['appBarTitle'],
          ),
        );

      // widget catalog input widgets
      case RoutePaths.autocomplete:
        return MaterialPageRoute(
          builder: (_) => AutoCompleteWidget(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.form:
        return MaterialPageRoute(
          builder: (_) => FormWidget(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.formField:
        return MaterialPageRoute(
          builder: (_) => FormFieldWidget(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.rawKeyboardListener:
        return MaterialPageRoute(
          builder: (_) => RawKeyboardListenerWidget(
            appBarTitle: arguments['appBarTitle'],
          ),
        );

      // widget catalog interactive widgets
      case RoutePaths.absorbPointer:
        return MaterialPageRoute(
          builder: (_) => AbsorbPointerWidget(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.dismissible:
        return MaterialPageRoute(
          builder: (_) => DismissibleWidget(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.dragTarget:
        return MaterialPageRoute(
          builder: (_) => DragTargetWidget(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.draggable:
        return MaterialPageRoute(
          builder: (_) => DraggableWidget(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.draggableScrollableSheet:
        return MaterialPageRoute(
          builder: (_) => DraggableScrollableSheetWidget(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.gestureDetector:
        return MaterialPageRoute(
          builder: (_) => GestureDetectorWidget(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.ignorePointer:
        return MaterialPageRoute(
          builder: (_) => IgnorePointerWidget(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.interactiveViewer:
        return MaterialPageRoute(
          builder: (_) => InteractiveViewerWidget(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.longPressDraggable:
        return MaterialPageRoute(
          builder: (_) => LongPressDraggableWidget(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.scrollable:
        return MaterialPageRoute(
          builder: (_) => ScrollableWidget(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.heroInteractive:
        return MaterialPageRoute(
          builder: (_) => HeroInteractiveWidget(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.navigator:
        return MaterialPageRoute(
          builder: (_) => NavigatorWidget(
            appBarTitle: arguments['appBarTitle'],
          ),
        );

      // widget catalog layout widgets
      case RoutePaths.align:
        return MaterialPageRoute(
          builder: (_) => AlignWidget(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.aspectRatio:
        return MaterialPageRoute(
          builder: (_) => AspectRatioWidget(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.baseline:
        return MaterialPageRoute(
          builder: (_) => BaselineWidget(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.center:
        return MaterialPageRoute(
          builder: (_) => CenterWidget(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.constrainedBox:
        return MaterialPageRoute(
          builder: (_) => ConstrainedBoxWidget(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.container:
        return MaterialPageRoute(
          builder: (_) => ContainerWidget(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.customSingleChildLayout:
        return MaterialPageRoute(
          builder: (_) => CustomSingleChildLayoutWidget(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.expanded:
        return MaterialPageRoute(
          builder: (_) => ExpandedWidget(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.fittedBox:
        return MaterialPageRoute(
          builder: (_) => FittedBoxWidget(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.fractionallySizedBox:
        return MaterialPageRoute(
          builder: (_) => FractionallySizedBoxWidget(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.intrinsicHeight:
        return MaterialPageRoute(
          builder: (_) => IntrinsicHeightWidget(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.intrinsicWidth:
        return MaterialPageRoute(
          builder: (_) => IntrinsicWidthWidget(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.limitedBox:
        return MaterialPageRoute(
          builder: (_) => LimitedBoxWidget(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.offStage:
        return MaterialPageRoute(
          builder: (_) => OffStageWidget(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.overflowBox:
        return MaterialPageRoute(
          builder: (_) => OverFlowBoxWidget(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.padding:
        return MaterialPageRoute(
          builder: (_) => PaddingWidget(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.sizedBox:
        return MaterialPageRoute(
          builder: (_) => SizedBoxWidget(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.sizedOverflowBox:
        return MaterialPageRoute(
          builder: (_) => SizedOverflowBoxWidget(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.transform:
        return MaterialPageRoute(
          builder: (_) => TransformWidget(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.column:
        return MaterialPageRoute(
          builder: (_) => ColumnWidget(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.customMultiChildLayout:
        return MaterialPageRoute(
          builder: (_) => CustomMultiChildLayoutWidget(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.flow:
        return MaterialPageRoute(
          builder: (_) => FlowWidget(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.gridView:
        return MaterialPageRoute(
          builder: (_) => GridViewWidget(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.indexedStack:
        return MaterialPageRoute(
          builder: (_) => IndexedStackWidget(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.layoutBuilder:
        return MaterialPageRoute(
          builder: (_) => LayoutBuilderWidget(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.listBody:
        return MaterialPageRoute(
          builder: (_) => ListBodyWidget(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.listView:
        return MaterialPageRoute(
          builder: (_) => ListViewWidget(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.row:
        return MaterialPageRoute(
          builder: (_) => RowWidget(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.stack:
        return MaterialPageRoute(
          builder: (_) => StackWidget(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.table:
        return MaterialPageRoute(
          builder: (_) => TableWidget(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.wrap:
        return MaterialPageRoute(
          builder: (_) => WrapWidget(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.cupertinoSliverNavigationBar:
        return MaterialPageRoute(
          builder: (_) => CupertinoSliverNavigationBarLayoutWidget(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.customScrollView:
        return MaterialPageRoute(
          builder: (_) => CustomScrollViewWidget(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.sliverAppBar:
        return MaterialPageRoute(
          builder: (_) => SliverAppBarWidget(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.sliverChildBuilderDelegate:
        return MaterialPageRoute(
          builder: (_) => SliverChildBuilderDelegateWidget(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.sliverChildListDelegate:
        return MaterialPageRoute(
          builder: (_) => SliverChildListDelegateWidget(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.sliverFixedExtentList:
        return MaterialPageRoute(
          builder: (_) => SliverFixedExtentListWidget(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.sliverGrid:
        return MaterialPageRoute(
          builder: (_) => SliverGridWidget(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.sliverList:
        return MaterialPageRoute(
          builder: (_) => SliverListWidget(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.sliverPadding:
        return MaterialPageRoute(
          builder: (_) => SliverPaddingWidget(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.sliverPersistentHeader:
        return MaterialPageRoute(
          builder: (_) => SliverPersistentHeaderWidget(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.sliverToBoxAdaptor:
        return MaterialPageRoute(
          builder: (_) => SliverToBoxAdaptorWidget(
            appBarTitle: arguments['appBarTitle'],
          ),
        );

      // widget catalog material widgets
      case RoutePaths.appBar:
        return MaterialPageRoute(
          builder: (_) => AppBarWidget(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.bottomNavigationBar:
        return MaterialPageRoute(
          builder: (_) => BottomNavigationBarWidget(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.drawer:
        return MaterialPageRoute(
          builder: (_) => DrawerWidget(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.materialApp:
        return MaterialPageRoute(
          builder: (_) => MaterialAppWidget(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.scaffold:
        return MaterialPageRoute(
          builder: (_) => ScaffoldWidget(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.sliverAppBar:
        return MaterialPageRoute(
          builder: (_) => SliverAppBarMaterialWidget(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.tabBar:
        return MaterialPageRoute(
          builder: (_) => TabBarWidget(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.tabBarView:
        return MaterialPageRoute(
          builder: (_) => TabBarViewWidget(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.tabController:
        return MaterialPageRoute(
          builder: (_) => TabControllerWidget(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.tabPageSelector:
        return MaterialPageRoute(
          builder: (_) => TabPageSelectorWidget(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.widgetsApp:
        return MaterialPageRoute(
          builder: (_) => WidgetsAppWidget(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.dropdownButton:
        return MaterialPageRoute(
          builder: (_) => DropdownButtonWidget(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.elevatedButton:
        return MaterialPageRoute(
          builder: (_) => ElevatedButtonWidget(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.floatingActionButton:
        return MaterialPageRoute(
          builder: (_) => FloatingActionButtonWidget(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.iconButton:
        return MaterialPageRoute(
          builder: (_) => IconButtonWidget(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.outlineButton:
        return MaterialPageRoute(
          builder: (_) => OutlinedButtonWidget(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.popupMenuButton:
        return MaterialPageRoute(
          builder: (_) => PopupMenuButtonWidget(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.textButton:
        return MaterialPageRoute(
          builder: (_) => TextButtonWidget(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.checkBox:
        return MaterialPageRoute(
          builder: (_) => CheckboxWidget(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.showDatePicker:
        return MaterialPageRoute(
          builder: (_) => ShowDatePickerWidget(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.radio:
        return MaterialPageRoute(
          builder: (_) => RadioWidget(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.slider:
        return MaterialPageRoute(
          builder: (_) => SliderWidget(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.switchMaterial:
        return MaterialPageRoute(
          builder: (_) => SwitchWidget(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.textField:
        return MaterialPageRoute(
          builder: (_) => TextFieldWidget(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.alertDialog:
        return MaterialPageRoute(
          builder: (_) => AlertDialogWidget(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.bottomSheet:
        return MaterialPageRoute(
          builder: (_) => BottomSheetWidget(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.expansionPanel:
        return MaterialPageRoute(
          builder: (_) => ExpansionPanelWidget(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.simpleDialog:
        return MaterialPageRoute(
          builder: (_) => SimpleDialogWidget(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.snackBar:
        return MaterialPageRoute(
          builder: (_) => SnackBarWidget(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.card:
        return MaterialPageRoute(
          builder: (_) => CardWidget(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.chip:
        return MaterialPageRoute(
          builder: (_) => ChipWidget(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.circularProgressIndicator:
        return MaterialPageRoute(
          builder: (_) => CircularProgressIndicatorWidget(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.dataTable:
        return MaterialPageRoute(
          builder: (_) => DataTableWidget(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.gridViewMaterial:
        return MaterialPageRoute(
          builder: (_) => GridViewWidget(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.iconMaterial:
        return MaterialPageRoute(
          builder: (_) => IconMaterialWidget(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.imageMaterial:
        return MaterialPageRoute(
          builder: (_) => ImageMaterialWidget(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.linearProgressIndicator:
        return MaterialPageRoute(
          builder: (_) => LinearProgressIndicatorWidget(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.tooltip:
        return MaterialPageRoute(
          builder: (_) => TooltipWidget(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.divider:
        return MaterialPageRoute(
          builder: (_) => DividerWidget(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.listTile:
        return MaterialPageRoute(
          builder: (_) => ListTileWidget(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.stepper:
        return MaterialPageRoute(
          builder: (_) => StepperWidget(
            appBarTitle: arguments['appBarTitle'],
          ),
        );

      // widget catalog painting and effects widgets
      case RoutePaths.backDropFilter:
        return MaterialPageRoute(
          builder: (_) => BackdropFilterWidget(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.clipOval:
        return MaterialPageRoute(
          builder: (_) => ClipOvalWidget(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.clipPath:
        return MaterialPageRoute(
          builder: (_) => ClipPathWidget(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.clipRect:
        return MaterialPageRoute(
          builder: (_) => ClipRectWidget(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.customPaint:
        return MaterialPageRoute(
          builder: (_) => CustomPaintWidget(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.decoratedBox:
        return MaterialPageRoute(
          builder: (_) => DecoratedBoxWidget(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.fractionalTranslation:
        return MaterialPageRoute(
          builder: (_) => FractionalTranslationWidget(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.opacity:
        return MaterialPageRoute(
          builder: (_) => OpacityWidget(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.rotatedBox:
        return MaterialPageRoute(
          builder: (_) => RotatedBoxWidget(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.transform:
        return MaterialPageRoute(
          builder: (_) => TransformWidget(
            appBarTitle: arguments['appBarTitle'],
          ),
        );

      // widget catalog scrolling widgets
      case RoutePaths.customScrollView:
        return MaterialPageRoute(
          builder: (_) => CustomScrollViewScrollingWidget(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.draggableScrollableSheet:
        return MaterialPageRoute(
          builder: (_) => DraggableScrollableSheetScrollingWidget(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.gridView:
        return MaterialPageRoute(
          builder: (_) => GridViewScrollingWidget(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.listView:
        return MaterialPageRoute(
          builder: (_) => ListViewScrollingWidget(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.nestedScrollView:
        return MaterialPageRoute(
          builder: (_) => NestedScrollViewWidget(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.notificationListener:
        return MaterialPageRoute(
          builder: (_) => NotificationListenerWidget(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.pageView:
        return MaterialPageRoute(
          builder: (_) => PageViewWidget(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.refreshIndicator:
        return MaterialPageRoute(
          builder: (_) => RefreshIndicatorWidget(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.reorderableListView:
        return MaterialPageRoute(
          builder: (_) => ReorderableListViewWidget(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.scrollConfiguration:
        return MaterialPageRoute(
          builder: (_) => ScrollConfigurationWidget(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.scrollable:
        return MaterialPageRoute(
          builder: (_) => ScrollableScrollingWidget(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.scrollbar:
        return MaterialPageRoute(
          builder: (_) => ScrollbarWidget(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.singleChildScrollView:
        return MaterialPageRoute(
          builder: (_) => SingleChildScrollViewWidget(
            appBarTitle: arguments['appBarTitle'],
          ),
        );

      // widget catalog styling widgets
      case RoutePaths.mediaQuery:
        return MaterialPageRoute(
          builder: (_) => MediaQueryWidget(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.paddingStyling:
        return MaterialPageRoute(
          builder: (_) => PaddingStyleWidget(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.theme:
        return MaterialPageRoute(
          builder: (_) => ThemeWidget(
            appBarTitle: arguments['appBarTitle'],
          ),
        );

      // widget catalog text widgets
      case RoutePaths.defaultTextStyle:
        return MaterialPageRoute(
          builder: (_) => DefaultTextStyleWidget(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.richText:
        return MaterialPageRoute(
          builder: (_) => RichTextWidget(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.text:
        return MaterialPageRoute(
          builder: (_) => TextWidget(
            appBarTitle: arguments['appBarTitle'],
          ),
        );

      // ui manipulation nested paths
      case RoutePaths.dimensionsConstraints:
        return MaterialPageRoute(
          builder: (_) =>
              DimesnionsContraintsView(appBarTitle: arguments['appBarTitle']),
        );
      case RoutePaths.spacing:
        return MaterialPageRoute(
          builder: (_) => SpacingView(appBarTitle: arguments['appBarTitle']),
        );
      case RoutePaths.colorsBackgrounds:
        return MaterialPageRoute(
          builder: (_) =>
              ColorsBackgroundsView(appBarTitle: arguments['appBarTitle']),
        );
      case RoutePaths.alignment:
        return MaterialPageRoute(
          builder: (_) => AlignmentView(appBarTitle: arguments['appBarTitle']),
        );
      case RoutePaths.positioning:
        return MaterialPageRoute(
          builder: (_) =>
              PositioningView(appBarTitle: arguments['appBarTitle']),
        );
      case RoutePaths.visibility:
        return MaterialPageRoute(
          builder: (_) => VisibilityView(appBarTitle: arguments['appBarTitle']),
        );
      case RoutePaths.text:
        return MaterialPageRoute(
          builder: (_) => TextView(appBarTitle: arguments['appBarTitle']),
        );
      case RoutePaths.borders:
        return MaterialPageRoute(
          builder: (_) => BordersView(appBarTitle: arguments['appBarTitle']),
        );
      case RoutePaths.effects:
        return MaterialPageRoute(
          builder: (_) => EffectsView(appBarTitle: arguments['appBarTitle']),
        );

      default:
        return MaterialPageRoute(builder: (_) => PageNotFoundView());
    }
  }
}
