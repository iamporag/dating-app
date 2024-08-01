import 'package:dating_app/presentation/pages/discover_page.dart';
import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        color: Colors.amber,
        child: NavigationBar(
          onDestinationSelected: (value) {},
          destinations: const [
            NavigationDestination(
              icon: Icon(Icons.home_filled), 
              label: 'Discover'
              ),
            NavigationDestination(
              icon: Icon(Icons.home_filled), 
              label: 'Discover'
              ),
            NavigationDestination(
              icon: Icon(Icons.home_filled), 
              label: 'Discover'
              ),
              ],
        ),
      ),
      body: navBuildPages(0),
    );
  }
  
  navBuildPages(int index) {
    List<Widget> _widget = const [
     DiscoverPage(),
     Center(child: Text("NAVIGATION 2"),),
     Center(child: Text("NAVIGATION 3"),),
    ];
    return _widget[index];
  }
}
