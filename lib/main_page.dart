import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'const.dart';
import 'screens/camera_page/camera_page.dart';
import 'screens/discover_page/discover_page.dart';
import 'screens/home_page.dart';
import 'screens/inbox_page.dart';
import 'screens/profile_page/profile_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  // start screen index
  int _index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      // screen
      body: _screens[_index],
      // bottomNavBar
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            border: Border(
                top: BorderSide(
                    color: _index == 0
                        ? const Color(0xff333333)
                        : const Color(0xffCDD2D5),
                    width: 0.5))),
        child: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
                icon: Image.asset(
                  '$kIconWay/Home.png',
                  color: const Color(0xff8A8B8F),
                ),
                activeIcon: Image.asset(
                  '$kIconWay/Home-active.png',
                  color: Colors.white,
                ),
                label: "Home"),
            BottomNavigationBarItem(
                icon: Image.asset(
                  '$kIconWay/Discover.png',
                  color: const Color(0xff8A8B8F),
                ),
                activeIcon: Image.asset(
                  '$kIconWay/Discover-active.png',
                  color: Colors.black,
                ),
                label: "Discover"),
            BottomNavigationBarItem(
                icon: Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Image.asset(
                    _index == 0
                        ? '$kIconWay/Create.png'
                        : '$kIconWay/Create-dark.png',
                  ),
                ),
                label: ''),
            BottomNavigationBarItem(
                icon: Image.asset(
                  '$kIconWay/Inbox.png',
                  color: const Color(0xff8A8B8F),
                ),
                activeIcon: Image.asset(
                  '$kIconWay/Inbox-active.png',
                  color: Colors.black,
                ),
                label: "Inbox"),
            BottomNavigationBarItem(
                icon: Image.asset(
                  '$kIconWay/Profile.png',
                  color: const Color(0xff8A8B8F),
                ),
                activeIcon: Image.asset(
                  '$kIconWay/Profile-active.png',
                  color: Colors.black,
                ),
                label: "Profile"),
          ],
          type: BottomNavigationBarType.fixed,
          backgroundColor: _index == 0 ? Colors.black : Colors.white,
          selectedLabelStyle: const TextStyle(
            fontWeight: FontWeight.w600,
            fontFamily: "ProximaNova",
            fontStyle: FontStyle.normal,
          ),
          unselectedLabelStyle: const TextStyle(
            fontWeight: FontWeight.w600,
            fontFamily: "ProximaNova",
            fontStyle: FontStyle.normal,
          ),
          selectedFontSize: 11.5,
          unselectedFontSize: 11,
          selectedItemColor: _index == 0 ? Colors.white : Colors.black,
          unselectedItemColor: const Color(0xff8A8B8F),
          showUnselectedLabels: true,
          currentIndex: _index,
          enableFeedback: false,
          onTap: (index) async {
            if (index != 2) {
              setState(() {
                _index = index;
              });
            } else  {
             await availableCameras().then(
              (value) => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CameraPage(cameras: value,),
                ),
              ),
            );
            }
          },
        ),
      ),
    );
  }
}

// list of screens
List<Widget> _screens = const [
  HomePage(),
  DiscoverPage(),
  CameraPage(),
  InboxPage(),
  ProfilePage(),
];
