import 'package:doctor_hunt/features/home_view/presentation/widgets/custom_app_bar.dart';
import 'package:doctor_hunt/features/live_stream_view/presentation/live_stream_builder.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

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
    );
  }
}
