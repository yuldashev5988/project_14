import 'package:flutter/material.dart';
import 'package:project_14/view/adventure_view.dart';
import 'package:project_14/view/food_view.dart';
import 'package:project_14/view/hotels_view.dart';
import 'package:project_14/view/location_view.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 155,
        title: Column(
          children: [
            const SizedBox(
              height: 40,
            ),
            const Padding(
              padding: EdgeInsets.only(right: 290),
              child: Column(
                children: [
                  Text(
                    "Explore",
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                        fontWeight: FontWeight.w300),
                  )
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(right: 250),
              child: Column(
                children: [
                  Text(
                    "Aspen",
                    style: TextStyle(
                        fontSize: 38,
                        color: Colors.black87,
                        fontWeight: FontWeight.w500),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              margin: EdgeInsets.only(bottom: 35),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.blue.shade100),
              child: const Center(
                child: TextField(
                  decoration: InputDecoration(
                      hintText: "Find things to do",
                      hintStyle: TextStyle(color: Colors.grey),
                      prefixIcon: Icon(
                        Icons.search_sharp,
                        color: Colors.grey,
                      ),
                      border: InputBorder.none),
                ),
              ),
            ),
          ],
        ),
        bottom: TabBar(
          indicatorPadding:EdgeInsets.zero,
        //  labelPadding: EdgeInsets.all(15),
          isScrollable: true,
          indicatorColor: Colors.transparent,
          dividerColor: Colors.transparent,
          tabs: [
            Tab(
              child: Container(
                padding: EdgeInsets.only(top: 8.0,left: 15,right: 15,bottom: 8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.blue.shade100
                ),
                child: Text(
                  "Location",
                  style: TextStyle(
                    fontSize: 19,
                    fontWeight: FontWeight.w600,
                    color: Colors.blue,
                  ),
                ),
              ),
            ),
            Text(
              "Hotels",
              style: TextStyle(
                fontSize: 19,
                fontWeight: FontWeight.w600,
                color: Colors.blue,
              ),
            ),
            Text(
              "Foods",
              style: TextStyle(
                fontSize: 19,
                fontWeight: FontWeight.w600,
                color: Colors.blue,
              ),
            ),
            Text(
              "Adventure",
              style: TextStyle(
                fontSize: 19,
                fontWeight: FontWeight.w600,
                color: Colors.blue,
              ),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: PageView(
          children: const [
            TabBarView(
              children: [
                LocationView(),
                HotelsView(),
                FoodView(),
                AdventureView(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
