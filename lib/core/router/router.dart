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
import './../../ui/views/ui_manipulation/sub_views/alignement_view.dart';
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

  // ui manipulation nested paths
  static const String dimensionsConstraints =
      '/ui-manipulation/dimensions-constraints';
  static const String spacing = '/ui-manipulation/spacing';
  static const String colorsBackgrounds = '/ui-manipulation/colorsBackgrounds';
  static const String alignment = '/ui-manipulation/alignment';
  static const String positioning = '/ui-manipulation/positioning';
  static const String visibility = '/ui-manipulation/visibility';
  static const String text = '/ui-manipulation/text';
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

      // widgetCatalog nested paths
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
