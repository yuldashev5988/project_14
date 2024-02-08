import 'package:flutter/material.dart';

import 'package:iconly/iconly.dart';
import 'package:project_14/screens/home_screen.dart';
import 'package:project_14/pages/likes_page.dart';
import 'package:project_14/screens/profile_screen.dart';
import 'package:project_14/screens/ticket_screen.dart';

class HomePage extends StatefulWidget {
  static const String id = "home_page";

  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late PageController pageController;
  int selectedIndex = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    pageController = PageController(initialPage: selectedIndex);
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: Colors.white,
        body: PageView(
          controller: pageController,
          children: const [
            HomeScreen(),
            TicketScreen(),
            ProfileScreen(),
          ],
          onPageChanged: (int index) {
            setState(
              () {
                selectedIndex = index;
              },
            );
          },
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectedIndex,
          onTap: (int index) {
            setState(
              () {
                selectedIndex = index;
                pageController.animateToPage(index,
                    duration: const Duration(
                      microseconds: 200,
                    ),
                    curve: Curves.bounceOut);
              },
            );
          },
          items: const [
            BottomNavigationBarItem(
                icon: Icon(
                  IconlyBold.home,
                  color: Colors.blue,
                ),
                backgroundColor: Colors.white,
                label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(IconlyLight.ticket, color: Colors.blue),
                backgroundColor: Colors.white,
                label: "Tickets"),
            BottomNavigationBarItem(
              icon: Icon(IconlyLight.heart, color: Colors.blue),
              label: "Likes",
              backgroundColor: Colors.white,
            ),
            BottomNavigationBarItem(
              icon: Icon(IconlyLight.profile, color: Colors.blue),
              label: "Profile",
              backgroundColor: Colors.white,
            ),
          ],
          selectedItemColor: Colors.blue,
        ),
      ),
    );
  }
}
