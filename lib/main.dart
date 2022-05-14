import 'package:flutter/material.dart';
import 'package:flutter_package_practice/features/app/app_screen.dart';
import 'package:flutter_package_practice/features/app/netflix_clone/main.dart';
import 'package:flutter_package_practice/features/design/design_screen.dart';
import 'package:flutter_package_practice/features/packages/flutter_toast_screen.dart';
import 'package:flutter_package_practice/features/packages/introduction_screen.dart';
import 'package:flutter_package_practice/features/packages/modal_bottom_sheet_screen.dart';
import 'package:flutter_package_practice/features/packages/packages_screen.dart';
import 'package:flutter_package_practice/features/packages/pin_code_fields_screen.dart';
import 'package:flutter_package_practice/features/widgets/alert_dialog_screen.dart';
import 'package:flutter_package_practice/features/widgets/animated_container_screen.dart';
import 'package:flutter_package_practice/features/widgets/animated_cross_fade_screen.dart';
import 'package:flutter_package_practice/features/widgets/animated_icon_screen.dart';
import 'package:flutter_package_practice/features/widgets/bottom_navigation_bar_screen.dart';
import 'package:flutter_package_practice/features/widgets/checkbox_list_tile_screen.dart';
import 'package:flutter_package_practice/features/widgets/choice_chip_screen.dart';
import 'package:flutter_package_practice/features/widgets/clip_r_rect_screen.dart';
import 'package:flutter_package_practice/features/widgets/date_time_picker_screen.dart';
import 'package:flutter_package_practice/features/widgets/draggable_scrollable_sheet_screen.dart';
import 'package:flutter_package_practice/features/widgets/expanded_screen.dart';
import 'package:flutter_package_practice/features/widgets/expansion_tile_screen.dart';
import 'package:flutter_package_practice/features/widgets/fitted_box_screen.dart';
import 'package:flutter_package_practice/features/widgets/flexible_screen.dart';
import 'package:flutter_package_practice/features/widgets/gesture_detector_screen.dart';
import 'package:flutter_package_practice/features/widgets/grid_paper_screen.dart';
import 'package:flutter_package_practice/features/widgets/hero_screen.dart';
import 'package:flutter_package_practice/features/widgets/ink_well_screen.dart';
import 'package:flutter_package_practice/features/widgets/interactive_viewer_screen.dart';
import 'package:flutter_package_practice/features/widgets/page_view_screen.dart';
import 'package:flutter_package_practice/features/widgets/platform_checking_screen.dart';
import 'package:flutter_package_practice/features/widgets/popup_menu_button_screen.dart';
import 'package:flutter_package_practice/features/widgets/positioned_screen.dart';
import 'package:flutter_package_practice/features/widgets/range_slider_screen.dart';
import 'package:flutter_package_practice/features/widgets/rich_text_screen.dart';
import 'package:flutter_package_practice/features/widgets/selectable_text_screen.dart';
import 'package:flutter_package_practice/features/widgets/showSearch_screen.dart';
import 'package:flutter_package_practice/features/widgets/show_modal_bottom_sheet_screen.dart';
import 'package:flutter_package_practice/features/widgets/show_time_picker_screen.dart';
import 'package:flutter_package_practice/features/widgets/silver_app_bar_screen.dart';
import 'package:flutter_package_practice/features/widgets/snack_bar_screen.dart';
import 'package:flutter_package_practice/features/widgets/stack_screen.dart';
import 'package:flutter_package_practice/features/widgets/stepper_screen.dart';
import 'package:flutter_package_practice/features/widgets/table_screen.dart';
import 'package:flutter_package_practice/features/widgets/tool_tip_screen.dart';
import 'package:flutter_package_practice/features/widgets/transform_screen.dart';
import 'package:flutter_package_practice/features/widgets/visibility_screen.dart';
import 'package:flutter_package_practice/features/widgets/widgets_screen.dart';
import 'package:flutter_package_practice/features/widgets/will_pop_scope_screen.dart';
import 'package:flutter_package_practice/features/widgets/wrap_screen.dart';
import 'package:flutter_package_practice/responsive/mobile_screen_layout.dart';
import 'package:flutter_package_practice/responsive/responsive_layout.dart';
import 'package:flutter_package_practice/responsive/web_screen_layout.dart';
import 'package:flutter_package_practice/utils/global_variables.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

