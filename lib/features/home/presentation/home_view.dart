import 'package:doctor_hunt/features/home/presentation/widgets/custom_app_bar.dart';
import 'package:doctor_hunt/features/home/presentation/widgets/live_doctor_builder.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});
  static const routeName = '/home';

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: false,
      body: CustomScrollView(
        physics: ClampingScrollPhysics(),
        slivers: [
          CustomAppBer(),
          SliverToBoxAdapter(child: LiveDoctorBuilder()),
        ],
      ),
    );
  }
}
