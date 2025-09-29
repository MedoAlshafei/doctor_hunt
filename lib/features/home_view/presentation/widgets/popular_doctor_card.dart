import 'package:flutter/material.dart';

class DoctorCard extends StatelessWidget {
  const DoctorCard({
    super.key,
    required this.imageUrl,
    required this.name,
    required this.specialty,
    required this.rating,
  });

  final String imageUrl;
  final String name;
  final String specialty;
  final double rating;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 190,
      margin: EdgeInsets.only(right: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 10,
            spreadRadius: 2,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        children: [
          Container(
            height: 170,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(8),
                topRight: Radius.circular(8),
              ),
              image: DecorationImage(
                image: AssetImage(imageUrl),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(12),
            child: Column(
              children: [
                Text(name),
                Text(specialty),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(5, (starIndex) {
                    return Icon(
                      Icons.star,
                      size: 14,
                      color: starIndex < rating
                          ? Colors.amber
                          : Colors.grey[300],
                    );
                  }),
                ),
              ],
            ),
          ),
        ],
      ),
    );

    // return Card(
    //   shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
    //   elevation: 10,
    //   shadowColor: Colors.black,
    //   child: SizedBox(
    //     width: 200,
    //     height: 350,
    //     child: Column(
    //       mainAxisSize: MainAxisSize.min,
    //       children: [
    //         Image.asset(imageUrl, width: 150, height: 100, fit: BoxFit.cover),
    //         const SizedBox(height: 8),
    //         Text(
    //           name,
    //           style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
    //         ),
    //         Text(
    //           specialty,
    //           style: TextStyle(color: Colors.grey[600], fontSize: 13),
    //         ),
    //         const SizedBox(height: 8),
    //         Row(
    //           mainAxisAlignment: MainAxisAlignment.center,
    //           children: List.generate(5, (index) {
    //             return Icon(
    //               index < rating ? Icons.star : Icons.star_border,
    //               color: Colors.amber,
    //               size: 18,
    //             );
    //           }),
    //         ),
    //       ],
    //     ),
    //   ),
    // );
  }
}
