import 'package:doctor_hunt/core/constants/app_colors.dart';
import 'package:doctor_hunt/core/routes/app_router.dart';
import 'package:doctor_hunt/features/home_view/presentation/widgets/custom_app_bar.dart';
import 'package:doctor_hunt/features/live_stream_view/presentation/live_stream_builder.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: false,
      body: CustomScrollView(
        physics: const ClampingScrollPhysics(),
        slivers: [
          const CustomAppBar(),
          SliverToBoxAdapter(child: LiveStreamBuilder()),
        ],
      ),
      bottomNavigationBar: _builderBottomNavBar(context),
    );
  }

  Widget _builderBottomNavBar(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      backgroundColor: Colors.white,
      selectedItemColor: AppColors.primary,
      unselectedItemColor: Colors.grey,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      iconSize: 30,
      elevation: 0,
      currentIndex: _selectedIndex,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home_outlined),
          activeIcon: Icon(Icons.home),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.favorite_outline),
          activeIcon: Icon(Icons.favorite),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.chat_outlined),
          activeIcon: Icon(Icons.chat),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.book_outlined),
          activeIcon: Icon(Icons.book),
          label: '',
        ),
      ],
      onTap: (index) {
        setState(() {
          _selectedIndex = index;
        });

        switch (index) {
          case 0:
            // Use go() to replace the entire stack with home view
            GoRouter.of(context).go(AppRouter.kHomeView);
            break;
          case 1:
            GoRouter.of(context).go(AppRouter.kfavoriteScreen);
            break;
          case 2:
            GoRouter.of(context).go(AppRouter.kchatScreen);
            break;
          case 3:
            GoRouter.of(context).go(AppRouter.kbookScreen);
            break;
        }
      },
    );
  }
}
