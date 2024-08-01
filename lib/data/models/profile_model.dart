
import 'interests_model.dart';

class ProfileModel {
  final int id;
  final String name;
  final String profileImage;
  final int age;
  final String country;
  final String city;
  final String? university;
  final double distanceInKilo;
  final int instituteId;
  final int profileCompleteProgress;
  final bool activeStatus;
  final List<InterestsModel> matches;
  final List<String> mediaUrls;

  const ProfileModel(
      {required this.id,
      required this.name,
      required this.profileImage,
      required this.age,
      required this.country,
      required this.city,
      this.university,
      required this.distanceInKilo,
      required this.instituteId,
      required this.profileCompleteProgress,
      required this.activeStatus,
      required this.matches,
      required this.mediaUrls});
}
