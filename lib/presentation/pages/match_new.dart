import 'dart:ui';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:dating_app/presentation/widgets/glass_likes.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class MatchNew extends StatelessWidget {
  const MatchNew({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 20.0),
          child: Column(
            children: [
              Center(
                child: CircleAvatar(
                  radius: 25,
                  backgroundColor: Colors.blue.withOpacity(0.2),
                  child: const Icon(
                    Icons.favorite,
                    color: Colors.blue,
                    size: 28,
                  ),
                ),
              ),
              const Gap(10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: Text(
                  "These people like you. You can meet them in the profile section or take a look here with premium subscription.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey.withOpacity(0.5),
                  ),
                ),
              ),
              const Gap(10),
              const ListTile(
                title: Text("Likes"),
              ),
              const Divider(),
              const Gap(10),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.65,
                width: MediaQuery.of(context).size.width,
                child: GridView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  controller: ScrollController(),
                  itemCount: 6,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 5.0,
                    crossAxisSpacing: 5.0,
                  ),
                  itemBuilder: (context, index) {
                    return glass_likes();
                  },
                ),
              ),

              // const Gap(20),
              // Container(
              //   height: 500,
              //   decoration: BoxDecoration(
              //       color: Colors.amber,
              //       borderRadius: BorderRadius.circular(20)),
              // )
            ],
          ),
        ),
      ),
    );
  }
}

// Stack(
//                         children: [
//                           ConstrainedBox(
//                             constraints:const BoxConstraints.expand(),
//                             child: CachedNetworkImage(
//                               imageUrl:
//                                   "https://images.pexels.com/photos/4584578/pexels-photo-4584578.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
//                               fit: BoxFit.cover,
//                             ),
//                           ),
//                           ClipRRect(
//                             child: BackdropFilter(
//                               filter:
//                                   ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
//                               child: Container(
//                                 width: 200.0,
//                                 height: 200.0,
//                                 decoration: BoxDecoration(
//                                     color: Colors.grey.shade200.withOpacity(0.5)),
//                               ),
//                             ),
//                           )
//                         ],
//                       ),