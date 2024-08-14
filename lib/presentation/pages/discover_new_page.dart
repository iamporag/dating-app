// ignore_for_file: unused_local_variable, unused_field, prefer_final_fields, unused_import

import 'package:appinio_swiper/appinio_swiper.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:dating_app/data/dummy/dummy.dart';
import 'package:dating_app/data/models/profile_model.dart';
import 'package:dating_app/presentation/pages/user_profile.dart';
import 'package:dating_app/presentation/widgets/profile_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

import '../../routes/routes.dart';

class DiscoverNewPage extends StatefulWidget {
  final List<ProfileModel> profiles;
  const DiscoverNewPage({super.key, required this.profiles});

  @override
  State<DiscoverNewPage> createState() => _DiscoverNewPageState();
}

class _DiscoverNewPageState extends State<DiscoverNewPage> {
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
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.transparent, Colors.black.withOpacity(0.5)],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: Scaffold(
          backgroundColor: Colors.transparent,
          body: CustomScrollView(
            slivers: [
              SliverAppBar(
                title: Text(
                  "Dating App",
                  style: Theme.of(context).textTheme.titleLarge?.copyWith(
                        color: Theme.of(context).primaryColor,
                      ),
                ),
                floating: true,
                pinned: true,
              ),
              const SliverToBoxAdapter(
                child: Gap(30),
              ),
              SliverToBoxAdapter(
                child: SizedBox(
                  height: layout.size.height * 0.75,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: AppinioSwiper(
                      swipeOptions: const SwipeOptions.symmetric(
                        horizontal: true,
                      ),
                      backgroundCardCount: 0,
                      loop: true,
                      cardCount: Dummy.discover.length,
                      onSwipeEnd: (previousIndex, currentIndex, activity) {},
                      cardBuilder: (BuildContext context, int index) => Card(
                        elevation: 10,
                        clipBehavior: Clip.hardEdge,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        child: Stack(
                          fit: StackFit.expand,
                          alignment: Alignment.center,
                          children: [
                            CarouselSlider(
                              carouselController: _carouselSliderController,
                              items: Dummy.discover[index].mediaUrls.map((url) {
                                return Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    image: DecorationImage(
                                        image: CachedNetworkImageProvider(url),
                                        fit: BoxFit.cover),
                                  ),
                                );
                              }).toList(),
                              options: CarouselOptions(
                                // autoPlay: Dummy.discover[index].mediaUrls[index].isEmpty ||
                                //         Dummy.discover[index].mediaUrls[index].length == 1
                                //     ? false
                                //     : true,
                                enlargeCenterPage: false,
                                enableInfiniteScroll: true,
                                initialPage: _currentIndex,
                                onPageChanged: (index, reason) {
                                  setState(() {
                                    _currentIndex = index;
                                  });
                                },
                                viewportFraction: 1.0,
                                height: MediaQuery.of(context).size.height,
                                aspectRatio: 9 / 16,
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
                                          _carouselSliderController
                                              .previousPage();
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
                            Align(
                              alignment: Alignment.topCenter,
                              child: Padding(
                                padding: const EdgeInsets.only(top: 6.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: Dummy.discover[index].mediaUrls
                                      .asMap()
                                      .entries
                                      .map((entry) {
                                    return GestureDetector(
                                      onTap: () => _carouselSliderController
                                          .animateToPage(entry.key),
                                      child: Container(
                                        width: 20.0,
                                        height: 6.0,
                                        margin: const EdgeInsets.symmetric(
                                            vertical: 8.0, horizontal: 4.0),
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            shape: BoxShape.rectangle,
                                            color: (Theme.of(context)
                                                            .brightness ==
                                                        Brightness.dark
                                                    ? Colors.white
                                                    : Colors.grey)
                                                .withOpacity(
                                                    _currentIndex == entry.key
                                                        ? 0.9
                                                        : 0.4)),
                                      ),
                                    );
                                  }).toList(),
                                ),
                                // child: SizedBox(
                                //   width: MediaQuery.of(context).size.width - 20,
                                //   height: 6,
                                //   child: ListView.builder(
                                //     physics: const NeverScrollableScrollPhysics(),
                                //     itemCount:
                                //         Dummy.discover[index].mediaUrls.length,
                                //     scrollDirection: Axis.horizontal,
                                //     itemBuilder: (context, index) {
                                //       return Padding(
                                //         padding: EdgeInsets.only(left: 8.0),
                                //         child: Container(
                                //           width: ((MediaQuery.of(context)
                                //                       .size
                                //                       .width -
                                //                   (20 +
                                //                       ((Dummy
                                //                                   .discover[index]
                                //                                   .mediaUrls
                                //                                   .length +
                                //                               1) *
                                //                           8))) /
                                //               Dummy.discover[index].mediaUrls
                                //                   .length),
                                //           decoration: BoxDecoration(
                                //               borderRadius:
                                //                   BorderRadius.circular(20),
                                //               border: Border.all(
                                //                   color: Colors.white, width: 0.5),
                                //               color: Colors.amber),
                                //         ),
                                //       );
                                //     },
                                //   ),
                                // ),
                              ),
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
                                          Dummy.discover[index].name,
                                          style: theme.textTheme.titleLarge
                                              ?.copyWith(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold),
                                        ),
                                        const Gap(15),
                                        Text(
                                          Dummy.discover[index].age.toString(),
                                          style: theme.textTheme.titleLarge
                                              ?.copyWith(
                                                  color: Colors.white,
                                                  fontWeight:
                                                      FontWeight.normal),
                                        ),
                                      ],
                                    ),
                                    subtitle: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
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
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    'Studied in ${Dummy.discover[index].university}',
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    style: theme
                                                        .textTheme.bodySmall
                                                        ?.copyWith(
                                                            color:
                                                                Colors.white),
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
                                                '${Dummy.discover[index].distanceInKilo} kilometer away',
                                                overflow: TextOverflow.ellipsis,
                                                style: theme.textTheme.bodySmall
                                                    ?.copyWith(
                                                        color: Colors.white),
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
                                      onTap: () {
                                        context.pushNamed(Routes.LOGIN_ROUTE.name);
                                      },
                                      child: Container(
                                        width: 60,
                                        height: 60,
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          image: DecorationImage(
                                            image: CachedNetworkImageProvider(
                                                Dummy.discover[index]
                                                    .profileImage),
                                            fit: BoxFit.cover,
                                          ),
                                        ),
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
                      ),
                    ),
                  ),
                ),
              )
            ],
          )),
    );
  }

  //   void _changeBioImageRight() {
  //   setState(() {
  //     if (_currentCarouselIndex < widget.profiles.length - 1) {
  //       _currentCarouselIndex++;
  //     } else {
  //       _currentCarouselIndex = 0;
  //     }
  //     _carouselSliderController.nextPage();
  //   });
  // }

  // void _changeBioImageLeft() {
  //   setState(() {
  //     if (_currentCarouselIndex > 0) {
  //       _currentCarouselIndex--;
  //     } else {
  //       _currentCarouselIndex = widget.profiles.length - 1;
  //     }
  //      _carouselSliderController.nextPage();
  //   });
  // }
}

// Widget buildMenu(context) =>

Widget buildLogo() => AppBar(
      backgroundColor: Colors.transparent,
      title: const Row(
        children: [
          Icon(
            Icons.local_fire_department_rounded,
            color: Colors.white,
            size: 34,
          ),
          SizedBox(
            width: 4,
          ),
          Text(
            "Dating App",
            style: TextStyle(
                fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),
          )
        ],
      ),
    );
