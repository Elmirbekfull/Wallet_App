import 'package:flutter/material.dart';

class Cards extends StatelessWidget {
  final double balance;
  final String numberCard;
  final int expiryMouth;
  final int expiryYear;
  final String nameCard;
  final color;
  final TextStyle cardTextStyle;
  Cards(
      {super.key,
      required this.balance,
      required this.numberCard,
      required this.expiryMouth,
      required this.expiryYear,
      this.color,
      required this.cardTextStyle,
      required this.nameCard});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Container(
        width: 350,
        padding: const EdgeInsets.all(30),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30), color: color),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.end, children: [
              Text(
                nameCard.toString(),
                style: cardTextStyle,
              ),
            ]),
            const Text(
              "Баланс",
              style: TextStyle(fontSize: 25, color: Colors.white),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              "\$ $balance",
              style: const TextStyle(
                  fontSize: 40,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  numberCard.toString(),
                  style: TextStyle(color: Colors.white, fontSize: 15),
                ),
                Text(
                  expiryMouth.toString() + "/" + expiryYear.toString(),
                  style: TextStyle(color: Colors.white, fontSize: 15),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
