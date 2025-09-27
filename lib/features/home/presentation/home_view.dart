import 'package:doctor_hunt/features/home/presentation/widgets/home_app_bar_builder.dart';
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
      extendBodyBehindAppBar: true,
      appBar: HomeAppBarBuilder(),
      body: CustomScrollView(
        physics: PageScrollPhysics(),
        slivers: [
          SliverToBoxAdapter(
            child: Container(height: 200, width: 200, color: Colors.black),
          ),
          SliverToBoxAdapter(
            child: Container(height: 200, width: 200, color: Colors.yellow),
          ),
          SliverToBoxAdapter(
            child: Container(height: 200, width: 200, color: Colors.black),
          ),
          SliverToBoxAdapter(
            child: Container(height: 200, width: 200, color: Colors.blue),
          ),
          SliverToBoxAdapter(
            child: Container(height: 200, width: 200, color: Colors.red),
          ),
          SliverToBoxAdapter(
            child: Container(height: 200, width: 200, color: Colors.green),
          ),
          SliverToBoxAdapter(
            child: Container(height: 200, width: 200, color: Colors.amber),
          ),
          SliverToBoxAdapter(
            child: Container(height: 200, width: 200, color: Colors.red),
          ),
          SliverToBoxAdapter(
            child: Container(height: 200, width: 200, color: Colors.red),
          ),
          SliverToBoxAdapter(
            child: Container(height: 200, width: 200, color: Colors.green),
          ),
          SliverToBoxAdapter(
            child: Container(height: 200, width: 200, color: Colors.red),
          ),
          SliverToBoxAdapter(
            child: Container(height: 200, width: 200, color: Colors.red),
          ),
          SliverToBoxAdapter(
            child: Container(height: 200, width: 200, color: Colors.red),
          ),
          SliverToBoxAdapter(
            child: Container(height: 200, width: 200, color: Colors.red),
          ),
          SliverToBoxAdapter(
            child: Container(height: 200, width: 200, color: Colors.red),
          ),
          SliverToBoxAdapter(
            child: Container(height: 200, width: 200, color: Colors.red),
          ),
        ],
      ),
    );
  }
}
