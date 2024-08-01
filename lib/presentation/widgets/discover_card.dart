import 'package:appinio_swiper/appinio_swiper.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../../data/dummy/dummy.dart';

class TinderCard extends StatelessWidget {
  const TinderCard({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    // final layout = MediaQuery.of(context);
    return AppinioSwiper(
        loop: true,
        cardCount: Dummy.discover.length,
        onSwipeEnd: (previousIndex, targetIndex, activity) {},
        cardBuilder: (context, index) => Card(
            elevation: 10,
            clipBehavior: Clip.hardEdge,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            child: Stack(
              fit: StackFit.expand,
              children: [
                CarouselSlider(
                  options: CarouselOptions(
                    initialPage: 2,
                      autoPlay: true,
                      aspectRatio: 1 / 2,
                      viewportFraction: 1.0),
                  items: Dummy.discover[index].mediaUrls.map((url) {
                    return Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: CachedNetworkImageProvider(url),
                            fit: BoxFit.cover),
                      ),
                    );
                  }).toList(),
                ),
                Container(
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Colors.transparent, Colors.black],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      stops: [0.7, 1],
                    ),
                  ),
                  child: Container(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      children: [
                        const Spacer(),
                        // buildName(),
                        // const SizedBox(
                        //   height: 8,
                        // ),
                        // buildStatus(),
                        buildDiscoverInfo(index, theme),
                        
                      ],
                    ),
                  ),
                )
              ],
            )));
  }

  Widget buildDiscoverInfo(int index, ThemeData theme) => Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          Dummy.discover[index].name,
                          style:const TextStyle(
                              fontSize: 32,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        SizedBox(
                          width: 16,
                        ),
                        Text(
                          Dummy.discover[index].age.toString(),
                          style: TextStyle(fontSize: 32, color: Colors.white),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        const Icon(Icons.school_outlined),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(
                          "Studied in " +
                              Dummy.discover[index].university.toString() +
                              '.',
                          style: theme.textTheme.bodySmall,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        const Icon(Icons.home_outlined),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(
                          "Lives in " + Dummy.discover[index].city + ', ' + Dummy.discover[index].country + '.',
                          style: theme.textTheme.bodySmall,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        const Icon(Icons.location_on_outlined),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(
                          Dummy.discover[index].distanceInKilo.toString(),
                          style: theme.textTheme.bodySmall,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(
                          "KM" + '.',
                          style: theme.textTheme.bodySmall,
                        ),
                      ],
                    ),
                  ],
                )
              ],
            ),
            SizedBox(
              width: 60,
              height: 60,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: CachedNetworkImage(
                  imageUrl: Dummy.discover[index].profileImage,
                  fit: BoxFit.cover,
                ),
              ),
            )
          ],
        ),
      ],
    );

  Widget buildName() => const Row(
        children: [
          Text(
            "UnKnown",
            style: TextStyle(
                fontSize: 32, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          SizedBox(
            width: 16,
          ),
          Text(
            "30",
            style: TextStyle(fontSize: 32, color: Colors.white),
          ),
        ],
      );

  Widget buildStatus() => Row(
        children: [
          Container(
            width: 12,
            height: 12,
            decoration: const BoxDecoration(
                shape: BoxShape.circle, color: Colors.green),
          ),
          const SizedBox(
            width: 8,
          ),
          const Text(
            'Recently Active',
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
            ),
          ),
        ],
      );

  Widget buildInfo() => const Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            "UnKnown",
                            style: TextStyle(
                                fontSize: 32,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          SizedBox(
                            width: 16,
                          ),
                          Text(
                            "30",
                            style: TextStyle(fontSize: 32, color: Colors.white),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          const Icon(Icons.school_outlined),
                          const SizedBox(
                            width: 5,
                          ),
                          Text("Studied in Dhaka University"),
                        ],
                      ),
                      Row(
                        children: [
                          const Icon(Icons.school_outlined),
                          const SizedBox(
                            width: 5,
                          ),
                          Text("Studied in Dhaka University"),
                        ],
                      ),
                      Row(
                        children: [
                          const Icon(Icons.school_outlined),
                          const SizedBox(
                            width: 5,
                          ),
                          Text("Studied in Dhaka University"),
                        ],
                      ),
                    ],
                  )
                ],
              ),
              CircleAvatar(
                radius: 30,
                backgroundImage: CachedNetworkImageProvider(
                    "https://images.pexels.com/photos/3482718/pexels-photo-3482718.jpeg?auto=compress&cs=tinysrgb&w=400&lazy=load"),
              ),
            ],
          ),
        ],
      );
}