import 'package:flutter/material.dart';
import 'dart:ui';

class OverlayBlurImageExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Overlay Blur Image Example'),
        ),
        body: GridView.builder(
          clipBehavior: Clip.hardEdge,
          itemCount: 5,
          gridDelegate:const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 8.0,
            crossAxisSpacing: 8.0,
          ),
          itemBuilder: (context, index) => Card(
            elevation: 10,
            child: ClipRRect(
              child: ImageFiltered(
                imageFilter: ImageFilter.blur(sigmaX: 30, sigmaY: 30),
                child: Image.network(
                  'https://images.pexels.com/photos/4584578/pexels-photo-4584578.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
                  width: 300,
                  height: 300,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ));
  }
}

void main() => runApp(MaterialApp(home: OverlayBlurImageExample()));
