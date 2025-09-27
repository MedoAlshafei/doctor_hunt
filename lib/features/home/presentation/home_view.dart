import 'package:doctor_hunt/core/constants/app_text.dart';
import 'package:doctor_hunt/features/home/presentation/widgets/custom_app_bar.dart';
import 'package:doctor_hunt/features/home/presentation/widgets/home_app_bar_builder.dart';
import 'package:doctor_hunt/features/shared/custom_text_field.dart';
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
          SliverToBoxAdapter(
            child: Container(height: 100, color: Colors.white),
          ),
          SliverToBoxAdapter(child: Container(height: 100, color: Colors.red)),
          SliverToBoxAdapter(
            child: Container(height: 100, color: Colors.black),
          ),
          SliverToBoxAdapter(
            child: Container(height: 100, color: Colors.green),
          ),
          SliverToBoxAdapter(
            child: Container(height: 100, color: Colors.amber),
          ),
          SliverToBoxAdapter(child: Container(height: 100, color: Colors.blue)),
          SliverToBoxAdapter(
            child: Container(height: 100, color: Colors.green),
          ),
          SliverToBoxAdapter(child: Container(height: 100, color: Colors.blue)),
          SliverToBoxAdapter(child: Container(height: 100, color: Colors.blue)),
          SliverToBoxAdapter(child: Container(height: 100, color: Colors.blue)),
          SliverToBoxAdapter(child: Container(height: 100, color: Colors.blue)),
          SliverToBoxAdapter(child: Container(height: 100, color: Colors.blue)),
        ],
      ),
    );
  }
}
