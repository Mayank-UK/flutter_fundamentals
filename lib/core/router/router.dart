import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../ui/views/page_not_found_view.dart';
import '../../ui/views/home_view.dart';
import '../../ui/views/dart_fundamentals_view.dart';
import '../../ui/views/flutter_fundamentals_view.dart';
import '../../ui/views/ui_manipulation_view.dart';
import '../../ui/views/widget_catalog_views/widget_catalog_view.dart';
import '../../ui/views/navigation_view.dart';
import '../../ui/views/state_management/state_management_view.dart';
import '../../ui/views/native_device_features_view.dart';
import '../../ui/views/architecture_view.dart';
import '../../ui/views/best_practices_view.dart';
import '../../ui/views/widget_catalog_views/accessibility_widgets_view.dart';
import '../../ui/views/widget_catalog_views/animation_widgets_view.dart';
import '../../ui/views/widget_catalog_views/asset_widgets_view.dart';
import '../../ui/views/widget_catalog_views/async_widgets_view.dart';
import '../../ui/views/widget_catalog_views/cupertino_widgets_view.dart';
import '../../ui/views/widget_catalog_views/input_widgets_view.dart';
import '../../ui/views/widget_catalog_views/interactive_widgets_view.dart';
import '../../ui/views/widget_catalog_views/layout_widgets_view.dart';
import '../../ui/views/widget_catalog_views/material_widgets_view.dart';
import '../../ui/views/widget_catalog_views/painting_and_effects_widgets_view.dart';
import '../../ui/views/widget_catalog_views/scrolling_widgets_view.dart';
import '../../ui/views/widget_catalog_views/styling_widgets_view.dart';
import '../../ui/views/widget_catalog_views/text_widgets_view.dart';

import './../../ui/widgets/tappable_gridview.dart';

class RoutePaths {
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

  // widgetCatalog nested paths
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
      // widgetCatalog nested paths
      case RoutePaths.accessibilityWidgets:
        return MaterialPageRoute(builder: (_) => AccessibilityWidgetsView());
      case RoutePaths.animationMotionWidgets:
        return MaterialPageRoute(builder: (_) => AnimationWidgetsView());
      case RoutePaths.assetWidgets:
        return MaterialPageRoute(builder: (_) => AssetWidgetsView());
      case RoutePaths.asyncWidgets:
        return MaterialPageRoute(builder: (_) => AsyncWidgetsView());
      case RoutePaths.cupertinoWidgets:
        return MaterialPageRoute(builder: (_) => CupertinoWidgetsView());
      case RoutePaths.inputWidgets:
        return MaterialPageRoute(builder: (_) => InputWidgetsView());
      case RoutePaths.interactiveWidgets:
        return MaterialPageRoute(builder: (_) => InteractiveWidgetsView());
      case RoutePaths.layoutWidgets:
        return MaterialPageRoute(builder: (_) => LayoutWidgetsView());
      case RoutePaths.materialWidgets:
        return MaterialPageRoute(builder: (_) => MaterialWidgetsView());
      case RoutePaths.paintingEffectWidgets:
        return MaterialPageRoute(
            builder: (_) => PaintingAndEffectsWidgetsView());
      case RoutePaths.scrollingWidgets:
        return MaterialPageRoute(builder: (_) => ScrollingWidgetsView());
      case RoutePaths.stylingWidgets:
        return MaterialPageRoute(builder: (_) => StylingWidgetsView());
      case RoutePaths.textWidgets:
        return MaterialPageRoute(builder: (_) => TextWidgetsView());
      default:
        return MaterialPageRoute(builder: (_) => PageNotFoundView());
    }
  }
}
