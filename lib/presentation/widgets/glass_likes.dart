// ignore_for_file: camel_case_types

import 'dart:ui';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class glass_likes extends StatelessWidget {
  const glass_likes({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Stack(
        fit: StackFit.expand,
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: CachedNetworkImageProvider(
                    'https://images.pexels.com/photos/14120349/pexels-photo-14120349.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          // BackdropFilter(
          //   filter: ImageFilter.blur(
          //     sigmaX: 10.0,
          //     sigmaY: 10.0,
          //   ),
          //   child: Container(),
          // ),
          // Container(
          //   decoration: BoxDecoration(
          //     borderRadius: BorderRadius.circular(20),
          //     border: Border.all(
          //       color: Colors.black.withOpacity(0.13),
          //     ),
          //     gradient: LinearGradient(
          //       begin: Alignment.topCenter,
          //       end: Alignment.bottomCenter,
          //       colors: [
          //         Colors.grey.withOpacity(0.15),
          //         Colors.black.withOpacity(0.05),
          //       ],
          //     ),
          //   ),
          // ),
          Container(
            color: Colors.grey.withOpacity(0.5),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20)),
                      child: const Padding(
                        padding: EdgeInsets.only(
                            top: 5.0, bottom: 5.0, left: 30.0, right: 30.0),
                        child: Icon(
                          Icons.close,
                          color: Colors.black54,
                        ),
                      ),
                    ),
                    const Gap(10),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20)),
                      child: const Padding(
                        padding: EdgeInsets.only(
                            top: 5.0, bottom: 5.0, left: 30.0, right: 30.0),
                        child: Icon(
                          Icons.close,
                          color: Colors.black54,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
