import 'dart:js';

import 'package:flutter/material.dart';
import 'package:shopping_application_1/details.dart';
import 'package:shopping_application_1/details.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        bottomNavigationBar: Container(
          height: 70,
          color: Colors.white,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(40),
                topRight: Radius.circular(40),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                buildContainerBottomNav(Icons.person),
                buildContainerBottomNav(Icons.shopping_bag),
                buildContainerBottomNav(Icons.home, isSelected: true),
                buildContainerBottomNav(Icons.favorite),
                buildContainerBottomNav(Icons.settings),
              ],
            ),
          ),
        ),
        appBar: AppBar(
          toolbarHeight: 60,
          backgroundColor: Colors.grey[100],
          elevation: 0,
          leading: Image.asset('assets/image/hagburger.png'),
          actions: [
            Container(
                decoration:
                    BoxDecoration(color: Colors.white, shape: BoxShape.circle),
                margin: EdgeInsets.all(10),
                child: Image.asset(
                  'assets/image/search.png',
                )),
          ],
        ),
        body: Column(
          children: [
            Row(
              children: [
                SizedBox(
                  width: 15,
                ),
                Text(
                  "shop",
                  style: TextStyle(fontSize: 26),
                ),
                Text(
                  " Anthropologies",
                  style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                textbutton("Home Decore", isselected: true),
                textbutton("Bath & Body"),
                textbutton("Beauty"),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(40),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade300,
                        spreadRadius: 1,
                        blurRadius: 15,
                      )
                    ]),
                child: SingleChildScrollView(
                  physics: BouncingScrollPhysics(),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 40,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          buildColumnAtTop("Candels", isselected: true),
                          buildColumnAtTop("Vases"),
                          buildColumnAtTop("Bins"),
                          buildColumnAtTop("Floral"),
                          buildColumnAtTop("Decor"),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SingleChildScrollView(
                          physics: BouncingScrollPhysics(),
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              SizedBox(
                                width: 20,
                              ),
                              buildColumnWithRow(
                                  "2", "Summer Candle", "23", context),
                              buildColumnWithRow(
                                  "3", "Winter Candle", "40", context),
                              buildColumnWithRow(
                                  "4", "Babtisam Candle", "60", context),
                              buildColumnWithRow(
                                  "5", "Elimental Tin Candle", "24", context),
                              buildColumnWithRow(
                                  "9", "Wedding Flower Candle", "90", context),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        height: 5,
                        width: MediaQuery.of(context).size.width,
                        margin: EdgeInsets.only(left: 25),
                        alignment: Alignment.centerLeft,
                        decoration: BoxDecoration(
                            color: Colors.grey[300],
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              bottomLeft: Radius.circular(10),
                            )),
                        child: Container(
                            height: 5,
                            width: 100,
                            decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(15),
                                  bottomLeft: Radius.circular(15),
                                ))),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(25.0),
                        child: Row(
                          children: [
                            Text(
                              "Holiday Spacial",
                              style: TextStyle(fontSize: 24),
                            ),
                            Spacer(),
                            Text(
                              "Vew All",
                              style:
                                  TextStyle(fontSize: 20, color: Colors.grey),
                            ),
                          ],
                        ),
                      ),
                      SingleChildScrollView(
                        physics: BouncingScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            buildBottumCuntainer(
                                "7", "Flower Candle", "16 OZ", "35"),
                            buildBottumCuntainer(
                                "8", "Egg Candle", "18 OZ", "40"),
                            buildBottumCuntainer(
                                "10", "Wedding Candle", "20 OZ", "55"),
                            buildBottumCuntainer(
                                "11", "Special Candle", "16 OZ", "38"),
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
      ),
    );
  }

  Container buildContainerBottomNav(IconData icon, {isSelected = false}) {
    return Container(
      decoration: BoxDecoration(
          color: isSelected ? Colors.pink[100] : Colors.white,
          shape: BoxShape.circle,
          boxShadow: isSelected
              ? [BoxShadow(color: Colors.grey, blurRadius: 10, spreadRadius: 1)]
              : []),
      height: 50,
      width: 50,
      child: Icon(
        icon,
        color: isSelected ? Colors.white : Colors.black,
      ),
    );
  }

  Container buildBottumCuntainer(
      String img, String title, String title1, String price) {
    return Container(
      height: 150,
      color: Colors.white,
      width: 250,
      margin: EdgeInsets.only(left: 20),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(30),
            child: SizedBox(
              height: 120,
              width: 100,
              child: Image.asset(
                "assets/image/candle$img.jpg",
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                ),
                Text(
                  title1,
                  style: TextStyle(color: Colors.grey, fontSize: 18),
                ),
                Spacer(),
                Text(
                  "\$ $price",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  GestureDetector buildColumnWithRow(
      String img, String title, String price, BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (context) {
          return Detailspage();
        }));
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Container(
                height: 200,
                width: 140,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(
                    "assets/image/candle$img.jpg",
                    fit: BoxFit.cover,
                  ),
                )),
            SizedBox(
              height: 10,
            ),
            Text(title),
            SizedBox(
              height: 8,
            ),
            Text(
              "\$ $price",
              style: TextStyle(fontSize: 20),
            )
          ],
        ),
      ),
    );
  }

  Column buildColumnAtTop(String text, {bool isselected = false}) {
    return Column(
      children: [
        Text(
          text,
          style: TextStyle(
            color: isselected ? Colors.black : Colors.grey,
            fontSize: 18,
          ),
        ),
        SizedBox(
          height: 5,
        ),
        if (isselected)
          Container(
            height: 5,
            width: 5,
            decoration: BoxDecoration(
              color: Colors.black,
              shape: BoxShape.circle,
            ),
          )
      ],
    );
  }

  TextButton textbutton(String text, {bool isselected = false}) {
    return TextButton(
      onPressed: () {
        print('button pressed');
      },
      child: Container(
        decoration: ShapeDecoration(
          shape: StadiumBorder(),
          color: isselected ? Colors.pink[100] : Colors.grey[300],
        ),
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Text(
            text,
            style: TextStyle(
              color: isselected ? Colors.white : Colors.black,
              fontSize: 18,
            ),
          ),
        ),
      ),
    );
  }
}
