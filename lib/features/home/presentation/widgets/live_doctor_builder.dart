import 'package:doctor_hunt/core/constants/app_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LiveDoctorBuilder extends StatelessWidget {
  const LiveDoctorBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16, vertical: 32),
      padding: EdgeInsets.all(8),
      color: Colors.amber,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            AppText.liveDoctors,
            style: GoogleFonts.rubik(fontSize: 18, fontWeight: FontWeight.w500),
          ),
          SizedBox(height: 16),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [Container(height: 168, width: 117, color: Colors.blue)],
          ),
        ],
      ),
    );
  }
}
