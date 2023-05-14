import 'package:flutter/material.dart';
import 'package:fyp_project/screens/constants.dart';
import 'package:fyp_project/screens/profile_screen.dart';
import 'package:fyp_project/screens/setting_screen.dart';
import 'chat_screen.dart';
import 'home_screen.dart';


class NaviagtionScreen extends StatefulWidget {
  const NaviagtionScreen({Key? key}) : super(key: key);

  @override
  _NaviagtionScreenState createState() => _NaviagtionScreenState();
}

class _NaviagtionScreenState extends State<NaviagtionScreen> {

  final List<Widget> _screens = [
    // Content for Home tab
    const HomeScreen(),
    // Content for Feed tab
    const ChatScreen(),
    // Content for Favorites tab
    const ProfileScreen(),
    // Content for Settings tab
    const Setting(),
  ];

  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading:  CircleAvatar(
          backgroundImage: AssetImage(backgroundImage1),
        ),
        title: const Text('HamadUllah'),
        centerTitle: false,
        // leading: Row(
        //   children: const [
        //     CircleAvatar(
        //       backgroundImage: AssetImage('images/facebook.png'),
        //     ),
        //     Text('HamadUllah'),
        //   ],
        // ),
        actions: [
          Container(
            padding: const EdgeInsets.only(right: 50,top: 5, bottom: 5),
            width: 300,
            height: 6,
            child: TextField(
              decoration: InputDecoration(
                  hintText: "Search",
                  filled: true,
                  fillColor: Colors.white,
                  suffixIcon: const Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(3),
                  )
              ),
            ),
          ),//Search Bar
        ],
      ),
      body: Row(
        //mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          NavigationRail(
            onDestinationSelected: (int index) {
              setState(() {
                _selectedIndex = index;
              });
            },
            backgroundColor: grayColor,
            unselectedIconTheme: const IconThemeData(color: colorWhite),
            selectedIndex: _selectedIndex,
            destinations: const [
              NavigationRailDestination(
                icon: Icon(Icons.home,size: 30), label: Text(''),),
              NavigationRailDestination(
                  icon: Icon(Icons.chat,size: 30), label: Text('')),
              NavigationRailDestination(
                  icon: Icon(Icons.account_circle,size: 30), label: Text('')),
              NavigationRailDestination(
                  icon: Icon(Icons.settings,size: 30), label: Text('')),
            ],

            labelType: NavigationRailLabelType.all,
            selectedLabelTextStyle: const TextStyle(
              color: greenColor,
            ),

            unselectedLabelTextStyle: const TextStyle(),
            // Called when one tab is selected


          ),
          Expanded(child: _screens[_selectedIndex])
        ],
      ),

    );
  }
}

