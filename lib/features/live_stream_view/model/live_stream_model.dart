import 'package:doctor_hunt/core/constants/app_image.dart';

class LiveStreamModel {
  final String image;

  LiveStreamModel({required this.image});

  factory LiveStreamModel.fromJson(Map<String, dynamic> json) {
    return LiveStreamModel(image: json['image'] ?? '');
  }

  Map<String, dynamic> toJson() {
    return {'image': image};
  }
}

List<LiveStreamModel> liveStreamList = [
  LiveStreamModel(image: AppImage.doctorOneImage),
  LiveStreamModel(image: AppImage.doctorTwoImage),
  LiveStreamModel(image: AppImage.doctorThreeImage),
];
