import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'ui/views/page_not_found_view.dart';
import 'ui/views/flutter_fundamentals_view.dart';
import 'ui/views/ui_manipulation_view.dart';
import 'ui/views/widget_catalog_views/widget_catalog_view.dart';
import 'ui/views/state_management_view.dart';
import 'ui/views/architecture_view.dart';
import 'ui/views/best_practices_view.dart';
import './ui/views/widget_catalog_views/accessibility_widgets_view.dart';
import './ui/views/widget_catalog_views/animation_widgets_view.dart';
import './ui/views/widget_catalog_views/asset_widgets_view.dart';
import './ui/views/widget_catalog_views/async_widgets_view.dart';
import './ui/views/widget_catalog_views/cupertino_widgets_view.dart';
import './ui/views/widget_catalog_views/input_widgets_view.dart';
import './ui/views/widget_catalog_views/interactive_widgets_view.dart';
import './ui/views/widget_catalog_views/layout_widgets_view.dart';
import './ui/views/widget_catalog_views/material_widgets_view.dart';
import './ui/views/widget_catalog_views/painting_and_effects_widgets_view.dart';
import './ui/views/widget_catalog_views/scrolling_widgets_view.dart';
import './ui/views/widget_catalog_views/styling_widgets_view.dart';
import './ui/views/widget_catalog_views/text_widgets_view.dart';

class RoutePaths {
  static const String home = '/';
  static const String pageNotFound = '/page-not-found';
  static const String uiManipulation = '/ui-manipulation';
  static const String widgetsCatalog = '/widgets-catalog';
  static const String stateManagement = '/state-management';
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
    switch (settings.name) {
      case RoutePaths.home:
        return MaterialPageRoute(builder: (_) => FlutterFundamentalsView());
      case RoutePaths.architecture:
        return MaterialPageRoute(builder: (_) => ArchitectureView());
      case RoutePaths.stateManagement:
        return MaterialPageRoute(builder: (_) => StateManagementView());
      case RoutePaths.uiManipulation:
        return MaterialPageRoute(builder: (_) => UiManipulationView());
      case RoutePaths.widgetsCatalog:
        return MaterialPageRoute(builder: (_) => WidgetCatalogView());
      case RoutePaths.bestPractices:
        return MaterialPageRoute(builder: (_) => BestPracticesView());
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
