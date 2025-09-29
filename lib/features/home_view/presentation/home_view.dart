import 'package:doctor_hunt/core/constants/app_colors.dart';
import 'package:doctor_hunt/core/routes/app_router.dart';
import 'package:doctor_hunt/features/home_view/model/navigation_bar_model.dart';
import 'package:doctor_hunt/features/home_view/presentation/widgets/builder_bottom_nev_bar.dart';
import 'package:doctor_hunt/features/home_view/presentation/widgets/category_builder.dart';
import 'package:doctor_hunt/features/home_view/presentation/widgets/custom_app_bar.dart';
import 'package:doctor_hunt/features/home_view/presentation/widgets/popular_doctor.dart';
import 'package:doctor_hunt/features/live_stream_view/presentation/live_stream_builder.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int _selectedIndex = 0;
  List<NavBarModel> navItems = [];

  @override
  void initState() {
    super.initState();
    _selectedIndex = 0;
    navItems = [
      NavBarModel(
        outlineIcon: Icons.home_outlined,
        filledIcon: Icons.home,
        screenname: AppRouter.kHomeView,
        color: AppColors.grey,
        selectedIconColor: Colors.white,
        isSelected: true,
      ),
      NavBarModel(
        outlineIcon: Icons.favorite_outline,
        filledIcon: Icons.favorite,
        screenname: AppRouter.kfavoriteScreen,
        color: AppColors.grey,
        selectedIconColor: Colors.white,
        isSelected: false,
      ),
      NavBarModel(
        outlineIcon: Icons.menu_book_outlined,
        filledIcon: Icons.menu_book,
        screenname: AppRouter.kfavoriteScreen,
        color: AppColors.grey,
        selectedIconColor: Colors.white,
        isSelected: false,
      ),
      NavBarModel(
        outlineIcon: Icons.chat_outlined,
        filledIcon: Icons.chat_rounded,
        screenname: AppRouter.kchatScreen,
        color: AppColors.grey,
        selectedIconColor: Colors.white,
        isSelected: false,
      ),
    ];
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    final screenName = navItems[index].screenname;
    if (screenName != null) {
      Navigator.pushNamed(context, screenName);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: false,
      body: CustomScrollView(
        physics: const ClampingScrollPhysics(),
        slivers: [
          const CustomAppBar(),
          SliverToBoxAdapter(child: LiveStreamBuilder()),
          CategoryBuilder(),
          BuilderDoctorRowContainer(
            title: "Popular Doctors",
            // child:
          ),
        ],
      ),
      bottomNavigationBar: BuilderBottomNevBar(
        selectedIndex: 0,
        onItemSelected: _onItemTapped,
        navItems: navItems,
      ),
    );
  }
}
