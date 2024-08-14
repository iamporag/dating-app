import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ProfileEdit extends StatelessWidget {
  const ProfileEdit({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: NestedScrollView(
          floatHeaderSlivers: true,
          headerSliverBuilder: (context, innerBoxIsScrolled) => [
            SliverAppBar(
              pinned: true,
              title: Text("Hello Sakib!"),
            )
          ],
          body: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: ListTile(
                  title: Text(
                    "Photos and Videos",
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  subtitle: Text(
                      "Each photo or video increases your rating by 5%",
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                          color: Theme.of(context).colorScheme.outline)),
                ),
              ),
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Stack(
                          children: [
                            Container(
                              height: 200,
                              decoration: BoxDecoration(
                                color: Colors.white30,
                                borderRadius: BorderRadius.circular(10),
                                image: const DecorationImage(
                                  image: CachedNetworkImageProvider(
                                    "https://images.pexels.com/photos/4584578/pexels-photo-4584578.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
                                  ),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            const Positioned(
                              top: 5,
                              right: 5,
                              child: Icon(Icons.close),
                            )
                          ],
                        ),
                      ),
                      const Gap(5),
                      Expanded(
                        child: Stack(
                          children: [
                            Container(
                              height: 200,
                              decoration: BoxDecoration(
                                color: Colors.white30,
                                borderRadius: BorderRadius.circular(10),
                                image: const DecorationImage(
                                  image: CachedNetworkImageProvider(
                                    "https://images.pexels.com/photos/4584578/pexels-photo-4584578.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
                                  ),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            const Positioned(
                              top: 5,
                              right: 5,
                              child: Icon(Icons.close),
                            )
                          ],
                        ),
                      ),
                      const Gap(5),
                      Expanded(
                        child: Stack(
                          children: [
                            Container(
                              height: 200,
                              decoration: BoxDecoration(
                                color: Colors.white30,
                                borderRadius: BorderRadius.circular(10),
                                image: const DecorationImage(
                                  image: CachedNetworkImageProvider(
                                    "https://images.pexels.com/photos/4584578/pexels-photo-4584578.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
                                  ),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            const Positioned(
                              top: 5,
                              right: 5,
                              child: Icon(Icons.close),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SliverToBoxAdapter(
                child: Gap(5),
              ),
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Stack(
                          children: [
                            Container(
                              height: 200,
                              decoration: BoxDecoration(
                                color: Colors.white30,
                                borderRadius: BorderRadius.circular(10),
                                image: const DecorationImage(
                                  image: CachedNetworkImageProvider(
                                    "https://images.pexels.com/photos/4584578/pexels-photo-4584578.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
                                  ),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            const Positioned(
                              top: 5,
                              right: 5,
                              child: Icon(Icons.close),
                            )
                          ],
                        ),
                      ),
                      const Gap(5),
                      Expanded(
                        child: Stack(
                          children: [
                            Container(
                              height: 200,
                              decoration: BoxDecoration(
                                color: Colors.white30,
                                borderRadius: BorderRadius.circular(10),
                                image: const DecorationImage(
                                  image: CachedNetworkImageProvider(
                                    "https://images.pexels.com/photos/4584578/pexels-photo-4584578.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
                                  ),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            const Positioned(
                              top: 5,
                              right: 5,
                              child: Icon(Icons.close),
                            )
                          ],
                        ),
                      ),
                      const Gap(5),
                      Expanded(
                        child: Stack(
                          children: [
                            Container(
                              height: 200,
                              decoration: BoxDecoration(
                                color: Colors.white30,
                                borderRadius: BorderRadius.circular(10),
                                image: const DecorationImage(
                                  image: CachedNetworkImageProvider(
                                    "https://images.pexels.com/photos/4584578/pexels-photo-4584578.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
                                  ),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            const Positioned(
                              top: 5,
                              right: 5,
                              child: Icon(Icons.close),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
