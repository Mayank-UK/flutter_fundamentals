import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

// home
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

// widget catalog main
import '../../ui/views/widget_catalog/accessibility_widgets/accessibility_widgets_view.dart';
import '../../ui/views/widget_catalog/animation_motion_widgets/animation_widgets_view.dart';
import '../../ui/views/widget_catalog/asset_widgets/asset_widgets_view.dart';
import '../../ui/views/widget_catalog/async_widgets/async_widgets_view.dart';
import '../../ui/views/widget_catalog/cupertino_widgets/cupertino_widgets_view.dart';
import '../../ui/views/widget_catalog/input_widgets/input_widgets_view.dart';
import '../../ui/views/widget_catalog/interactive_widgets/interactive_widgets_view.dart';
import '../../ui/views/widget_catalog/layout_widgets/layout_widgets_view.dart';
import '../../ui/views/widget_catalog/material_widgets/material_widgets_view.dart';
import '../../ui/views/widget_catalog/painting_effects/painting_effects_widgets_view.dart';
import '../../ui/views/widget_catalog/scrolling_widgets/scrolling_widgets_view.dart';
import '../../ui/views/widget_catalog/styling_widgets/styling_widgets_view.dart';
import '../../ui/views/widget_catalog/text_widgets/text_widgets_view.dart';

// widget catalog accessibility
import '../../ui/views/widget_catalog/accessibility_widgets/sub_views/exclude_semantics_widget_view.dart';
import '../../ui/views/widget_catalog/accessibility_widgets/sub_views/merge_semantics_widget_view.dart';
import '../../ui/views/widget_catalog/accessibility_widgets/sub_views/semantics_widget_view.dart';

// widget catalog animation and motion
import '../../ui/views/widget_catalog/animation_motion_widgets/sub_views/animated_align_widget_view.dart';
import '../../ui/views/widget_catalog/animation_motion_widgets/sub_views/animated_builder_widget_view.dart';
import '../../ui/views/widget_catalog/animation_motion_widgets/sub_views/animated_container_widget_view.dart';
import '../../ui/views/widget_catalog/animation_motion_widgets/sub_views/animated_cross_fade_widget_view.dart';
import '../../ui/views/widget_catalog/animation_motion_widgets/sub_views/animated_default_text_style_widget_view.dart';
import '../../ui/views/widget_catalog/animation_motion_widgets/sub_views/animated_list_state_widget_view.dart';
import '../../ui/views/widget_catalog/animation_motion_widgets/sub_views/animated_modal_barrier_widget_view.dart';
import '../../ui/views/widget_catalog/animation_motion_widgets/sub_views/animated_opacity_widget_view.dart';
import '../../ui/views/widget_catalog/animation_motion_widgets/sub_views/animated_physical_model_widget_view.dart';
import '../../ui/views/widget_catalog/animation_motion_widgets/sub_views/animated_positioned_widget_view.dart';
import '../../ui/views/widget_catalog/animation_motion_widgets/sub_views/animated_size_widget_view.dart';
import '../../ui/views/widget_catalog/animation_motion_widgets/sub_views/animated_widget_base_state_widget_view.dart';
import '../../ui/views/widget_catalog/animation_motion_widgets/sub_views/animated_widget_widget_view.dart';
import '../../ui/views/widget_catalog/animation_motion_widgets/sub_views/decorated_box_transition_widget_view.dart';
import '../../ui/views/widget_catalog/animation_motion_widgets/sub_views/fade_transition_widget_view.dart';
import '../../ui/views/widget_catalog/animation_motion_widgets/sub_views/hero_widget_view.dart';
import '../../ui/views/widget_catalog/animation_motion_widgets/sub_views/positioned_transition_widget_view.dart';
import '../../ui/views/widget_catalog/animation_motion_widgets/sub_views/rotation_transition_widget_view.dart';
import '../../ui/views/widget_catalog/animation_motion_widgets/sub_views/scale_transition_widget_view.dart';
import '../../ui/views/widget_catalog/animation_motion_widgets/sub_views/size_transition_widget_view.dart';
import '../../ui/views/widget_catalog/animation_motion_widgets/sub_views/slide_transition_widget_view.dart';

// widget catalog assets
import '../../ui/views/widget_catalog/asset_widgets/sub_views/asset_bundle_widget_view.dart';
import '../../ui/views/widget_catalog/asset_widgets/sub_views/icon_widget_view.dart';
import '../../ui/views/widget_catalog/asset_widgets/sub_views/image_widget_view.dart';
import '../../ui/views/widget_catalog/asset_widgets/sub_views/raw_image_widget_view.dart';

// widget catalog async
import '../../ui/views/widget_catalog/async_widgets/sub_views/future_builder_widget_view.dart';
import '../../ui/views/widget_catalog/async_widgets/sub_views/stream_builder_widget_view.dart';

