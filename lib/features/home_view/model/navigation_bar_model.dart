import 'package:flutter/material.dart';

class NavBarModel {
  NavBarModel({
    required this.outlineIcon,
    required this.filledIcon,
    required this.color,
    required this.selectedIconColor,
    required this.screenname,
    this.isSelected = false,
  });

  final IconData outlineIcon;
  final IconData filledIcon;
  final Color color;
  final Color selectedIconColor;
  final bool isSelected;
  final String? screenname;

  IconData get icon => isSelected ? filledIcon : outlineIcon;

  NavBarModel copyWith({
    IconData? outlineIcon,
    IconData? filledIcon,
    Color? color,
    Color? selectedIconColor,
    bool? isSelected,
    String? screenname,
  }) {
    return NavBarModel(
      outlineIcon: outlineIcon ?? this.outlineIcon,
      filledIcon: filledIcon ?? this.filledIcon,
      color: color ?? this.color,
      selectedIconColor: selectedIconColor ?? this.selectedIconColor,
      isSelected: isSelected ?? this.isSelected,
      screenname: screenname ?? this.screenname,
    );
  }
}
