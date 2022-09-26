import 'package:flutter/material.dart';

class Cards extends StatelessWidget {
  final double balance;
  final int expiryMonth;
  final int expiryYear;
  final int cardNumber;
  final color;

  const Cards({
    Key? key,
    required this.balance,
    required this.expiryMonth,
    required this.expiryYear,
    required this.cardNumber,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 25),
      child: Container(
        width: 300,
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
            color: color, borderRadius: BorderRadius.circular(16)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    const Text("Balance"),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      "\$$balance",
                      style: TextStyle(fontSize: 28),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                  ],
                ),
                SizedBox(
                    height: 70,
                    child: Image.network(
                        "https://cdn-icons-png.flaticon.com/512/147/147258.png")),
              ],
            ),
            Expanded(
              child: Align(
                alignment: FractionalOffset.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(cardNumber.toString(),
                          style: const TextStyle(fontWeight: FontWeight.bold)),
                      Text("$expiryMonth/$expiryYear",
                          style: const TextStyle(fontWeight: FontWeight.bold)),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
