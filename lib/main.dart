import 'package:flutter/material.dart';
import 'package:shopping_app/sections/buttons.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey[300],
        appBar: AppBar(
          backgroundColor: Colors.grey[300],
          elevation: 0,
          leading: ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: Image.asset(
              "assets/images/handburger.jpg",
              fit: BoxFit.cover,
            ),
          ),
          title: Center(
              child: Text(
            "Welcome",
            style: TextStyle(color: Colors.black),
          )),
          actions: [
            Container(
              width: 45,
              height: 45,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
              ),
              child: Icon(
                Icons.search,
                color: Colors.black,
              ),
            ),
          ],
        ),
        body: Column(
          children: [
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                SizedBox(
                  width: 15,
                ),
                Text(
                  "Shop ",
                  style: TextStyle(
                      color: Colors.black, fontSize: 19, letterSpacing: 1),
                ),
                Text(
                  "Anthropologie",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 22,
                      letterSpacing: 1,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              physics: BouncingScrollPhysics(),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  ButtonsGroups(
                    text: "Home Decor",
                    isSelected: true,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  ButtonsGroups(
                    text: "Bath & Body",
                    isSelected: false,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  ButtonsGroups(
                    text: "Beauty",
                    isSelected: false,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  ButtonsGroups(
                    text: "Toys",
                    isSelected: false,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Expanded(
              child: Container(
                // width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: Colors.grey[100],
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(35),
                      topRight: Radius.circular(35),
                    ),
                    boxShadow: [
                      BoxShadow(
                        spreadRadius: 1,
                        color: Colors.grey,
                        blurRadius: 5,
                      )
                    ]),
                child: Column(
                  children: [
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        buildPadding("Candles", isSelected: true),
                        buildPadding("Vases", isSelected: false),
                        buildPadding("Bins", isSelected: false),
                        buildPadding("Floral", isSelected: false),
                        buildPadding("Decor", isSelected: false),
                      ],
                    ),
                    SizedBox(height: 15),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      physics: BouncingScrollPhysics(),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          buildColumnItems("1", "Elemntal Tin Candel", "24"),
                          SizedBox(
                            width: 8,
                          ),
                          buildColumnItems("2", " Tin Candel", "30"),
                          SizedBox(
                            width: 8,
                          ),
                          buildColumnItems("3", "Rose Candel", "49"),
                          SizedBox(
                            width: 8,
                          ),
                          buildColumnItems("4", "Winter Candel", "29"),
                          SizedBox(
                            width: 8,
                          ),
                          buildColumnItems("5", "summer Candel", "26"),
                          SizedBox(
                            width: 8,
                          ),
                          buildColumnItems("6", "SandalWood Candel", "24"),
                          SizedBox(
                            width: 8,
                          ),
                          buildColumnItems("7", "Pinkish Candel", "35"),
                          SizedBox(
                            width: 8,
                          ),
                          buildColumnItems("8", "Orange flame Candel", "33"),
                          SizedBox(
                            width: 8,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Column buildColumnItems(String img, String title, String price) {
    return Column(
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
    );
  }

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
}
