  import 'package:flutter/material.dart';

Container buildContainerHolidaySpecial(String img,String name,String lowerValue,String price) {
    return Container(
      width: 260,
      height: 180,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Container(
              width: 130,
              height: 180,
              decoration: BoxDecoration(
                border: Border.all(width: 2, color: Colors.pink[200]),
                borderRadius: BorderRadius.circular(20),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  "assets/images/$img.jpg",
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(7.0),
            child: Column(
              children: [
                SizedBox(
                  height: 5,
                ),
                Text(name),
                Text(lowerValue),
                Spacer(),
                Text(
                  "\$ $price",
                  style: TextStyle(fontSize: 20),
                ),
                SizedBox(
                  height: 5,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }