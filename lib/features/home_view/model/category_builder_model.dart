import 'package:doctor_hunt/core/constants/app_icons.dart';
import 'package:flutter/material.dart';

class CategoryBuilderModel {
  CategoryBuilderModel({required this.icon, required this.color});
  final String icon;
  final Color color;
}

List<CategoryBuilderModel> categoryList = [
  CategoryBuilderModel(icon: AppIcons.touth, color: Colors.purple),
  CategoryBuilderModel(icon: AppIcons.eye, color: Colors.green),
  CategoryBuilderModel(icon: AppIcons.heart, color: Colors.orange),
  CategoryBuilderModel(icon: AppIcons.heart, color: Colors.orange),
  CategoryBuilderModel(icon: AppIcons.heart, color: Colors.orange),
  CategoryBuilderModel(icon: AppIcons.heart, color: Colors.red),
];
