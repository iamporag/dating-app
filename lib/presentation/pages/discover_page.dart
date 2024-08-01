
import 'package:flutter/material.dart';

import '../widgets/discover_card.dart';

class DiscoverPage extends StatelessWidget {
  const DiscoverPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.red.shade200, Colors.black],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: Container(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                buildLogo(),
                const SizedBox(
                  height: 10,
                ),
                const Expanded(
                  child: TinderCard(),
                ),
                const SizedBox(
                  height: 16,
                ),
                buildButtons(),
              ],
            ),
          ),
        ),
      ),
    );
  }

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
  
  
  
  
  
  
  // const Row(
  //       children: [
  //         Icon(
  //           Icons.local_fire_department_rounded,
  //           color: Colors.white,
  //           size: 34,
  //         ),
  //         SizedBox(
  //           width: 4,
  //         ),
  //         Text(
  //           "Dating App",
  //           style: TextStyle(
  //               fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),
  //         )
  //       ],
  //     );
}

Widget buildButtons() => Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            elevation: 8,
            shape: const CircleBorder(),
            minimumSize: const Size.square(80),
          ),
          onPressed: () {},
          child: const Icon(
            Icons.clear,
            color: Colors.red,
            size: 34,
          ),
        ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            elevation: 8,
            shape: const CircleBorder(),
            minimumSize: const Size.square(80),
          ),
          onPressed: () {},
          child: const Icon(
            Icons.star,
            color: Colors.blue,
            size: 34,
          ),
        ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            elevation: 8,
            shape: const CircleBorder(),
            minimumSize: const Size.square(80),
          ),
          onPressed: () {},
          child: const Icon(
            Icons.favorite,
            color: Colors.teal,
            size: 34,
          ),
        ),
      ],
    );
