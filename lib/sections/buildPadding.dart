  import 'package:flutter/material.dart';

Padding buildPadding(String text, {bool isSelected}) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Column(
        children: [
          Text(text,
              style: TextStyle(
                color: isSelected ? Colors.black : Colors.grey[600],
                fontSize: isSelected ? 16 : 15,
              )),
          SizedBox(
            height: 10,
          ),
          Container(
            width: 5,
            height: 5,
            decoration: BoxDecoration(
                color: isSelected ? Colors.black : Colors.white,
                shape: BoxShape.circle),
          )
        ],
      ),
    );
  }
