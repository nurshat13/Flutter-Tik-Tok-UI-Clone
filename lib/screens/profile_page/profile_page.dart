import 'package:flutter/material.dart';
import 'widgets/tab_bar.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      // tabBar
      body: SafeArea(child: tabBar),
    );
  }
}

