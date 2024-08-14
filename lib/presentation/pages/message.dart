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

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class Message extends StatelessWidget {
  const Message({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(),
      body: CustomScrollView(
        physics: BouncingScrollPhysics(),
        slivers: [
          SliverAppBar(
            title: Text(
              "Chat",
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                    color: Theme.of(context).primaryColor,
                  ),
            ),
            floating: true,
            pinned: true,
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 20.0),
              child: Container(
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.grey.shade800.withOpacity(0.5),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: Row(
                    children: [
                      Icon(
                        Icons.search,
                        size: 21,
                        color: Theme.of(context).hintColor
                      ),
                      const Gap(5),
                      Text("Search",style: TextStyle(fontSize: 18,color: Theme.of(context).hintColor),),
                    ],
                  ),
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 85,
              child: ListView.separated(
                physics: const BouncingScrollPhysics(),
                shrinkWrap: true,
                controller: ScrollController(),
                padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                separatorBuilder: (context, index) => const Gap(20),
                itemBuilder: (context, index) {
                  return const Column(
                    children: [
                      CircleAvatar(
                        radius: 30,
                        backgroundImage: CachedNetworkImageProvider(
                            "https://images.pexels.com/photos/4584578/pexels-photo-4584578.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            left: 5.0, right: 5.0, top: 2.0, bottom: 2.0),
                        child: Text(
                          "Sakib",
                          style: TextStyle(fontSize: 14),
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
          ),
          const SliverToBoxAdapter(
            child: Gap(5),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: MediaQuery.of(context).size.height,
              child: ListView.separated(
                physics: const BouncingScrollPhysics(),
                shrinkWrap: true,
                controller: ScrollController(),
                padding: const EdgeInsets.only(left: 16.0, right: 16.0),
                scrollDirection: Axis.vertical,
                itemCount: 10,
                separatorBuilder: (context, index) => const Gap(10),
                itemBuilder: (context, index) {
                  return message_card();
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}

Widget message_card() => InkWell(
      borderRadius: BorderRadius.circular(10),
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  width: 55,
                  height: 55,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image: CachedNetworkImageProvider(
                            "https://images.pexels.com/photos/4584578/pexels-photo-4584578.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
                        fit: BoxFit.cover),
                  ),
                ),
                const Gap(10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Sakib Hasan Poag",
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          "Anika: Hello Dear Porag",
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.grey.withOpacity(0.5),
                          ),
                        ),
                        Text(
                          " - 18h",
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey.withOpacity(0.5),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            const Icon(
              Icons.done_all_outlined,
              color: Colors.green,
              size: 18,
            )
          ],
        ),
      ),
    );
