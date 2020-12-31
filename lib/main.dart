import 'package:flutter/material.dart';
import 'package:shopping_app/sections/buildColumItems.dart';
import 'package:shopping_app/sections/buildPadding.dart';
import 'package:shopping_app/sections/buttons.dart';
import 'package:shopping_app/sections/holidaySpecial.dart';
import 'package:shopping_app/sections/progressBarcontainer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        bottomNavigationBar: Container(
            height: 70,
            decoration: BoxDecoration(boxShadow: [
              BoxShadow(
                color: Colors.grey,
                blurRadius: 10,
                spreadRadius: 1,
              )
            ], color: Colors.white, borderRadius: BorderRadius.circular(20)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                buildContainerBottonNav(Icons.person, isSelected: false),
                buildContainerBottonNav(Icons.shopping_bag_rounded,
                    isSelected: false),
                buildContainerBottonNav(Icons.home, isSelected: true),
                buildContainerBottonNav(Icons.favorite, isSelected: false),
                buildContainerBottonNav(Icons.settings, isSelected: false),
              ],
            )),
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
              width: 50,
              height: 50,
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
        body: ListView(
            scrollDirection: Axis.vertical,
            physics: BouncingScrollPhysics(),
            children: [
              Column(
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
                            color: Colors.black,
                            fontSize: 19,
                            letterSpacing: 1),
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
                  SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Expanded(
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
                            MyCandelList(),
                            SizedBox(height: 15),
                            ProgressBarContainer(),
                            Padding(
                              padding: const EdgeInsets.all(15),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Holiday Special",
                                    style: TextStyle(
                                        fontSize: 19,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black),
                                  ),
                                  Text(
                                    "View All",
                                    style: TextStyle(
                                        fontSize: 17, color: Colors.black),
                                  )
                                ],
                              ),
                            ),
                            SingleChildScrollView(
                              physics: BouncingScrollPhysics(),
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                children: [
                                  buildContainerHolidaySpecial(
                                      "11", "Glass Candel", "16 oz", "26"),
                                  buildContainerHolidaySpecial(
                                      "12", "Ball Candle", "17 oz", "20"),
                                  buildContainerHolidaySpecial(
                                      "13", "Pinkish Candle", "18 oz", "18"),
                                  buildContainerHolidaySpecial(
                                      "14", "White candle", "20 oz", "21"),
                                  buildContainerHolidaySpecial(
                                      "15", "Roller Candle", "25 oz", "30")
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ]),
      ),
    );
  }

  Container buildContainerBottonNav(IconData icon, {bool isSelected}) {
    return Container(
        width: 45,
        height: 45,
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            boxShadow: isSelected
                ? [
                    BoxShadow(
                      color: Colors.pink[400],
                      blurRadius: 15,
                      spreadRadius: 1,
                    )
                  ]
                : [],
            color: isSelected ? Colors.pink[100] : Colors.white),
        child: Icon(
          icon,
          color: isSelected ? Colors.white : Colors.black,
        ));
  }
}

class MyCandelList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      physics: BouncingScrollPhysics(),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          buildColumnItems("1", "Elemntal Tin Candel", "24", context),
          SizedBox(
            width: 8,
          ),
          buildColumnItems("2", " Tin Candel", "30", context),
          SizedBox(
            width: 8,
          ),
          buildColumnItems("3", "Rose Candel", "49", context),
          SizedBox(
            width: 8,
          ),
          buildColumnItems("4", "Winter Candel", "29", context),
          SizedBox(
            width: 8,
          ),
          buildColumnItems("5", "summer Candel", "26", context),
          SizedBox(
            width: 8,
          ),
          buildColumnItems("6", "SandalWood Candel", "24", context),
          SizedBox(
            width: 8,
          ),
          buildColumnItems("7", "Pinkish Candel", "35", context),
          SizedBox(
            width: 8,
          ),
          buildColumnItems("8", "Orange flame Candel", "33", context),
          SizedBox(
            width: 8,
          ),
        ],
      ),
    );
  }
}
