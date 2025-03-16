// TODO Implement this library.
import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

import '../../../common/widgets/app_bar.dart';
import 'widget/bottom_nav_bar.dart';

class Home extends StatefulWidget {
  
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;
  final List<Widget> _homeScreens =[
    Container(
      height: double.infinity,
      color: Colors.amber,
    ),
    Container(
      height: double.infinity,
      color: Colors.redAccent,
    ),
    Container(
      height: double.infinity,
      color: Colors.green,
    ),
    Container(
      height: double.infinity,
      color: Colors.lightBlue,
    ),

  ];
  void _onTapMethod(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: FAppBar(
        title: "Mega Shop",
        firstIcon: Icons.menu, // Add the required firstIcon parameter
        actions: [
          IconButton(
            icon: Icon(Iconsax.notification_bing_outline),
            onPressed: () {},
          ),
        ],
      ),
      body: _homeScreens[_currentIndex],
      bottomNavigationBar: 
      FBottomBar(
        ontapMethod: _onTapMethod, 
        currentIndex: _currentIndex,
        ),
    );
  }
}
