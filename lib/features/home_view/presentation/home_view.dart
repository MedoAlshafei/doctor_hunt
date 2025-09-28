import 'package:doctor_hunt/features/home_view/presentation/widgets/builder_bottom_nev_bar.dart';
import 'package:doctor_hunt/features/home_view/presentation/widgets/category_builder.dart';
import 'package:doctor_hunt/features/home_view/presentation/widgets/custom_app_bar.dart';
import 'package:doctor_hunt/features/live_stream_view/presentation/live_stream_builder.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
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
          SliverToBoxAdapter(
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
              padding: const EdgeInsets.all(8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [Text("")],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BuilderBottomNevBar(),
    );
  }
}