// widget catalog cupertino
import '../../ui/views/widget_catalog/cupertino_widgets/sub_views/cupertino_action_sheet_widget_view.dart';
import '../../ui/views/widget_catalog/cupertino_widgets/sub_views/cupertino_activity_indicator_widget_view.dart';
import '../../ui/views/widget_catalog/cupertino_widgets/sub_views/cupertino_alert_dialog_widget_view.dart';
import '../../ui/views/widget_catalog/cupertino_widgets/sub_views/cupertino_button_widget_view.dart';
import '../../ui/views/widget_catalog/cupertino_widgets/sub_views/cupertino_context_menu_widget_view.dart';
import '../../ui/views/widget_catalog/cupertino_widgets/sub_views/cupertino_date_picker_widget_view.dart';
import '../../ui/views/widget_catalog/cupertino_widgets/sub_views/cupertino_dialog_action_widget_view.dart';
import '../../ui/views/widget_catalog/cupertino_widgets/sub_views/cupertino_dialog_full_screen_dialog_transition_widget_view.dart';
import '../../ui/views/widget_catalog/cupertino_widgets/sub_views/cupertino_dialog_widget_view.dart';
import '../../ui/views/widget_catalog/cupertino_widgets/sub_views/cupertino_navigation_bar_widget_view.dart';
import '../../ui/views/widget_catalog/cupertino_widgets/sub_views/cupertino_page_transition_widget_view.dart';
import '../../ui/views/widget_catalog/cupertino_widgets/sub_views/cupertino_picker_widget_view.dart';
import '../../ui/views/widget_catalog/cupertino_widgets/sub_views/cupertino_popup_surface_widget_view.dart';
import '../../ui/views/widget_catalog/cupertino_widgets/sub_views/cupertino_scaffold_widget_view.dart';
import '../../ui/views/widget_catalog/cupertino_widgets/sub_views/cupertino_scrollbar_widget_view.dart';
import '../../ui/views/widget_catalog/cupertino_widgets/sub_views/cupertino_search_field_widget_view.dart';
import '../../ui/views/widget_catalog/cupertino_widgets/sub_views/cupertino_segmented_control_widget_view.dart';
import '../../ui/views/widget_catalog/cupertino_widgets/sub_views/cupertino_slider_widget_view.dart';
import '../../ui/views/widget_catalog/cupertino_widgets/sub_views/cupertino_sliding_segmented_control_widget_view.dart';
import '../../ui/views/widget_catalog/cupertino_widgets/sub_views/cupertino_sliver_navigation_bar_widget_view.dart';
import '../../ui/views/widget_catalog/cupertino_widgets/sub_views/cupertino_switch_widget_view.dart';
import '../../ui/views/widget_catalog/cupertino_widgets/sub_views/cupertino_tab_bar_widget_view.dart';
import '../../ui/views/widget_catalog/cupertino_widgets/sub_views/cupertino_tab_scaffold_widget_view.dart';
import '../../ui/views/widget_catalog/cupertino_widgets/sub_views/cupertino_tab_view_widget_view.dart';
import '../../ui/views/widget_catalog/cupertino_widgets/sub_views/cupertino_text_field_widget_view.dart';
import '../../ui/views/widget_catalog/cupertino_widgets/sub_views/cupertino_time_picker_widget_view.dart';

// widget catalog input
import '../../ui/views/widget_catalog/input_widgets/sub_views/auto_complete_widget_view.dart';
import '../../ui/views/widget_catalog/input_widgets/sub_views/form_field_widget_view.dart';
import '../../ui/views/widget_catalog/input_widgets/sub_views/form_widget_view.dart';
import '../../ui/views/widget_catalog/input_widgets/sub_views/raw_keyboard_listener_widget_view.dart';

// widget catalog interactive
import '../../ui/views/widget_catalog/interactive_widgets/sub_views/absorb_pointer_widget_view.dart';
import '../../ui/views/widget_catalog/interactive_widgets/sub_views/dismissible_widget_view.dart';
import '../../ui/views/widget_catalog/interactive_widgets/sub_views/drag_target_widget_view.dart';
import '../../ui/views/widget_catalog/interactive_widgets/sub_views/draggable_scrollable_sheet_widget_view.dart';
import '../../ui/views/widget_catalog/interactive_widgets/sub_views/draggable_widget_view.dart';
import '../../ui/views/widget_catalog/interactive_widgets/sub_views/gesture_detector_widget_view.dart';
import '../../ui/views/widget_catalog/interactive_widgets/sub_views/hero_interactive_widget_view.dart';
import '../../ui/views/widget_catalog/interactive_widgets/sub_views/ignore_pointer_widget_view.dart';
import '../../ui/views/widget_catalog/interactive_widgets/sub_views/interactive_viewer_widget_view.dart';
import '../../ui/views/widget_catalog/interactive_widgets/sub_views/long_press_draggable_widget_view.dart';
import '../../ui/views/widget_catalog/interactive_widgets/sub_views/navigation_widget_view.dart';
import '../../ui/views/widget_catalog/interactive_widgets/sub_views/scrollable_widget_view.dart';

