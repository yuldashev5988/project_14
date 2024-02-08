import 'package:flutter/material.dart';
class AdventureView extends StatelessWidget {
  const AdventureView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.purple,
    );
  }
}

Widget _Icons() {
  return const Padding(
    padding: EdgeInsets.only(left: 10),
    child: Row(
      children: [
        Icon(
          Icons.star_outlined,
          color: Colors.yellow,
        ),
        SizedBox(
          width: 4,
        ),
        Text("4.5  (355 Reviews)"),
      ],
    ),
  );
}