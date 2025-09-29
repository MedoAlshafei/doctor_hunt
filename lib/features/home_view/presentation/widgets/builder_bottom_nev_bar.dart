import 'package:doctor_hunt/core/constants/app_colors.dart';
import 'package:doctor_hunt/core/routes/app_router.dart';
import 'package:doctor_hunt/features/home_view/model/navigation_bar_model.dart';
import 'package:flutter/material.dart';
// import 'package:go_router/go_router.dart';

class BuilderBottomNevBar extends StatelessWidget {
  final int selectedIndex;
  final ValueChanged<int> onItemSelected;
  final List<NavBarModel> navItems;

  const BuilderBottomNevBar({
<<<<<<< HEAD
    super.key,
    required this.selectedIndex,
    required this.onItemSelected,
    required this.navItems,
  });
=======
    Key? key,
    required this.selectedIndex,
    required this.onItemSelected,
    required this.navItems,
  }) : super(key: key);
>>>>>>> b233a097ec6383e1b89b5a3678d6b58d7935a88b

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 70,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(24),
          topRight: Radius.circular(24),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withAlpha(100),
            spreadRadius: 0,
            blurRadius: 10,
            offset: const Offset(0, -3),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: List.generate(
          navItems.length,
          (index) => InkWell(
            onTap: () => onItemSelected(index),
            borderRadius: BorderRadius.circular(25),
            child: Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                color: selectedIndex == index
                    ? AppColors.primary
                    : Colors.transparent,
                borderRadius: BorderRadius.circular(25),
              ),
              child: Center(
                child: Icon(
                  navItems[index].icon,
                  size: 24,
                  color: selectedIndex == index
                      ? navItems[index].selectedIconColor
                      : navItems[index].color,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