// widget catalog layout
import '../../ui/views/widget_catalog/layout_widgets/sub_views/align_widget_view.dart';
import '../../ui/views/widget_catalog/layout_widgets/sub_views/aspect_ratio_widget_view.dart';
import '../../ui/views/widget_catalog/layout_widgets/sub_views/baseline_widget_view.dart';
import '../../ui/views/widget_catalog/layout_widgets/sub_views/center_widget_view.dart';
import '../../ui/views/widget_catalog/layout_widgets/sub_views/column_widget_view.dart';
import '../../ui/views/widget_catalog/layout_widgets/sub_views/constrained_box_widget_view.dart';
import '../../ui/views/widget_catalog/layout_widgets/sub_views/constrained_widget_view.dart';
import '../../ui/views/widget_catalog/layout_widgets/sub_views/cupertino_sliver_navigation_bar_layout_widget_view.dart';
import '../../ui/views/widget_catalog/layout_widgets/sub_views/custom_multi_child_layout_widget_view.dart';
import '../../ui/views/widget_catalog/layout_widgets/sub_views/custom_scroll_view_widget_view.dart';
import '../../ui/views/widget_catalog/layout_widgets/sub_views/custom_single_child_layout_widget_view.dart';
import '../../ui/views/widget_catalog/layout_widgets/sub_views/expanded_widget_view.dart';
import '../../ui/views/widget_catalog/layout_widgets/sub_views/fitted_box_widget_view.dart';
import '../../ui/views/widget_catalog/layout_widgets/sub_views/flow_widget_view.dart';
import '../../ui/views/widget_catalog/layout_widgets/sub_views/fractionally_sized_box_widget_view.dart';
import '../../ui/views/widget_catalog/layout_widgets/sub_views/grid_view_widget_view.dart';
import '../../ui/views/widget_catalog/layout_widgets/sub_views/indexed_stack_widget_view.dart';
import '../../ui/views/widget_catalog/layout_widgets/sub_views/intrinsic_height_widget_view.dart';
import '../../ui/views/widget_catalog/layout_widgets/sub_views/intrinsic_width_widget_view.dart';
import '../../ui/views/widget_catalog/layout_widgets/sub_views/layout_builder_widget_view.dart';
import '../../ui/views/widget_catalog/layout_widgets/sub_views/limited_box_widget_view.dart';
import '../../ui/views/widget_catalog/layout_widgets/sub_views/list_body_widget_view.dart';
import '../../ui/views/widget_catalog/layout_widgets/sub_views/list_view_widget_view.dart';
import '../../ui/views/widget_catalog/layout_widgets/sub_views/off_stage_widget_view.dart';
import '../../ui/views/widget_catalog/layout_widgets/sub_views/over_flow_box_widget_view.dart';
import '../../ui/views/widget_catalog/layout_widgets/sub_views/padding_widget_view.dart';
import '../../ui/views/widget_catalog/layout_widgets/sub_views/row_widget_view.dart';
import '../../ui/views/widget_catalog/layout_widgets/sub_views/sized_box_widget_view.dart';
import '../../ui/views/widget_catalog/layout_widgets/sub_views/sized_overflow_box_widget_view.dart';
import '../../ui/views/widget_catalog/layout_widgets/sub_views/sliver_app_bar_widget_view.dart';
import '../../ui/views/widget_catalog/layout_widgets/sub_views/sliver_child_builder_delegate_widget_view.dart';
import '../../ui/views/widget_catalog/layout_widgets/sub_views/sliver_child_list_delegate_widget_view.dart';
import '../../ui/views/widget_catalog/layout_widgets/sub_views/sliver_fixed_extent_list_widget_view.dart';
import '../../ui/views/widget_catalog/layout_widgets/sub_views/sliver_grid_widget_view.dart';
import '../../ui/views/widget_catalog/layout_widgets/sub_views/sliver_list_widget_view.dart';
import '../../ui/views/widget_catalog/layout_widgets/sub_views/sliver_padding_widget_view.dart';
import '../../ui/views/widget_catalog/layout_widgets/sub_views/sliver_persistent_header_widget_view.dart';
import '../../ui/views/widget_catalog/layout_widgets/sub_views/sliver_to_box_adaptor_widget_view.dart';
import '../../ui/views/widget_catalog/layout_widgets/sub_views/stack_widget_view.dart';
import '../../ui/views/widget_catalog/layout_widgets/sub_views/table_widget_view.dart';
import '../../ui/views/widget_catalog/layout_widgets/sub_views/transform_widget_view.dart';
import '../../ui/views/widget_catalog/layout_widgets/sub_views/wrap_widget_view.dart';

// widget catalog material
import '../../ui/views/widget_catalog/material_widgets/sub_views/alert_dialog_widget_view.dart';
import '../../ui/views/widget_catalog/material_widgets/sub_views/app_bar_widget_view.dart';
import '../../ui/views/widget_catalog/material_widgets/sub_views/bottom_navigation_bar_widget_view.dart';
import '../../ui/views/widget_catalog/material_widgets/sub_views/bottom_sheet_widget_view.dart';
import '../../ui/views/widget_catalog/material_widgets/sub_views/card_widget_view.dart';
import '../../ui/views/widget_catalog/material_widgets/sub_views/checkbox_widget_view.dart';
import '../../ui/views/widget_catalog/material_widgets/sub_views/chip_widget_view.dart';
import '../../ui/views/widget_catalog/material_widgets/sub_views/circular_progress_indicator_widget_view.dart';
import '../../ui/views/widget_catalog/material_widgets/sub_views/data_table_widget_view.dart';
import '../../ui/views/widget_catalog/material_widgets/sub_views/divider_widget_view.dart';
import '../../ui/views/widget_catalog/material_widgets/sub_views/drawer_widget_view.dart';
import '../../ui/views/widget_catalog/material_widgets/sub_views/dropdown_button_widget_view.dart';
import '../../ui/views/widget_catalog/material_widgets/sub_views/elevated_button_widget_view.dart';
import '../../ui/views/widget_catalog/material_widgets/sub_views/expansion_panel_widget_view.dart';
import '../../ui/views/widget_catalog/material_widgets/sub_views/floating_action_button_widget_view.dart';
import '../../ui/views/widget_catalog/material_widgets/sub_views/grid_view_material_widget_view.dart';
import '../../ui/views/widget_catalog/material_widgets/sub_views/icon_button_widget_view.dart';
import '../../ui/views/widget_catalog/material_widgets/sub_views/icon_material_widget_view.dart';
import '../../ui/views/widget_catalog/material_widgets/sub_views/image_material_widget_view.dart';
import '../../ui/views/widget_catalog/material_widgets/sub_views/linear_progress_indicator_widget_view.dart';
import '../../ui/views/widget_catalog/material_widgets/sub_views/list_tile_widget_view.dart';
import '../../ui/views/widget_catalog/material_widgets/sub_views/material_app_widget_view.dart';
import '../../ui/views/widget_catalog/material_widgets/sub_views/outlined_button_widget_view.dart';
import '../../ui/views/widget_catalog/material_widgets/sub_views/popup_menu_button_widget_view.dart';
import '../../ui/views/widget_catalog/material_widgets/sub_views/radio_widget_view.dart';
import '../../ui/views/widget_catalog/material_widgets/sub_views/scaffold_widget_view.dart';
import '../../ui/views/widget_catalog/material_widgets/sub_views/show_date_picker_widget_view.dart';
import '../../ui/views/widget_catalog/material_widgets/sub_views/simple_dialog_widget_view.dart';
import '../../ui/views/widget_catalog/material_widgets/sub_views/slider_widget_view.dart';
import '../../ui/views/widget_catalog/material_widgets/sub_views/sliver_app_bar_material_widget_view.dart';
import '../../ui/views/widget_catalog/material_widgets/sub_views/snack_bar_widget_view.dart';
import '../../ui/views/widget_catalog/material_widgets/sub_views/stepper_widget_view.dart';
import '../../ui/views/widget_catalog/material_widgets/sub_views/switch_widget_view.dart';
import '../../ui/views/widget_catalog/material_widgets/sub_views/tab_bar_view_widget_view.dart';
import '../../ui/views/widget_catalog/material_widgets/sub_views/tab_bar_widget_view.dart';
import '../../ui/views/widget_catalog/material_widgets/sub_views/tab_controller_widget_view.dart';
import '../../ui/views/widget_catalog/material_widgets/sub_views/tab_page_selector_widget_view.dart';
import '../../ui/views/widget_catalog/material_widgets/sub_views/text_button_widget_view.dart';
import '../../ui/views/widget_catalog/material_widgets/sub_views/text_field_widget_view.dart';
import '../../ui/views/widget_catalog/material_widgets/sub_views/tool_tip_widget_view.dart';
import '../../ui/views/widget_catalog/material_widgets/sub_views/widget_app_widget_view.dart';

