import 'package:flutter/material.dart';
import 'package:project_14/pages/likes_page.dart';
import 'package:project_14/pages/next_page.dart';

class LocationView extends StatefulWidget {
  const LocationView({super.key});

  @override
  State<LocationView> createState() => _LocationViewState();
}

class _LocationViewState extends State<LocationView> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 4,
                  ),
                  Text(
                    "Popular",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 20),
                  ),
                  Expanded(child: Container()),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "See all",
                      style: TextStyle(color: Colors.blue),
                    ),
                  ),
                ],
              ),
              Container(
                height: 300,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    mainCard(cityName: "Tashkent", imagePath: "assets/images/city_image.jpg", price: 199),
                    mainCard(cityName: "Samarqand", imagePath: "assets/images/alley_palace.jpg", price: 100),
                    mainCard(cityName: "Bukhara", imagePath: "assets/images/city_image.jpg", price: 50),
                    ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 4,
                  ),
                  Text(
                    "Recommended",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 20),
                  ),
                  Expanded(child: Container()),
                ],
              ),
              SizedBox(
                height: 4,
              ),
              Container(
                height: 166,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    mainCard2(
                      image1: "assets/images/city_image.jpg",
                      text: 'Explore Aspen',
                    ),
                    mainCard2(
                      image1: "assets/images/city_image.jpg",
                      text: 'Luxurious Aspen',
                    ),
                    mainCard2(
                      image1: "assets/images/city_image.jpg",
                      text: 'Dusty Tashkent',
                    ),
                    mainCard2(
                      image1: "assets/images/city_image.jpg",
                      text: 'So dusty Tashkent',
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget mainCard({required String cityName,required String imagePath, required int price}) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>LikesPage(cityName: cityName, imagePath: imagePath, price: price)));
      },
      child: Container(
        height: 240,
        width: 188,
        margin: const EdgeInsets.only(right: 15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
            image: AssetImage(imagePath),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.grey,
                ),
                height: 30,
                width: 100,
                child: Center(
                  child: Text(
                    "Alley Palace",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.grey,
                    ),
                    height: 30,
                    width: 100,
                    child: const Center(
                      child: Text(
                        "Alley Palace",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  Expanded(child: Container()),
                  const CircleAvatar(
                    radius: 17,
                    child: Icon(
                      Icons.favorite_border,
                      color: Colors.red,
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget mainCard2({required String image1, required String text}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 100,
          width: 190,
          margin: const EdgeInsets.only(right: 15),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
              image: AssetImage(image1),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Text(
          text,
          style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 17),
        ),
      ],
    );
  }
}
