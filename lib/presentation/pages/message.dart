// // ignore_for_file: non_constant_identifier_names

// import 'package:cached_network_image/cached_network_image.dart';
// import 'package:flutter/material.dart';
// import 'package:gap/gap.dart';

// class Message extends StatelessWidget {
//   const Message({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SingleChildScrollView(
//         child: SafeArea(
//           child: Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 0.0),
//             child: Column(
//               children: [
//                 const Align(
//                   alignment: Alignment.topLeft,
//                   child: Text("Message"),
//                 ),
//                 const Gap(10),
//                 message_card(),
//                 message_card(),
//                 message_card(),
//                 message_card(),
//                 message_card(),
//                 message_card(),
//                 message_card(),
//                 message_card(),
//                 message_card(),
//                 message_card(),
//                 message_card(),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }

//   Widget message_card() => InkWell(
//     borderRadius: BorderRadius.circular(10),
//     onTap: (){},
//     child: Padding(
//       padding: const EdgeInsets.all(8.0),
//       child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               Row(
//                 children: [
//                   Container(
//                     width: 55,
//                     height: 55,
//                     decoration: const BoxDecoration(
//                       shape: BoxShape.circle,
//                       image: DecorationImage(
//                           image: CachedNetworkImageProvider(
//                               "https://images.pexels.com/photos/4584578/pexels-photo-4584578.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
//                           fit: BoxFit.cover),
//                     ),
//                   ),
//                   const Gap(10),
//                   Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       const Text(
//                         "User Name",
//                         style: TextStyle(
//                           fontSize: 18,
//                           color: Colors.white,
//                         ),
//                       ),
//                       Row(
//                         children: [
//                           Text(
//                             "You: Hello Dear Porag",
//                             style: TextStyle(
//                               fontSize: 16,
//                               color: Colors.grey.withOpacity(0.5),
//                             ),
//                           ),
//                           Text(
//                             " - 18h",
//                             style: TextStyle(
//                               fontSize: 14,
//                               color: Colors.grey.withOpacity(0.5),
//                             ),
//                           ),
//                         ],
//                       ),
//                     ],
//                   ),
//                 ],
//               ),
//               const Icon(
//                 Icons.done_all_outlined,
//                 color: Colors.green,
//                 size: 18,
//               )
//             ],
//           ),
//     ),
//   );
// }


import 'package:dating_app/presentation/widgets/glass_likes.dart';
import 'package:flutter/material.dart';

class Message extends StatelessWidget {
  const Message({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: NestedScrollView(
          floatHeaderSlivers: true,
          headerSliverBuilder: (context, innerBoxIsScrolled) => [
            const SliverAppBar(),
          ],
          body: CustomScrollView(
            slivers: [
              const SliverToBoxAdapter(child: Text("Hello")),
              SliverPadding(
                padding: const EdgeInsets.all(8.0),
                sliver: SliverGrid.builder(
                  itemCount: 6,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 8,
                      crossAxisSpacing: 8,
                      mainAxisExtent: MediaQuery.of(context).size.width * 0.7),
                  itemBuilder: (context, index) {
                    return const glass_likes();
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