// widget catalog painting
import '../../ui/views/widget_catalog/painting_effects/sub_views/backdrop_filter_widget_view.dart';
import '../../ui/views/widget_catalog/painting_effects/sub_views/clip_oval_widget_view.dart';
import '../../ui/views/widget_catalog/painting_effects/sub_views/clip_path_widget_view.dart';
import '../../ui/views/widget_catalog/painting_effects/sub_views/clip_rect_widget_view.dart';
import '../../ui/views/widget_catalog/painting_effects/sub_views/custom_paint_widget_view.dart';
import '../../ui/views/widget_catalog/painting_effects/sub_views/decorated_box_widget_view.dart';
import '../../ui/views/widget_catalog/painting_effects/sub_views/fractional_translation_widget_view.dart';
import '../../ui/views/widget_catalog/painting_effects/sub_views/opacity_widget_view.dart';
import '../../ui/views/widget_catalog/painting_effects/sub_views/rotated_box_widget_view.dart';
import '../../ui/views/widget_catalog/painting_effects/sub_views/transform_painting_effects_widget_view.dart';

// widget catalog scrolling
import '../../ui/views/widget_catalog/scrolling_widgets/sub_views/custom_scroll_view_scrolling_widget_view.dart';
import '../../ui/views/widget_catalog/scrolling_widgets/sub_views/draggable_scrollable_sheet_scrolling_widget_view.dart';
import '../../ui/views/widget_catalog/scrolling_widgets/sub_views/grid_view_scrolling_widget_view.dart';
import '../../ui/views/widget_catalog/scrolling_widgets/sub_views/list_view_scrolling_widget_view.dart';
import '../../ui/views/widget_catalog/scrolling_widgets/sub_views/nested_scroll_view_widget_view.dart';
import '../../ui/views/widget_catalog/scrolling_widgets/sub_views/notification_listener_widget_view.dart';
import '../../ui/views/widget_catalog/scrolling_widgets/sub_views/page_view_widget_view.dart';
import '../../ui/views/widget_catalog/scrolling_widgets/sub_views/refresh_indicator_widget_view.dart';
import '../../ui/views/widget_catalog/scrolling_widgets/sub_views/reorderable_list_view_widget_view.dart';
import '../../ui/views/widget_catalog/scrolling_widgets/sub_views/scroll_configuration_widget_view.dart';
import '../../ui/views/widget_catalog/scrolling_widgets/sub_views/scrollable_scrolling_widget_view.dart';
import '../../ui/views/widget_catalog/scrolling_widgets/sub_views/scrollbar_widget_view.dart';
import '../../ui/views/widget_catalog/scrolling_widgets/sub_views/single_child_scroll_view_widget_view.dart';

// widget catalog styling
import '../../ui/views/widget_catalog/styling_widgets/sub_views/media_query_widget_view.dart';
import '../../ui/views/widget_catalog/styling_widgets/sub_views/padding_style_widget_view.dart';
import '../../ui/views/widget_catalog/styling_widgets/sub_views/theme_widget_view.dart';

// widget catalog text
import '../../ui/views/widget_catalog/text_widgets/sub_views/default_text_style_widget_view.dart';
import '../../ui/views/widget_catalog/text_widgets/sub_views/rich_text_widget_view.dart';
import '../../ui/views/widget_catalog/text_widgets/sub_views/text_widget_view.dart';

