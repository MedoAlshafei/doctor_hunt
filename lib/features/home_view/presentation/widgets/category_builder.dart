import 'package:doctor_hunt/features/home_view/model/category_builder_model.dart';
import 'package:doctor_hunt/features/home_view/presentation/widgets/category_builder_widget.dart';
import 'package:flutter/material.dart';

class CategoryBuilder extends StatelessWidget {
  const CategoryBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: SizedBox(
        height: 100,
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            physics: const BouncingScrollPhysics(),
            itemCount: categoryList.length,
            itemBuilder: (context, index) {
              return CategoryBuilderWidget(
                icon: categoryList[index].icon,
                color: categoryList[index].color,
              );
            },
          ),
        ),
      ),
    );
  }
}
