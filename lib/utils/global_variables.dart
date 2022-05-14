import 'package:flutter/material.dart';

const webScreenSize = 600;

enum WidgetType {
  stepper,
  showSearch,
  hero,
  choiceChip,
  silverAppBar,
  wrap,
  expansionTile,
  showTimePicker,
  showDatePicker,
  popupMenuButton,
  rangeSlider,
  visibility,
  bottomNavigationBar,
  pageView,
  showModalBottomSheet,
  draggableScrollableSheet,
  animatedCrossFade,
  expanded,
  flexible,
  willPopScope,
  gridPaper,
  tooltip,
  stack,
  positioned,
  alertDialog,
  table,
  gestureDetector,
  inkWell,
  interactiveViewer,
  checkboxListTile,
  selectableText,
  richText,
  fittedBox,
  snackBar,
  clipRRect,
  animatedIcon,
  animatedContainer,
  platformChecking,
  transform,
}

extension WidgetTypeExt on WidgetType {
  String get name {
    switch (this) {
      case WidgetType.stepper:
        return 'Stepper';
      case WidgetType.showSearch:
        return 'showSearch';
      case WidgetType.hero:
        return 'Hero';
      case WidgetType.choiceChip:
        return 'ChoiceChip';
      case WidgetType.silverAppBar:
        return 'SilverAppBar';
      case WidgetType.wrap:
        return 'Wrap';
      case WidgetType.expansionTile:
        return 'ExpansionTile';
      case WidgetType.showTimePicker:
        return 'ShowTimePicker';
      case WidgetType.showDatePicker:
        return 'ShowDatePicker';
      case WidgetType.popupMenuButton:
        return 'PopupMenuButton';
      case WidgetType.rangeSlider:
        return 'RangeSlider';
      case WidgetType.visibility:
        return 'Visibility';
      case WidgetType.bottomNavigationBar:
        return 'BottomNavigationBar';
      case WidgetType.pageView:
        return 'PageView';
      case WidgetType.showModalBottomSheet:
        return 'ShowModalBottomSheet';
      case WidgetType.draggableScrollableSheet:
        return 'DraggableScrollableSheet';
      case WidgetType.animatedCrossFade:
        return 'AnimatedCrossFade';
      case WidgetType.expanded:
        return 'Expanded';
      case WidgetType.flexible:
        return 'Flexible';
      case WidgetType.willPopScope:
        return 'WillPopScope';
      case WidgetType.gridPaper:
        return 'GridPaper';
      case WidgetType.tooltip:
        return 'Tooltip';
      case WidgetType.stack:
        return 'Stack';
      case WidgetType.positioned:
        return 'Positioned';
      case WidgetType.alertDialog:
        return 'AlertDialog';
      case WidgetType.table:
        return 'Table';
      case WidgetType.gestureDetector:
        return 'GestureDetector';
      case WidgetType.inkWell:
        return 'InkWell';
      case WidgetType.interactiveViewer:
        return 'InteractiveViewer';
      case WidgetType.checkboxListTile:
        return 'CheckboxListTile';
      case WidgetType.selectableText:
        return 'SelectableText';
      case WidgetType.richText:
        return 'RichText';
      case WidgetType.fittedBox:
        return 'FittedBox';
      case WidgetType.snackBar:
        return 'SnackBar';
      case WidgetType.clipRRect:
        return 'ClipRRect';
      case WidgetType.animatedIcon:
        return 'AnimatedIcon';
      case WidgetType.animatedContainer:
        return 'AnimatedContainer';
      case WidgetType.platformChecking:
        return 'PlatformChecking';
      case WidgetType.transform:
        return 'Transform';
    }
  }
}

enum PackageType {
  modal_bottom_sheet,
  introduction_screen,
  flutterToast,
  pinCodeFields,
}

extension PackageTypeExt on PackageType {
  String get name {
    switch (this) {
      case PackageType.modal_bottom_sheet:
        return 'modal_bottom_sheet';
      case PackageType.introduction_screen:
        return 'introduction_screen';
      case PackageType.flutterToast:
        return 'FlutterToast';
      case PackageType.pinCodeFields:
        return 'PinCodeFields';
    }
  }
}

enum AppType {
  netflixClone,
}

extension AppTypeExt on AppType {
  String get name {
    switch (this) {
      case AppType.netflixClone:
        return "NetflixClone";
    }
  }
}
