import 'package:flutter/material.dart';

class ButtonsGroups extends StatelessWidget {
 final String text;
 final bool isSelected;
  ButtonsGroups({this.text, this.isSelected});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      child: FlatButton(
        onPressed: () {},
        child: Text(
          text,
          style: TextStyle(color: isSelected ? Colors.white : Colors.black),
        ),
        color: isSelected ? Colors.pink : Colors.grey[350],
        shape: StadiumBorder(),
      ),
    );
  }
}
