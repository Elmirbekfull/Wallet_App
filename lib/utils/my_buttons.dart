import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyButtons extends StatelessWidget {
  final UrlImg;
  final String textButton;
  const MyButtons({
    super.key,
    required this.UrlImg,
    required this.textButton,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // icon
        Container(
          padding: EdgeInsets.all(13),
          height: 90,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.shade400,
                  blurRadius: 40,
                  spreadRadius: 10,
                )
              ]),
          child: Center(
            child: Image.asset(UrlImg),
          ),
        ),
        SizedBox(
          height: 12,
        ),
        // text
        Text(
          textButton,
          style: TextStyle(
              color: Colors.grey[700],
              fontSize: 18,
              fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}
