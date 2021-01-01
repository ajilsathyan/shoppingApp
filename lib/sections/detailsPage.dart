import 'dart:ui';

import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget {
  final String imageNameNumber;
  final String imageName;
  final String candlePrice;
  DetailsPage({
    this.imageNameNumber,
    this.imageName,
    this.candlePrice,
  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Stack(
        children: [
          Image.asset(
            "assets/images/$imageNameNumber.jpg",
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 1.5,
            fit: BoxFit.cover,
          ),
          IconButton(
            padding: EdgeInsets.only(top: 40, left: 5),
            onPressed: () {
              Navigator.of(context).pop(context);
            },
            icon: Icon(
              Icons.close,
              color: Colors.pink,
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 2.3,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.pink[300],
                      blurRadius: 5,
                      spreadRadius: 1,
                    )
                  ]),
              child: Column(
                children: [
                  Expanded(
                    child: SingleChildScrollView(
                      physics: BouncingScrollPhysics(),
                      scrollDirection: Axis.vertical,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10.0, top: 5),
                            child: Text(
                              "Best Item",
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(6.0), 
                            child: Row(
                              
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  imageName,
                                  style: TextStyle(fontSize: 20),
                                ),
                                Text(
                                  "\$ $candlePrice",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Container(
                              width: MediaQuery.of(context).size.width,
                              height: 60,
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text("Size"),
                                        SizedBox(
                                          height: 15,
                                        ),
                                        Text(
                                          "16 Oz",
                                          style: TextStyle(fontSize: 17),
                                        )
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text("QTY"),
                                        SizedBox(
                                          height: 15,
                                        ),
                                        Text(
                                          "1",
                                          style: TextStyle(fontSize: 17),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10, right: 10),
                            child: Divider(
                              thickness: 1,
                              color: Colors.grey,
                            ),
                          ),
                          ListTile(
                            leading: Text(
                              "Details",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                            trailing: Icon(
                              Icons.add,
                              color: Colors.black,
                              size: 20,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10, right: 10),
                            child: Divider(
                              thickness: 1,
                              color: Colors.grey,
                            ),
                          ),
                          ListTile(
                            leading: Text(
                              "Shipping&Returns",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                            trailing: Icon(
                              Icons.add,
                              color: Colors.black,
                              size: 20,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 60,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          width: 45,
                          height: 45,
                          child: Icon(
                            Icons.favorite_border,
                            size: 28,
                          ),
                          decoration: BoxDecoration(
                              border: Border.all(), shape: BoxShape.circle),
                        ),
                        FlatButton.icon(
                          padding: EdgeInsets.symmetric(
                              horizontal: 110, vertical: 10),
                          onPressed: () {},
                          color: Colors.pink[300],
                          shape: StadiumBorder(),
                          icon: Icon(
                            Icons.shopping_basket,
                            color: Colors.white,
                          ),
                          label: Text(
                            "Add to Cart",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