// ui manipulation
import '../../ui/views/ui_manipulation/dimensions_constraints/dimensions_constraints_view.dart';
import '../../ui/views/ui_manipulation/spacing/spacing_view.dart';
import '../../ui/views/ui_manipulation/colors_backgrounds/colors_backgrounds_view.dart';
import '../../ui/views/ui_manipulation/alignment/alignment_view.dart';
import '../../ui/views/ui_manipulation/positioning/positioning_view.dart';
import '../../ui/views/ui_manipulation/visibility/visibility_view.dart';
import '../../ui/views/ui_manipulation/text/text_view.dart';
import '../../ui/views/ui_manipulation/borders/borders_view.dart';
import '../../ui/views/ui_manipulation/effects/effects_view.dart';

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
          builder: (_) => ExcludeSemanticsWidgetView(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.mergeSemanticsWidget:
        return MaterialPageRoute(
          builder: (_) => MergeSemanticsWidgetView(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.semanticsWidget:
        return MaterialPageRoute(
          builder: (_) => SemanticsWidgetView(
            appBarTitle: arguments['appBarTitle'],
          ),
        );

      // widget catalog animations and motion widgets
      case RoutePaths.animatedAlign:
        return MaterialPageRoute(
          builder: (_) => AnimatedAlignWidgetView(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.animatedBuilder:
        return MaterialPageRoute(
          builder: (_) => AnimatedBuilderWidgetView(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.animatedContainer:
        return MaterialPageRoute(
          builder: (_) => AnimatedContainerWidgetView(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.animatedCrossFade:
        return MaterialPageRoute(
          builder: (_) => AnimatedCrossFadeWidgetView(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.animatedDefaultTextStyle:
        return MaterialPageRoute(
          builder: (_) => AnimatedDefaultTextStyleWidgetView(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.animatedListState:
        return MaterialPageRoute(
          builder: (_) => AnimatedListStateWidgetView(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.animatedModalBarrier:
        return MaterialPageRoute(
          builder: (_) => AnimatedModalBarrierWidgetView(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.animatedOpacity:
        return MaterialPageRoute(
          builder: (_) => AnimatedOpacityWidgetView(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.animatedPhysicalModel:
        return MaterialPageRoute(
          builder: (_) => AnimatedPhysicalModelWidgetView(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.animatedPositioned:
        return MaterialPageRoute(
          builder: (_) => AnimatedPositionedWidgetView(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.animatedSize:
        return MaterialPageRoute(
          builder: (_) => AnimatedSizeWidgetView(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.animatedWidget:
        return MaterialPageRoute(
          builder: (_) => AnimatedWidgetWidgetView(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.animatedWidgetBaseState:
        return MaterialPageRoute(
          builder: (_) => AnimatedWidgetBaseStateWidgetView(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.decoratedBoxTransition:
        return MaterialPageRoute(
          builder: (_) => DecoratedBoxTransitionWidgetView(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.fadeTransition:
        return MaterialPageRoute(
          builder: (_) => FadeTransitionWidgetView(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.hero:
        return MaterialPageRoute(
          builder: (_) => HeroWidgetView(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.positionedTransition:
        return MaterialPageRoute(
          builder: (_) => PositionedTransitionWidgetView(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.rotationTransition:
        return MaterialPageRoute(
          builder: (_) => RotationTransitionWidgetView(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.scaleTransition:
        return MaterialPageRoute(
          builder: (_) => ScaleTransitionWidgetView(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.sizeTransition:
        return MaterialPageRoute(
          builder: (_) => SizeTransitionWidgetView(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.slideTransition:
        return MaterialPageRoute(
          builder: (_) => SlideTransitionWidgetView(
            appBarTitle: arguments['appBarTitle'],
          ),
        );

      // widget catalog assets, icons and images widgets
      case RoutePaths.assetBundle:
        return MaterialPageRoute(
          builder: (_) => AssetBundleWidgetView(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.icon:
        return MaterialPageRoute(
          builder: (_) => IconWidgetView(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.image:
        return MaterialPageRoute(
          builder: (_) => ImageWidgetView(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.rawImage:
        return MaterialPageRoute(
          builder: (_) => RawImageWidgetView(
            appBarTitle: arguments['appBarTitle'],
          ),
        );

      // widget catalog async widgets
      case RoutePaths.futureBuilder:
        return MaterialPageRoute(
          builder: (_) => FutureBuilderWidgetView(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.streamBuilder:
        return MaterialPageRoute(
          builder: (_) => StreamBuilderWidgetView(
            appBarTitle: arguments['appBarTitle'],
          ),
        );

      // widget catalog cupertino widgets
      case RoutePaths.cupertinoActionSheet:
        return MaterialPageRoute(
          builder: (_) => CupertinoActionSheetWidgetView(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.cupertinoActivityIndicator:
        return MaterialPageRoute(
          builder: (_) => CupertinoActivityIndicatorWidgetView(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.cupertinoAlertDialog:
        return MaterialPageRoute(
          builder: (_) => CupertinoAlertDialogWidgetView(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.cupertinoButton:
        return MaterialPageRoute(
          builder: (_) => CupertinoButtonWidgetView(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.cupertinoContextMenu:
        return MaterialPageRoute(
          builder: (_) => CupertinoContextMenuWidgetView(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.cupertinoDatePicker:
        return MaterialPageRoute(
          builder: (_) => CupertinoDatePickerWidgetView(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.cupertinoDialog:
        return MaterialPageRoute(
          builder: (_) => CupertinoDialogWidgetView(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.cupertinoDialogAction:
        return MaterialPageRoute(
          builder: (_) => CupertinoDialogActionWidgetView(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.cupertinoFullScreenDialogTransition:
        return MaterialPageRoute(
          builder: (_) => CupertinoDialogFullScreenDialogTransitionWidgetView(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.cupertinoNavigationBar:
        return MaterialPageRoute(
          builder: (_) => CupertinoNavigationBarWidgetView(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.cupertinoScaffold:
        return MaterialPageRoute(
          builder: (_) => CupertinoScaffoldWidgetView(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.cupertinoPageTransition:
        return MaterialPageRoute(
          builder: (_) => CupertinoPageTransitionWidgetView(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.cupertinoPicker:
        return MaterialPageRoute(
          builder: (_) => CupertinoPickerWidgetView(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.cupertinoPopupSurface:
        return MaterialPageRoute(
          builder: (_) => CupertinoPopupSurfaceWidgetView(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.cupertinoScrollbar:
        return MaterialPageRoute(
          builder: (_) => CupertinoScrollbarWidgetView(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.cupertinoSearchField:
        return MaterialPageRoute(
          builder: (_) => CupertinoSearchFieldWidgetView(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.cupertinoSegmentedControl:
        return MaterialPageRoute(
          builder: (_) => CupertinoSegmentedControlWidgetView(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.cupertinoSlider:
        return MaterialPageRoute(
          builder: (_) => CupertinoSliderWidgetView(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.cupertinoSlidingSegmentedControl:
        return MaterialPageRoute(
          builder: (_) => CupertinoSlidingSegmentedControlWidgetView(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.cupertinoSliverNavigationBar:
        return MaterialPageRoute(
          builder: (_) => CupertinoSliverNavigationBarWidgetView(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.cupertinoNavigationBar:
        return MaterialPageRoute(
          builder: (_) => CupertinoNavigationBarWidgetView(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.cupertinoSwitch:
        return MaterialPageRoute(
          builder: (_) => CupertinoSwitchWidgetView(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.cupertinoTabBar:
        return MaterialPageRoute(
          builder: (_) => CupertinoTabBarWidgetView(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.cupertinoTabScaffold:
        return MaterialPageRoute(
          builder: (_) => CupertinoTabScaffoldWidgetView(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.cupertinoTabView:
        return MaterialPageRoute(
          builder: (_) => CupertinoTabViewWidgetView(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.cupertinoTextField:
        return MaterialPageRoute(
          builder: (_) => CupertinoTextFieldWidgetView(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.cupertinoTimePicker:
        return MaterialPageRoute(
          builder: (_) => CupertinoTimePickerWidgetView(
            appBarTitle: arguments['appBarTitle'],
          ),
        );

      // widget catalog input widgets
      case RoutePaths.autocomplete:
        return MaterialPageRoute(
          builder: (_) => AutoCompleteWidgetView(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.form:
        return MaterialPageRoute(
          builder: (_) => FormWidgetView(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.formField:
        return MaterialPageRoute(
          builder: (_) => FormFieldWidgetView(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.rawKeyboardListener:
        return MaterialPageRoute(
          builder: (_) => RawKeyboardListenerWidgetView(
            appBarTitle: arguments['appBarTitle'],
          ),
        );

      // widget catalog interactive widgets
      case RoutePaths.absorbPointer:
        return MaterialPageRoute(
          builder: (_) => AbsorbPointerWidgetView(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.dismissible:
        return MaterialPageRoute(
          builder: (_) => DismissibleWidgetView(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.dragTarget:
        return MaterialPageRoute(
          builder: (_) => DragTargetWidgetView(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.draggable:
        return MaterialPageRoute(
          builder: (_) => DraggableWidgetView(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.draggableScrollableSheet:
        return MaterialPageRoute(
          builder: (_) => DraggableScrollableSheetWidgetView(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.gestureDetector:
        return MaterialPageRoute(
          builder: (_) => GestureDetectorWidgetView(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.ignorePointer:
        return MaterialPageRoute(
          builder: (_) => IgnorePointerWidgetView(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.interactiveViewer:
        return MaterialPageRoute(
          builder: (_) => InteractiveViewerWidgetView(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.longPressDraggable:
        return MaterialPageRoute(
          builder: (_) => LongPressDraggableWidgetView(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.scrollable:
        return MaterialPageRoute(
          builder: (_) => ScrollableWidgetView(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.heroInteractive:
        return MaterialPageRoute(
          builder: (_) => HeroInteractiveWidgetView(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.navigator:
        return MaterialPageRoute(
          builder: (_) => NavigatorWidgetView(
            appBarTitle: arguments['appBarTitle'],
          ),
        );

      // widget catalog layout widgets
      case RoutePaths.align:
        return MaterialPageRoute(
          builder: (_) => AlignWidgetView(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.aspectRatio:
        return MaterialPageRoute(
          builder: (_) => AspectRatioWidgetView(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.baseline:
        return MaterialPageRoute(
          builder: (_) => BaselineWidgetView(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.center:
        return MaterialPageRoute(
          builder: (_) => CenterWidgetView(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.constrainedBox:
        return MaterialPageRoute(
          builder: (_) => ConstrainedBoxWidgetView(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.container:
        return MaterialPageRoute(
          builder: (_) => ContainerWidgetView(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.customSingleChildLayout:
        return MaterialPageRoute(
          builder: (_) => CustomSingleChildLayoutWidgetView(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.expanded:
        return MaterialPageRoute(
          builder: (_) => ExpandedWidgetView(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.fittedBox:
        return MaterialPageRoute(
          builder: (_) => FittedBoxWidgetView(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.fractionallySizedBox:
        return MaterialPageRoute(
          builder: (_) => FractionallySizedBoxWidgetView(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.intrinsicHeight:
        return MaterialPageRoute(
          builder: (_) => IntrinsicHeightWidgetView(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.intrinsicWidth:
        return MaterialPageRoute(
          builder: (_) => IntrinsicWidthWidgetView(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.limitedBox:
        return MaterialPageRoute(
          builder: (_) => LimitedBoxWidgetView(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.offStage:
        return MaterialPageRoute(
          builder: (_) => OffStageWidgetView(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.overflowBox:
        return MaterialPageRoute(
          builder: (_) => OverFlowBoxWidgetView(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.padding:
        return MaterialPageRoute(
          builder: (_) => PaddingWidgetView(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.sizedBox:
        return MaterialPageRoute(
          builder: (_) => SizedBoxWidgetView(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.sizedOverflowBox:
        return MaterialPageRoute(
          builder: (_) => SizedOverflowBoxWidgetView(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.transform:
        return MaterialPageRoute(
          builder: (_) => TransformWidgetView(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.column:
        return MaterialPageRoute(
          builder: (_) => ColumnWidgetView(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.customMultiChildLayout:
        return MaterialPageRoute(
          builder: (_) => CustomMultiChildLayoutWidgetView(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.flow:
        return MaterialPageRoute(
          builder: (_) => FlowWidgetView(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.gridView:
        return MaterialPageRoute(
          builder: (_) => GridViewWidgetView(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.indexedStack:
        return MaterialPageRoute(
          builder: (_) => IndexedStackWidgetView(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.layoutBuilder:
        return MaterialPageRoute(
          builder: (_) => LayoutBuilderWidgetView(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.listBody:
        return MaterialPageRoute(
          builder: (_) => ListBodyWidgetView(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.listView:
        return MaterialPageRoute(
          builder: (_) => ListViewWidgetView(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.row:
        return MaterialPageRoute(
          builder: (_) => RowWidgetView(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.stack:
        return MaterialPageRoute(
          builder: (_) => StackWidgetView(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.table:
        return MaterialPageRoute(
          builder: (_) => TableWidgetView(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.wrap:
        return MaterialPageRoute(
          builder: (_) => WrapWidgetView(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.cupertinoSliverNavigationBar:
        return MaterialPageRoute(
          builder: (_) => CupertinoSliverNavigationBarLayoutWidgetView(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.customScrollView:
        return MaterialPageRoute(
          builder: (_) => CustomScrollViewWidgetView(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.sliverAppBar:
        return MaterialPageRoute(
          builder: (_) => SliverAppBarWidgetView(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.sliverChildBuilderDelegate:
        return MaterialPageRoute(
          builder: (_) => SliverChildBuilderDelegateWidgetView(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.sliverChildListDelegate:
        return MaterialPageRoute(
          builder: (_) => SliverChildListDelegateWidgetView(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.sliverFixedExtentList:
        return MaterialPageRoute(
          builder: (_) => SliverFixedExtentListWidgetView(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.sliverGrid:
        return MaterialPageRoute(
          builder: (_) => SliverGridWidgetView(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.sliverList:
        return MaterialPageRoute(
          builder: (_) => SliverListWidgetView(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.sliverPadding:
        return MaterialPageRoute(
          builder: (_) => SliverPaddingWidgetView(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.sliverPersistentHeader:
        return MaterialPageRoute(
          builder: (_) => SliverPersistentHeaderWidgetView(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.sliverToBoxAdaptor:
        return MaterialPageRoute(
          builder: (_) => SliverToBoxAdaptorWidgetView(
            appBarTitle: arguments['appBarTitle'],
          ),
        );

      // widget catalog material widgets
      case RoutePaths.appBar:
        return MaterialPageRoute(
          builder: (_) => AppBarWidgetView(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.bottomNavigationBar:
        return MaterialPageRoute(
          builder: (_) => BottomNavigationBarWidgetView(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.drawer:
        return MaterialPageRoute(
          builder: (_) => DrawerWidgetView(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.materialApp:
        return MaterialPageRoute(
          builder: (_) => MaterialAppWidgetView(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.scaffold:
        return MaterialPageRoute(
          builder: (_) => ScaffoldWidgetView(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.sliverAppBar:
        return MaterialPageRoute(
          builder: (_) => SliverAppBarMaterialWidgetView(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.tabBar:
        return MaterialPageRoute(
          builder: (_) => TabBarWidgetView(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.tabBarView:
        return MaterialPageRoute(
          builder: (_) => TabBarViewWidgetView(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.tabController:
        return MaterialPageRoute(
          builder: (_) => TabControllerWidgetView(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.tabPageSelector:
        return MaterialPageRoute(
          builder: (_) => TabPageSelectorWidgetView(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.widgetsApp:
        return MaterialPageRoute(
          builder: (_) => WidgetsAppWidgetView(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.dropdownButton:
        return MaterialPageRoute(
          builder: (_) => DropdownButtonWidgetView(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.elevatedButton:
        return MaterialPageRoute(
          builder: (_) => ElevatedButtonWidgetView(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.floatingActionButton:
        return MaterialPageRoute(
          builder: (_) => FloatingActionButtonWidgetView(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.iconButton:
        return MaterialPageRoute(
          builder: (_) => IconButtonWidgetView(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.outlineButton:
        return MaterialPageRoute(
          builder: (_) => OutlinedButtonWidgetView(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.popupMenuButton:
        return MaterialPageRoute(
          builder: (_) => PopupMenuButtonWidgetView(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.textButton:
        return MaterialPageRoute(
          builder: (_) => TextButtonWidgetView(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.checkBox:
        return MaterialPageRoute(
          builder: (_) => CheckboxWidgetView(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.showDatePicker:
        return MaterialPageRoute(
          builder: (_) => ShowDatePickerWidgetView(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.radio:
        return MaterialPageRoute(
          builder: (_) => RadioWidgetView(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.slider:
        return MaterialPageRoute(
          builder: (_) => SliderWidgetView(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.switchMaterial:
        return MaterialPageRoute(
          builder: (_) => SwitchWidgetView(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.textField:
        return MaterialPageRoute(
          builder: (_) => TextFieldWidgetView(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.alertDialog:
        return MaterialPageRoute(
          builder: (_) => AlertDialogWidgetView(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.bottomSheet:
        return MaterialPageRoute(
          builder: (_) => BottomSheetWidgetView(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.expansionPanel:
        return MaterialPageRoute(
          builder: (_) => ExpansionPanelWidgetView(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.simpleDialog:
        return MaterialPageRoute(
          builder: (_) => SimpleDialogWidgetView(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.snackBar:
        return MaterialPageRoute(
          builder: (_) => SnackBarWidgetView(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.card:
        return MaterialPageRoute(
          builder: (_) => CardWidgetView(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.chip:
        return MaterialPageRoute(
          builder: (_) => ChipWidgetView(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.circularProgressIndicator:
        return MaterialPageRoute(
          builder: (_) => CircularProgressIndicatorWidgetView(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.dataTable:
        return MaterialPageRoute(
          builder: (_) => DataTableWidgetView(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.gridViewMaterial:
        return MaterialPageRoute(
          builder: (_) => GridViewWidgetView(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.iconMaterial:
        return MaterialPageRoute(
          builder: (_) => IconMaterialWidgetView(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.imageMaterial:
        return MaterialPageRoute(
          builder: (_) => ImageMaterialWidgetView(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.linearProgressIndicator:
        return MaterialPageRoute(
          builder: (_) => LinearProgressIndicatorWidgetView(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.tooltip:
        return MaterialPageRoute(
          builder: (_) => TooltipWidgetView(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.divider:
        return MaterialPageRoute(
          builder: (_) => DividerWidgetView(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.listTile:
        return MaterialPageRoute(
          builder: (_) => ListTileWidgetView(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.stepper:
        return MaterialPageRoute(
          builder: (_) => StepperWidgetView(
            appBarTitle: arguments['appBarTitle'],
          ),
        );

      // widget catalog painting and effects widgets
      case RoutePaths.backDropFilter:
        return MaterialPageRoute(
          builder: (_) => BackdropFilterWidgetView(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.clipOval:
        return MaterialPageRoute(
          builder: (_) => ClipOvalWidgetView(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.clipPath:
        return MaterialPageRoute(
          builder: (_) => ClipPathWidgetView(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.clipRect:
        return MaterialPageRoute(
          builder: (_) => ClipRectWidgetView(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.customPaint:
        return MaterialPageRoute(
          builder: (_) => CustomPaintWidgetView(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.decoratedBox:
        return MaterialPageRoute(
          builder: (_) => DecoratedBoxWidgetView(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.fractionalTranslation:
        return MaterialPageRoute(
          builder: (_) => FractionalTranslationWidgetView(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.opacity:
        return MaterialPageRoute(
          builder: (_) => OpacityWidgetView(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.rotatedBox:
        return MaterialPageRoute(
          builder: (_) => RotatedBoxWidgetView(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.transform:
        return MaterialPageRoute(
          builder: (_) => TransformWidgetView(
            appBarTitle: arguments['appBarTitle'],
          ),
        );

      // widget catalog scrolling widgets
      case RoutePaths.customScrollView:
        return MaterialPageRoute(
          builder: (_) => CustomScrollViewScrollingWidgetView(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.draggableScrollableSheet:
        return MaterialPageRoute(
          builder: (_) => DraggableScrollableSheetScrollingWidgetView(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.gridView:
        return MaterialPageRoute(
          builder: (_) => GridViewScrollingWidgetView(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.listView:
        return MaterialPageRoute(
          builder: (_) => ListViewScrollingWidgetView(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.nestedScrollView:
        return MaterialPageRoute(
          builder: (_) => NestedScrollViewWidgetView(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.notificationListener:
        return MaterialPageRoute(
          builder: (_) => NotificationListenerWidgetView(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.pageView:
        return MaterialPageRoute(
          builder: (_) => PageViewWidgetView(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.refreshIndicator:
        return MaterialPageRoute(
          builder: (_) => RefreshIndicatorWidgetView(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.reorderableListView:
        return MaterialPageRoute(
          builder: (_) => ReorderableListViewWidgetView(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.scrollConfiguration:
        return MaterialPageRoute(
          builder: (_) => ScrollConfigurationWidgetView(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.scrollable:
        return MaterialPageRoute(
          builder: (_) => ScrollableScrollingWidgetView(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.scrollbar:
        return MaterialPageRoute(
          builder: (_) => ScrollbarWidgetView(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.singleChildScrollView:
        return MaterialPageRoute(
          builder: (_) => SingleChildScrollViewWidgetView(
            appBarTitle: arguments['appBarTitle'],
          ),
        );

      // widget catalog styling widgets
      case RoutePaths.mediaQuery:
        return MaterialPageRoute(
          builder: (_) => MediaQueryWidgetView(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.paddingStyling:
        return MaterialPageRoute(
          builder: (_) => PaddingStyleWidgetView(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.theme:
        return MaterialPageRoute(
          builder: (_) => ThemeWidgetView(
            appBarTitle: arguments['appBarTitle'],
          ),
        );

      // widget catalog text widgets
      case RoutePaths.defaultTextStyle:
        return MaterialPageRoute(
          builder: (_) => DefaultTextStyleWidgetView(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.richText:
        return MaterialPageRoute(
          builder: (_) => RichTextWidgetView(
            appBarTitle: arguments['appBarTitle'],
          ),
        );
      case RoutePaths.text:
        return MaterialPageRoute(
          builder: (_) => TextWidgetView(
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