void main() {
  // ウェブの URL　から # を除く
  GoRouter.setUrlPathStrategy(UrlPathStrategy.path);

  runApp(ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  final _router = GoRouter(
    initialLocation: '/',
    // ルート診断情報の出力を有効にする
    debugLogDiagnostics: true,
    routes: [
      GoRoute(
        name: 'home',
        path: '/',
        builder: (context, state) => const ResponsiveLayout(),
        routes: [
          GoRoute(
            name: 'widgets',
            path: 'widgets',
            builder: (context, state) => const WidgetsScreen(),
            routes: [
              GoRoute(
                name: WidgetType.stepper.name,
                path: WidgetType.stepper.name,
                builder: (context, state) => const StepperScreen(),
              ),
              GoRoute(
                name: WidgetType.showSearch.name,
                path: WidgetType.showSearch.name,
                builder: (context, state) => ShowSearchScreen(),
              ),
              GoRoute(
                name: WidgetType.hero.name,
                path: WidgetType.hero.name,
                builder: (context, state) => const HeroScreen(),
                routes: [
                  GoRoute(
                    name: 'HeroDetailPage',
                    path: 'HeroDetailPage',
                    pageBuilder: (context, state) => MaterialPage<void>(
                      key: state.pageKey,
                      restorationId: state.pageKey.value,
                      child:
                          HeroDetailPage(item: state.extra! as HeroItemModel),
                    ),
                  ),
                ],
              ),
              GoRoute(
                name: WidgetType.choiceChip.name,
                path: WidgetType.choiceChip.name,
                builder: (context, state) => const ChoiceChipScreen(),
              ),
              GoRoute(
                name: WidgetType.silverAppBar.name,
                path: WidgetType.silverAppBar.name,
                builder: (context, state) => const SilverAppBarScreen(),
              ),
              GoRoute(
                name: WidgetType.wrap.name,
                path: WidgetType.wrap.name,
                builder: (context, state) => WrapScreen(),
              ),
              GoRoute(
                name: WidgetType.expansionTile.name,
                path: WidgetType.expansionTile.name,
                builder: (context, state) => ExpansionTileScreen(),
              ),
              GoRoute(
                name: WidgetType.showTimePicker.name,
                path: WidgetType.showTimePicker.name,
                builder: (context, state) => ShowTimePickerScreen(),
              ),
              GoRoute(
                name: WidgetType.showDatePicker.name,
                path: WidgetType.showDatePicker.name,
                builder: (context, state) => const ShowDatePickerScreen(),
              ),
              GoRoute(
                name: WidgetType.popupMenuButton.name,
                path: WidgetType.popupMenuButton.name,
                builder: (context, state) => const PopupMenuButtonScreen(),
              ),
              GoRoute(
                name: WidgetType.rangeSlider.name,
                path: WidgetType.rangeSlider.name,
                builder: (context, state) => RangeSliderScreen(),
              ),
              GoRoute(
                name: WidgetType.visibility.name,
                path: WidgetType.visibility.name,
                builder: (context, state) => VisibilityScreen(),
              ),
              GoRoute(
                name: WidgetType.bottomNavigationBar.name,
                path: WidgetType.bottomNavigationBar.name,
                builder: (context, state) => BottomNavigationBarScreen(),
              ),
              GoRoute(
                name: WidgetType.pageView.name,
                path: WidgetType.pageView.name,
                builder: (context, state) => PageViewScreen(),
              ),
              GoRoute(
                name: WidgetType.showModalBottomSheet.name,
                path: WidgetType.showModalBottomSheet.name,
                builder: (context, state) => ShowModalBottomSheetScreen(),
              ),
              GoRoute(
                name: WidgetType.draggableScrollableSheet.name,
                path: WidgetType.draggableScrollableSheet.name,
                builder: (context, state) => DraggableScrollableSheetScreen(),
              ),
              GoRoute(
                name: WidgetType.animatedCrossFade.name,
                path: WidgetType.animatedCrossFade.name,
                builder: (context, state) => AnimatedCrossFadeScreen(),
              ),
              GoRoute(
                name: WidgetType.expanded.name,
                path: WidgetType.expanded.name,
                builder: (context, state) => ExpandedScreen(),
              ),
              GoRoute(
                name: WidgetType.flexible.name,
                path: WidgetType.flexible.name,
                builder: (context, state) => FlexibleScreen(),
              ),
              GoRoute(
                name: WidgetType.willPopScope.name,
                path: WidgetType.willPopScope.name,
                builder: (context, state) => WillPopScopeScreen(),
              ),
              GoRoute(
                name: WidgetType.gridPaper.name,
                path: WidgetType.gridPaper.name,
                builder: (context, state) => GridPaperScreen(),
              ),
              GoRoute(
                name: WidgetType.tooltip.name,
                path: WidgetType.tooltip.name,
                builder: (context, state) => ToolTipScreen(),
              ),
              GoRoute(
                name: WidgetType.stack.name,
                path: WidgetType.stack.name,
                builder: (context, state) => StackScreen(),
              ),
              GoRoute(
                name: WidgetType.positioned.name,
                path: WidgetType.positioned.name,
                builder: (context, state) => PositionedScreen(),
              ),
              GoRoute(
                name: WidgetType.alertDialog.name,
                path: WidgetType.alertDialog.name,
                builder: (context, state) => AlertDialogScreen(),
              ),
              GoRoute(
                name: WidgetType.table.name,
                path: WidgetType.table.name,
                builder: (context, state) => TableScreen(),
              ),
              GoRoute(
                name: WidgetType.gestureDetector.name,
                path: WidgetType.gestureDetector.name,
                builder: (context, state) => GestureDetectorScreen(),
              ),
              GoRoute(
                name: WidgetType.inkWell.name,
                path: WidgetType.inkWell.name,
                builder: (context, state) => InkWellScreen(),
              ),
              GoRoute(
                name: WidgetType.interactiveViewer.name,
                path: WidgetType.interactiveViewer.name,
                builder: (context, state) => InteractiveViewerScreen(),
              ),
              GoRoute(
                name: WidgetType.checkboxListTile.name,
                path: WidgetType.checkboxListTile.name,
                builder: (context, state) => CheckboxListTileScreen(),
              ),
              GoRoute(
                name: WidgetType.selectableText.name,
                path: WidgetType.selectableText.name,
                builder: (context, state) => SelectableTextScreen(),
              ),
              GoRoute(
                name: WidgetType.richText.name,
                path: WidgetType.richText.name,
                builder: (context, state) => const RichTextScreen(),
              ),
              GoRoute(
                name: WidgetType.fittedBox.name,
                path: WidgetType.fittedBox.name,
                builder: (context, state) => FittedBoxScreen(),
              ),
              GoRoute(
                name: WidgetType.snackBar.name,
                path: WidgetType.snackBar.name,
                builder: (context, state) => SnackBarScreen(),
              ),
              GoRoute(
                name: WidgetType.clipRRect.name,
                path: WidgetType.clipRRect.name,
                builder: (context, state) => const ClipRRectScreen(),
              ),
              GoRoute(
                name: WidgetType.animatedIcon.name,
                path: WidgetType.animatedIcon.name,
                builder: (context, state) => AnimatedIconScreen(),
              ),
              GoRoute(
                name: WidgetType.animatedContainer.name,
                path: WidgetType.animatedContainer.name,
                builder: (context, state) => AnimatedContainerScreen(),
              ),
              GoRoute(
                name: WidgetType.platformChecking.name,
                path: WidgetType.platformChecking.name,
                builder: (context, state) => PlatformCheckingScreen(),
              ),
              GoRoute(
                name: WidgetType.transform.name,
                path: WidgetType.transform.name,
                builder: (context, state) => TransformScreen(),
              ),
            ],
          ),
          GoRoute(
            name: 'packages',
            path: 'packages',
            builder: (context, state) => const PackagesScreen(),
            routes: [
              GoRoute(
                name: PackageType.modal_bottom_sheet.name,
                path: PackageType.modal_bottom_sheet.name,
                builder: (context, state) => ModalBottomSheetScreen(),
              ),
              GoRoute(
                name: PackageType.introduction_screen.name,
                path: PackageType.introduction_screen.name,
                builder: (context, state) => IntroductionScreenScreen(),
              ),
              GoRoute(
                name: PackageType.flutterToast.name,
                path: PackageType.flutterToast.name,
                builder: (context, state) => FlutterToastScreen(),
              ),
              GoRoute(
                name: PackageType.pinCodeFields.name,
                path: PackageType.pinCodeFields.name,
                builder: (context, state) => PinCodeFieldsScreen(
                  phoneNumber: "+81-134-567-8910",
                ),
              ),
            ],
          ),
          GoRoute(
            name: 'design',
            path: 'design',
            builder: (context, state) => const DesignScreen(),
          ),
          GoRoute(
            name: 'app',
            path: 'app',
            builder: (context, state) => const AppScreen(),
            routes: [
              GoRoute(
                name: AppType.netflixClone.name,
                path: AppType.netflixClone.name,
                builder: (context, state) => const NetflixApp(),
              ),
            ],
          ),
        ],
      ),
    ],
  );

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routeInformationParser: _router.routeInformationParser,
      routerDelegate: _router.routerDelegate,
    );
  }
}
