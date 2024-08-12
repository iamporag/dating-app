// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'package:dating_app/data/dummy/dummy.dart';
import 'package:dating_app/presentation/pages/discover_new_page.dart';
import 'package:dating_app/presentation/pages/match_new.dart';
import 'package:dating_app/presentation/pages/message.dart';
import 'package:dating_app/presentation/pages/profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../blocs/bloc/nav_bloc.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NavBloc, NavState>(builder: (context, state) {
      return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
      title: const Row(
        children: [
          Icon(
            Icons.local_fire_department_rounded,
            color: Colors.red,
            size: 32,
          ),
          SizedBox(
            width: 4,
          ),
          Text(
            "Dating App",
            style: TextStyle(
                fontSize: 21, fontWeight: FontWeight.bold, color: Colors.red),
          )
        ],
      ),
        ),
        bottomNavigationBar: Container(
            color: Theme.of(context).colorScheme.onSecondaryFixed,
            child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 0.0, vertical: 0.0),
                child: NavigationBar(
                  onDestinationSelected: (int index) {
                    context.read<NavBloc>().add(TriggerNavEvent(index: index));
                  },
                  overlayColor: WidgetStateColor.transparent,
                  surfaceTintColor: Colors.transparent,
                  indicatorColor: Colors.transparent,
                  shadowColor: Colors.transparent,
                  selectedIndex: state is NavInitial ? state.index : 0,
                  labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
                  destinations: const[
                    NavigationDestination(
                      icon: Icon(Icons.local_fire_department_outlined,color: Colors.white38,),
                      label: "Home",
                      selectedIcon: Icon(Icons.local_fire_department,color: Colors.red,size: 32,),
                    ),
                    NavigationDestination(
                      icon: Icon(Icons.favorite_outline,color: Colors.white38,),
                      selectedIcon: Icon(Icons.favorite,color: Colors.red,size: 32
                      ,),
                      label: "Wishlist",
                    ),
                    NavigationDestination(
                      icon: Icon(Icons.chat_outlined,color: Colors.white38,),
                      selectedIcon: Icon(Icons.chat,color: Colors.red,size: 32
                      ,),
                      label: "Cart",
                    ),
                    NavigationDestination(
                      icon: Icon(Icons.person_outline,color: Colors.white38,),
                      selectedIcon: Icon(Icons.person,color: Colors.red,size: 32
                      ,),
                      label: "Wallet",
                    ),
                  ],
                )),
          ),
        body: buildPage(state is NavInitial ? state.index : 0),
      );
    });
  }
}

Widget buildPage(int index) {
  List<Widget> _widget = [
    const DiscoverNewPage(
      profiles: Dummy.discover,
    ),
    const MatchNew(),
    Message(),
    const Profile(),
  ];
  return _widget[index];
}
