import 'package:flutter/material.dart';
import 'dart:ui';

class OverlayBlurImageExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Overlay Blur Image Example'),
        ),
        body: GridView.builder(
          clipBehavior: Clip.hardEdge,
          itemCount: 5,
          gridDelegate:const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 8.0,
            crossAxisSpacing: 8.0,
          ),
          itemBuilder: (context, index) => Card(
            elevation: 10,
            child: ClipRRect(
              child: ImageFiltered(
                imageFilter: ImageFilter.blur(sigmaX: 30, sigmaY: 30),
                child: Image.network(
                  'https://images.pexels.com/photos/4584578/pexels-photo-4584578.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
                  width: 300,
                  height: 300,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ));
  }
}

void main() => runApp(MaterialApp(home: OverlayBlurImageExample()));








// import 'package:flutter/material.dart';

// class GalleryBox extends StatelessWidget {
//   final List<String> imageUrls = [
//     'https://example.com/image1.jpg',
//     'https://example.com/image2.jpg',
//     'https://example.com/image3.jpg',
//     'https://example.com/image4.jpg',
//     'https://example.com/image5.jpg',
//     'https://example.com/image6.jpg',
//     'https://example.com/image7.jpg',
//     'https://example.com/image8.jpg',
//     'https://example.com/image9.jpg',
//     'https://example.com/image10.jpg',
//     'https://example.com/image11.jpg',
//     'https://example.com/image12.jpg',
//     'https://example.com/image13.jpg',
//     'https://example.com/image14.jpg',
//     'https://example.com/image15.jpg',
//   ];

//   @override
//   Widget build(BuildContext context) {
//     int remainingImages = imageUrls.length - 5;

//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Gallery Box'),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Text(
//               'Gallery',
//               style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//             ),
//             SizedBox(height: 10),
//             Row(
//               children: [
//                 // Display first 5 images
//                 for (int i = 0; i < 5; i++)
//                   if (i < imageUrls.length)
//                     Expanded(
//                       child: Padding(
//                         padding: const EdgeInsets.symmetric(horizontal: 4.0),
//                         child: Image.network(
//                           imageUrls[i],
//                           fit: BoxFit.cover,
//                           height: 100,
//                         ),
//                       ),
//                     ),
//                 // Display "10 more images" text if there are more than 5 images
//                 if (remainingImages > 0)
//                   Expanded(
//                     child: GestureDetector(
//                       onTap: () {
//                         // Navigate to full gallery on tap
//                         Navigator.push(
//                           context,
//                           MaterialPageRoute(
//                             builder: (context) => FullImageGallery(
//                               imageUrls: imageUrls,
//                             ),
//                           ),
//                         );
//                       },
//                       child: Container(
//                         color: Colors.black.withOpacity(0.5),
//                         height: 100,
//                         child: Center(
//                           child: Text(
//                             '+ $remainingImages more',
//                             style: TextStyle(
//                               color: Colors.white,
//                               fontSize: 16,
//                               fontWeight: FontWeight.bold,
//                             ),
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class FullImageGallery extends StatelessWidget {
//   final List<String> imageUrls;

//   FullImageGallery({required this.imageUrls});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Full Image Gallery'),
//       ),
//       body: GridView.builder(
//         padding: EdgeInsets.all(10.0),
//         gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//           crossAxisCount: 3, // 3 columns
//           crossAxisSpacing: 10,
//           mainAxisSpacing: 10,
//         ),
//         itemCount: imageUrls.length,
//         itemBuilder: (context, index) {
//           return Image.network(
//             imageUrls[index],
//             fit: BoxFit.cover,
//           );
//         },
//       ),
//     );
//   }
// }

// void main() => runApp(MaterialApp(home: GalleryBox()));














// import 'package:flutter/material.dart';

// class GalleryGridBox extends StatelessWidget {
//   final List<String> imageUrls = [
//     'https://example.com/image1.jpg',
//     'https://example.com/image2.jpg',
//     'https://example.com/image3.jpg',
//     'https://example.com/image4.jpg',
//     'https://example.com/image5.jpg',
//     'https://example.com/image6.jpg',
//     'https://example.com/image7.jpg',
//     'https://example.com/image8.jpg',
//     'https://example.com/image9.jpg',
//     'https://example.com/image10.jpg',
//     'https://example.com/image11.jpg',
//     'https://example.com/image12.jpg',
//     'https://example.com/image13.jpg',
//     'https://example.com/image14.jpg',
//     'https://example.com/image15.jpg',
//   ];

//   @override
//   Widget build(BuildContext context) {
//     int remainingImages = imageUrls.length - 5;

//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Gallery Grid Box'),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Text(
//               'Gallery',
//               style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//             ),
//             SizedBox(height: 10),
//             GridView.builder(
//               shrinkWrap: true,
//               physics: NeverScrollableScrollPhysics(),
//               gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                 crossAxisCount: 3, // 3 columns
//                 crossAxisSpacing: 10,
//                 mainAxisSpacing: 10,
//               ),
//               itemCount: remainingImages > 0 ? 6 : imageUrls.length,
//               itemBuilder: (context, index) {
//                 if (index == 5 && remainingImages > 0) {
//                   return GestureDetector(
//                     onTap: () {
//                       // Navigate to full gallery on tap
//                       Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                           builder: (context) => FullImageGallery(
//                             imageUrls: imageUrls,
//                           ),
//                         ),
//                       );
//                     },
//                     child: Container(
//                       color: Colors.black.withOpacity(0.5),
//                       child: Center(
//                         child: Text(
//                           '+ $remainingImages more',
//                           style: TextStyle(
//                             color: Colors.white,
//                             fontSize: 16,
//                             fontWeight: FontWeight.bold,
//                           ),
//                         ),
//                       ),
//                     ),
//                   );
//                 } else {
//                   return Image.network(
//                     imageUrls[index],
//                     fit: BoxFit.cover,
//                   );
//                 }
//               },
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class FullImageGallery extends StatelessWidget {
//   final List<String> imageUrls;

//   FullImageGallery({required this.imageUrls});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Full Image Gallery'),
//       ),
//       body: GridView.builder(
//         padding: EdgeInsets.all(10.0),
//         gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//           crossAxisCount: 3, // 3 columns
//           crossAxisSpacing: 10,
//           mainAxisSpacing: 10,
//         ),
//         itemCount: imageUrls.length,
//         itemBuilder: (context, index) {
//           return Image.network(
//             imageUrls[index],
//             fit: BoxFit.cover,
//           );
//         },
//       ),
//     );
//   }
// }

// void main() => runApp(MaterialApp(home: GalleryGridBox()));
