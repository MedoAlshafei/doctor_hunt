import 'package:doctor_hunt/features/home_view/presentation/widgets/popular_doctor_card.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BuilderDoctorRowContainer extends StatelessWidget {
  const BuilderDoctorRowContainer({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    final height = size.height;
    return SliverToBoxAdapter(
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
        padding: const EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  title,
                  style: GoogleFonts.rubik(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  "See all >",
                  style: GoogleFonts.rubik(
                    fontSize: 12,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            SizedBox(
              height: height / 3.5,
              width: double.infinity,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                physics: const BouncingScrollPhysics(),
                itemCount: 5,
                itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: DoctorCard(
                    imageUrl: 'assets/doctors/doctors_one.png',
                    name: 'Dr. Fillerup Grab',
                    specialty: 'Medicine Specialist',
                    rating: 4.5,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
