import 'package:doctor_hunt/core/constants/app_image.dart';
import 'package:doctor_hunt/core/constants/app_text.dart';
import 'package:doctor_hunt/features/live_stream_view/model/live_stream_model.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LiveStreamBuilder extends StatelessWidget {
  const LiveStreamBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    final height = size.height;
    final width = size.width;

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
      padding: const EdgeInsets.all(8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            AppText.liveDoctors,
            style: GoogleFonts.rubik(fontSize: 18, fontWeight: FontWeight.w500),
          ),
          const SizedBox(height: 4),
          SizedBox(
            height: height * 0.23,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: liveStreamList.length,
              itemBuilder: (context, index) {
                return Container(
                  // margin: const EdgeInsets.symmetric(horizontal: 4),
                  width: width * 0.32,
                  height: height * 0.3,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Image.asset(
                    liveStreamList[index].image,
                    fit: BoxFit.cover,
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
