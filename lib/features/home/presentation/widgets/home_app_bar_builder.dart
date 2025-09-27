// import 'package:doctor_hunt/core/constants/app_text.dart';
// import 'package:doctor_hunt/features/home/presentation/widgets/custom_app_bar.dart';
// import 'package:doctor_hunt/features/shared/custom_text_field.dart';
// import 'package:flutter/material.dart';

// class HomeAppBarBuilder extends StatelessWidget implements PreferredSizeWidget {
//   const HomeAppBarBuilder({super.key});

//   @override
//   Size get preferredSize => const Size.fromHeight(kToolbarHeight + 45);

//   @override
//   Widget build(BuildContext context) {
//     return Stack(
//       alignment: Alignment.center,
//       clipBehavior: Clip.none,
//       children: [
//         CustomAppBer(),
//         Positioned(
//           top: kToolbarHeight + 65,
//           left: 16,
//           right: 16,
//           child: CustomTextField(
//             hintText: AppText.search,
//             prefixIcon: Icons.search,
//             suffixIcon: Icons.filter_list,
//           ),
//         ),
//       ],
//     );
//   }
// }
