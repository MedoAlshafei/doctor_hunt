import 'package:doctor_hunt/core/constants/app_image.dart';

class LiveStreamModel {
  LiveStreamModel({required this.image, this.live});

  final String image;
  final String? live;

  factory LiveStreamModel.fromJson(Map<String, dynamic> json) {
    return LiveStreamModel(
      image: json['image'] ?? '',
      live: json['live'] ?? '',
    );
  }

  Map<String, dynamic> toJson() {
    return {'image': image, 'live': live};
  }
}

List<LiveStreamModel> liveStreamList = [
  LiveStreamModel(image: AppImage.doctorOneImage),
  LiveStreamModel(image: AppImage.doctorTwoImage),
  LiveStreamModel(image: AppImage.doctorTwoImage),
  LiveStreamModel(image: AppImage.doctorTwoImage),
  LiveStreamModel(image: AppImage.doctorTwoImage),
];
