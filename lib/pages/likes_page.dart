import 'package:flutter/material.dart';
import 'package:project_14/pages/home_page.dart';

class LikesPage extends StatefulWidget {
  static const String id = "like_page";
  String? cityName;
  String? imagePath;
  int? price;

  LikesPage(
      {required this.cityName,
      required this.imagePath,
      required this.price,
      super.key});

  @override
  State<LikesPage> createState() => _LikesPageState();
}

class _LikesPageState extends State<LikesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Stack(
            children: [
              mainCard3(
                image: widget.imagePath.toString(),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: [
                Text(
                  widget.cityName.toString(),
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.w600),
                ),
                Expanded(child: Container()),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "Show map",
                    style: TextStyle(color: Colors.blue),
                  ),
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(10.0),
            child: Row(
              children: [
                Icon(
                  Icons.star_outlined,
                  color: Colors.yellow,
                ),
                Text("4.5 (355 Reviews)"),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(10.0),
            child: Text(
                "Aspen is as close as one can get to a storybook alpine town in America. The choose-your-own-adventure possibilities - skiing,hiking,dining,shopping and...."),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 230),
            child: TextButton(
              onPressed: () {},
              child: const Row(
                children: [
                  Text(
                    "Read more",
                    style: TextStyle(color: Colors.blue, fontSize: 19),
                  ),
                  Icon(
                    Icons.arrow_downward,
                    color: Colors.blue,
                  ),
                ],
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(10.0),
            child: Text(
              "Facilities",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 28,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: [
                SizedBox(
                  width: 15,
                ),
                Container(
                  height: 74,
                  width: 72,
                  decoration: BoxDecoration(
                    color: Colors.blue.shade100,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.wifi,
                        size: 35,
                        color: Colors.grey,
                      ),
                      Text(
                        "1 Heater",
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
                Container(
                    height: 74,
                    width: 72,
                    decoration: BoxDecoration(
                      color: Colors.blue.shade100,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.dinner_dining_outlined,
                          size: 35,
                          color: Colors.grey,
                        ),
                        Text(
                          "Dinner",
                          style: TextStyle(color: Colors.grey),
                        ),
                      ],
                    )),
                const SizedBox(
                  width: 15,
                ),
                Container(
                  height: 74,
                  width: 72,
                  decoration: BoxDecoration(
                    color: Colors.blue.shade100,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.bathtub_outlined,
                        size: 35,
                        color: Colors.grey,
                      ),
                      Text(
                        "1 Tub",
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
                Container(
                  height: 74,
                  width: 72,
                  decoration: BoxDecoration(
                    color: Colors.blue.shade100,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.pool_outlined,
                        size: 35,
                        color: Colors.grey,
                      ),
                      Text(
                        "Pool",
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              height: 56,
              child: Row(
                children: [
                  Column(
                    children: [
                      Text(
                        "Price",
                        style: TextStyle(fontWeight: FontWeight.w500),
                      ),
                      Text(
                        "\$ ${widget.price.toString()}",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                          color: Colors.green,
                        ),
                      )
                    ],
                  ),
                  Expanded(child: Container()),
                  Container(
                    height: 54,
                    width: 210,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.blueAccent),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Book Now",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 19,
                              fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          width: 9,
                        ),
                        Icon(
                          Icons.arrow_forward,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget mainCard3({required String image}) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 370,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                image: AssetImage(image),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 20,top: 20),
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: IconButton(
                    onPressed: (){
                      Navigator.pop(context);
                    },
                    icon: Icon(Icons.arrow_back_ios_new),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
