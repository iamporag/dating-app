import 'package:dating_app/presentation/widgets/glass_likes.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class MatchNew extends StatelessWidget {
  const MatchNew({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(),
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
          SliverToBoxAdapter(
            child: Center(
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
          ),
          const SliverToBoxAdapter(
            child: Gap(20),
          ),
          SliverToBoxAdapter(
            child: Padding(
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
          ),
          // const SliverToBoxAdapter(child: Text("Hello")),
          const SliverToBoxAdapter(
            child: Gap(20),
          ),
          SliverPadding(
            padding: const EdgeInsets.all(8.0),
            sliver: SliverGrid.builder(
              itemCount: 10,
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
    );
  }
}
