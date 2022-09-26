import 'package:flutter/material.dart';

class CoffeeTiles extends StatelessWidget {
  final String coffeeImagePath;
  final String coffeeName;
  final String coffeePrice;

  const CoffeeTiles(
      {required this.coffeeImagePath,
      required this.coffeeName,
      required this.coffeePrice,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25,bottom: 25),
      child: Container(
          padding: EdgeInsets.all(12),
          width: 200,
          decoration: BoxDecoration(
            color: Colors.black54,
            borderRadius: BorderRadius.circular(30),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: Image.network(
                      height : 200,
                      width: 200,
                      fit:BoxFit.fill,
                      coffeeImagePath)),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 12, horizontal: 8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      coffeeName,
                      style: TextStyle(fontSize: 20),
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    Text(
                      "With Almond milk ",
                      style: TextStyle(color: Colors.grey[700]),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("\$$coffeePrice"),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Container(
                          color: Colors.orange, child: Icon(Icons.add)),
                    ),
                  ],
                ),
              )
            ],
          )),
    );
  }
}
