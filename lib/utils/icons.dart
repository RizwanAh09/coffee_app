import 'package:flutter/material.dart';
class IconsClass extends StatelessWidget {
  const IconsClass({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Column(
    children: [
    Container(

    decoration: BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(20),
      boxShadow: [
        BoxShadow(
            color: Colors.grey.shade400,
            spreadRadius: 2,
            blurRadius: 10
        )
      ]
    ),
    height: 70,
    padding: const EdgeInsets.all(16),
    child: Image.network(
    "https://cdn-icons-png.flaticon.com/512/4630/4630926.png"),
    ),

     const SizedBox(
    height: 11,
    ),

     const Text("Send",
    style: TextStyle(fontSize: 18,
    fontWeight: FontWeight.bold,
    color: Colors.black54),)
    ],
    );
  }
}
