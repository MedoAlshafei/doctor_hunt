import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CategoryBuilderWidget extends StatelessWidget {
  const CategoryBuilderWidget({
    super.key,
    required this.icon,
    required this.color,
  });

  final String icon;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8),
      padding: const EdgeInsets.all(8),
      color: color,
      height: 70,
      width: 70,
      child: SvgPicture.asset(icon, height: 33, width: 33),
    );
  }
}
