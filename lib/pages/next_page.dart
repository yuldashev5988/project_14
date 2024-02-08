import 'package:flutter/material.dart';
class NextPage extends StatefulWidget {
  static const String id="next_page";
  const NextPage({super.key});

  @override
  State<NextPage> createState() => _NextPageState();
}

class _NextPageState extends State<NextPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
children: [
  mainCard3(image:  "assets/images/alley_palace.jpg"),
],
      ),
    );
  }
  Widget mainCard3({required String image}) {
    return Container(
      height: 240,
      width: double.infinity,
      margin: const EdgeInsets.only(right: 15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(
          image: AssetImage(image),
          fit: BoxFit.cover,
        ),
      ),
    );
  }

}
