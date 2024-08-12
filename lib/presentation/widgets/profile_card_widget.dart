// ignore_for_file: prefer_final_fields, non_constant_identifier_names

import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class ProfileCardWidget extends StatefulWidget {
  final List<String> galleryMediaUrls;
  final String profilePicture;
  final String name;
  final int age;
  final String institutes;
  final String city;
  final String country;
  final double distance;

  const ProfileCardWidget({
    super.key,
    required this.galleryMediaUrls,
    required this.profilePicture,
    required this.name,
    required this.age,
    required this.institutes,
    required this.city,
    required this.country,
    required this.distance,
  });

  @override
  State<ProfileCardWidget> createState() => _ProfileCardWidgetState();
}

class _ProfileCardWidgetState extends State<ProfileCardWidget> {
  late CarouselSliderController _carouselSliderController;

  int _currentIndex = 0;

  @override
  void initState() {
    super.initState();
    _carouselSliderController = CarouselSliderController();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final layout = MediaQuery.of(context);
    return Card(
      elevation: 10,
      clipBehavior: Clip.hardEdge,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Stack(
        fit: StackFit.expand,
        alignment: Alignment.center,
        children: [
          CarouselSlider.builder(
            itemCount: widget.galleryMediaUrls.length,
            itemBuilder: (context, index, realIndex) {
              return Stack(alignment: Alignment.center, children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  child: Hero(
                    tag: "imageTage$index",
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          image: CachedNetworkImageProvider(
                              widget.galleryMediaUrls[index]),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                        colors: [
                          Colors.transparent,
                          Colors.black.withOpacity(0.9),
                        ],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        stops: const [0.7, 1]),
                  ),
                ),
                Row(
                  children: [
                    Expanded(
                        child: GestureDetector(
                            onTap: () {
                              _carouselSliderController.previousPage();
                            },
                            child: Container(
                              color: Colors.transparent,
                            ))),
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          _carouselSliderController.nextPage();
                        },
                        child: Container(
                          color: Colors.transparent,
                        ),
                      ),
                    ),
                  ],
                ),
                //       Row(
                //   mainAxisAlignment: MainAxisAlignment.center,
                //   children: widget.galleryMediaUrls.asMap().entries.map((entry) {
                //     return GestureDetector(
                //       onTap: () => _carouselController.animateToPage(entry.key),
                //       child: Container(
                //         width: 12.0,
                //         height: 12.0,
                //         margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
                //         decoration: BoxDecoration(
                //           shape: BoxShape.circle,
                //           color: (Theme.of(context).brightness == Brightness.dark
                //                   ? Colors.white
                //                   : Colors.black)
                //               .withOpacity(_currentIndex == entry.key ? 0.9 : 0.4),
                //         ),
                //       ),
                //     );
                //   }).toList(),
                // ),
              ]);
            },
            options: CarouselOptions(
                enlargeCenterPage: true,
                enableInfiniteScroll: false,
                initialPage: _currentIndex,
                onPageChanged: (index, reason) {},
                viewportFraction: 1.0,
                scrollPhysics: const NeverScrollableScrollPhysics(),
                height: MediaQuery.of(context).size.height,
                aspectRatio: 9 / 16),
          ),
          SizedBox(
            height: layout.size.height,
            width: layout.size.width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ListTile(
                  title: Row(
                    children: [
                      Text(
                        widget.name,
                        style: theme.textTheme.titleLarge?.copyWith(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                      const Gap(15),
                      Text(
                        widget.age.toString(),
                        style: theme.textTheme.titleLarge?.copyWith(
                            color: Colors.white, fontWeight: FontWeight.normal),
                      ),
                    ],
                  ),
                  subtitle: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Gap(5),
                      Row(
                        children: [
                          Icon(
                            Icons.school,
                            color: Colors.white,
                            size: 15.sp,
                          ),
                          const Gap(5),
                          Expanded(
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Studied in ${widget.institutes}',
                                  overflow: TextOverflow.ellipsis,
                                  style: theme.textTheme.bodySmall
                                      ?.copyWith(color: Colors.white),
                                ),
                                // Text(
                                //   grade ?? department,
                                //   overflow: TextOverflow.ellipsis,
                                //   style: theme.textTheme.bodySmall
                                //       ?.copyWith(color: Colors.white),
                                // )
                              ],
                            ),
                          )
                        ],
                      ),
                      const Gap(5),
                      Row(
                        children: [
                          Icon(
                            Icons.location_pin,
                            color: Colors.white,
                            size: 15.sp,
                          ),
                          const Gap(5),
                          Expanded(
                            child: Text(
                              '${widget.distance} kilometer away',
                              overflow: TextOverflow.ellipsis,
                              style: theme.textTheme.bodySmall
                                  ?.copyWith(color: Colors.white),
                            ),
                          )
                        ],
                      ),
                      // Wrap(
                      //   spacing: 2,
                      //   children: widget.hobbies
                      //       .map((hobby) => Chip(
                      //             label: Text(hobby),
                      //             labelStyle: theme.textTheme.labelSmall
                      //                 ?.copyWith(
                      //                     color: theme.colorScheme.onSecondary),
                      //             color: WidgetStatePropertyAll(
                      //                 theme.colorScheme.secondary),
                      //           ))
                      //       .toList(),
                      // )
                    ],
                  ),
                  trailing: InkWell(
                    borderRadius: BorderRadius.circular(100),
                    // onTap: onProfilePicTap,
                    child: CircleAvatar(
                      radius: 30.dm,
                      backgroundColor: Colors.black45,
                      backgroundImage:
                          CachedNetworkImageProvider(widget.profilePicture),
                    ),
                  ),
                ),
                const Gap(7),
                ReactionButtonSetWidget(),
                const Gap(10),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

Widget ReactionButtonSetWidget() => Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ElevatedButton(
          style: ElevatedButton.styleFrom(
              backgroundColor: Colors.red.withOpacity(0.5),
              elevation: 8,
              padding: const EdgeInsets.only(
                  left: 35, right: 35, top: 5.0, bottom: 5.0)),
          onPressed: () {},
          child: const Icon(
            Icons.clear,
            color: Colors.white,
            size: 30,
          ),
        ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.cyan.withOpacity(0.5),
            elevation: 8,
            padding: const EdgeInsets.only(
                left: 35, right: 35, top: 5.0, bottom: 5.0),
          ),
          onPressed: () {},
          child: const Icon(
            Icons.star_outline,
            color: Colors.white,
            size: 30,
          ),
        ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
              backgroundColor: Colors.teal.withOpacity(0.5),
              elevation: 8,
              padding: const EdgeInsets.only(
                  left: 35, right: 35, top: 5.0, bottom: 5.0)),
          onPressed: () {},
          child: const Icon(
            Icons.favorite_outline,
            color: Colors.white,
            size: 30,
          ),
        ),
      ],
    );
