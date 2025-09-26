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
    return Scaffold(appBar: HomeAppBarBuilder(), body: Container());
  }
}
