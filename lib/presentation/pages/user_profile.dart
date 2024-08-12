import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class UserProfile extends StatelessWidget {
  const UserProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10.0),
          child: Column(
            children: [
              Align(
                alignment: Alignment.center,
                child: Container(
                  width: 150,
                  height: 150,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: CachedNetworkImageProvider(
                          "https://images.pexels.com/photos/2233740/pexels-photo-2233740.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              
              const Gap(10),
              const Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "Sakib,",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Gap(10),
                  Text(
                    "27",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Gap(5),
                  Icon(
                    Icons.check_circle,
                    color: Colors.blue,
                    size: 23.0,
                  ),
                ],
              ),
              const Gap(10),
              const Text("Gallery"),
              const Gap(10),
              SizedBox(
                height: 400,
                child: GridView.builder(
                  controller: ScrollController(),
                  shrinkWrap: true,
                  itemCount: 9,
                  itemBuilder: (context, index) => Image.network(
                    "https://images.pexels.com/photos/4584578/pexels-photo-4584578.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
                    fit: BoxFit.cover,
                  ),
                  scrollDirection: Axis.horizontal,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      mainAxisSpacing: 5,
                      crossAxisSpacing: 5),
                ),
              ),
              // Container(
              //   width: 500,
              //   height: 960,
              //   color: Colors.amber,
              // )
            ],
          ),
        ),
      ),
    );
  }
}
