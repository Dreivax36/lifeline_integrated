import 'package:flutter/material.dart';
import 'package:lifeline_integrated/config/palette.dart';
import 'package:lifeline_integrated/data/data.dart';
import 'package:lifeline_integrated/models/user.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
import 'package:lifeline_integrated/widgets/widgets.dart';
import 'package:lifeline_integrated/screens/screens.dart';



class NavScreen extends StatefulWidget {
  final User currentUser;

  const NavScreen({Key key, this.currentUser}) : super(key: key);
  @override
  _NavScreenState createState() => _NavScreenState();
}

class _NavScreenState extends State<NavScreen> {
  final List<Widget> _screens = [
    HomeScreen(),
    CalendarScreen(),
    QRScreen(),
    ProfileScreen(),
  ];

  final Map<String, IconData> _icontext = const {
    'Home': Icons.home,
    'Calendar': Icons.calendar_today_rounded,
    'QR': Icons.qr_code_sharp,
    'Profile': Icons.person,
  };

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: ScreenSize.isDesktop(context)
          ? PreferredSize(
          preferredSize: Size(screenSize.width, 80),
          child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              height: 65.0,
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black12,
                    offset: Offset(0, 2),
                    blurRadius: 4.0,
                  ),
                ],
              ),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Row(
                      children: [
                        Text(
                          'LIFELINE',
                          style: const TextStyle(
                            fontFamily: 'Barbara',
                            fontWeight: FontWeight.bold,
                            fontSize: 28,
                            color: Palette.bluetheme,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      SafeArea(
                        child: Container(
                          width: 300.0,
                          child: SalomonBottomBar(
                            currentIndex: selectedIndex,
                            onTap: (index) => setState(() => selectedIndex = index),
                            selectedItemColor: Palette.bluelight,
                            unselectedItemColor: Colors.black,
                            items: [
                              /// Home
                              SalomonBottomBarItem(
                                icon: Icon(Icons.home),
                                title: Text("Home"),
                              ),

                              /// Likes
                              SalomonBottomBarItem(
                                icon: Icon(Icons.calendar_today_rounded),
                                title: Text("Calendar"),
                              ),

                              /// Search
                              SalomonBottomBarItem(
                                icon: Icon(Icons.qr_code_sharp),
                                title: Text("QR"),
                              ),
                            ],
                          )
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: 15.0,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      UserCard(user: currentUser),
                      const SizedBox(width: 10.0,),
                      Icon(
                        Icons.arrow_drop_down_sharp,
                        size: 30.0,
                      ),
                    ],
                  ),
                ],
              )
          )
      ) : null,
      body: _screens[selectedIndex],
      bottomNavigationBar: !ScreenSize.isDesktop(context)
          ? SalomonBottomBar(
        items: _icontext
            .map((title, icon) => MapEntry(
            title,
            SalomonBottomBarItem(
              icon: Icon(icon, size: 30.0),
              title: Text(title),
            )))
            .values
            .toList(),
        currentIndex: selectedIndex,
        selectedItemColor: Palette.bluelight,
        unselectedItemColor: Colors.black,
        onTap: (index) => setState(() => selectedIndex = index),
      )
          : null,
    );
  }
}
