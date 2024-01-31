import 'package:flutter/material.dart';

class AnimatedBottomNav extends StatefulWidget {
  const AnimatedBottomNav({super.key});

  @override
  State<AnimatedBottomNav> createState() => _AnimatedBottomNavState();
}

class _AnimatedBottomNavState extends State<AnimatedBottomNav> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animated Bottom Navigation'),
      ),
      body: Container(),
      floatingActionButton: FloatingActionButton(onPressed: () {}),
      // bottomNavigationBar: ,
    );
  }
}
