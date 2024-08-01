// import 'package:cached_network_image/cached_network_image.dart';
// import 'package:carousel_slider/carousel_slider.dart';
// import 'package:flutter/material.dart';

// class ProfileCardWidget extends StatelessWidget {
//   final List<String> galleryMediaUrls;
//   final String profilePicture;
//   final String name;
//   final int age;
//   final String institutes;
//   final String city;
//   final String country;
//   final double distance;

//   const ProfileCardWidget(
//       {super.key,
//       required this.galleryMediaUrls,
//       required this.profilePicture,
//       required this.name,
//       required this.age,
//       required this.institutes,
//       required this.city,
//       required this.country,
//       required this.distance});

//   @override
//   Widget build(BuildContext context) {
//     final theme = Theme.of(context);
//     final layout = MediaQuery.of(context);
//     return Card(
//       elevation: 10,
//       clipBehavior: Clip.hardEdge,
//       shape: RoundedRectangleBorder(
//         borderRadius: BorderRadius.circular(10),
//       ),
//       child: Stack(
//         fit: StackFit.expand,
//         children: [
//           CarouselSlider(
//             items: galleryMediaUrls.isEmpty 
//             ? [
//             Container(

//             ),
//             ] : galleryMediaUrls.map((url)=> Container()), 
//             options: CarouselOptions()
//             ),
//         ],
//       ),
//     );
//   }
// }
