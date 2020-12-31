import 'package:flutter/material.dart';
import 'package:shopping_app/sections/demo.dart';

GestureDetector buildColumnItems(
    String img, String title, String price, BuildContext context) {
  return GestureDetector(
    onTap: () {
      Navigator.of(context).push(MaterialPageRoute(builder: (context) {
        return Demo();
      }));
    },
    child: Column(
      children: [
        Container(
            height: 160,
            width: 145,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                "assets/images/$img.jpg",
                fit: BoxFit.cover,
              ),
            )),
        SizedBox(
          height: 8,
        ),
        Text(title),
        SizedBox(
          height: 8,
        ),
        Text(
          "\$ $price",
          style: TextStyle(
            fontSize: 16,
          ),
        )
      ],
    ),
  );
}
