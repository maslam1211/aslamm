import 'package:flutter/cupertino.dart';
import 'package:flutter_appajio/Dropdown.dart';
import 'package:flutter_appajio/CheckedBox.dart';
import 'package:flutter_appajio/RadioButton.dart';
import 'package:flutter_appajio/forms321.dart';
import 'package:flutter_appajio/main.dart';
import 'package:flutter/material.dart';
import 'Stor.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'drawer.dart';
import 'Page0.dart';
import 'Forms.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: formfull(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int value = 0;
  List Bar = [
    {"text": "Home", "icon": Icons.home},
    {"text": "Stores", "icon": Icons.storefront},
    {"text": "Home", "icon": Icons.person},
    {"text": "Home", "icon": Icons.favorite},
    {"text": "Home", "icon": Icons.shopping_bag},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 80,
          elevation: 15,
          backgroundColor: Colors.grey,
          title: Center(
              child: (Text(
            "A J I O  ^",
            style: TextStyle(fontWeight: FontWeight.bold),
          ))),
          actions: [
            IconButton(icon: Icon(Icons.notifications), onPressed: () {}),
          ],
        ),
        drawer: drawer(),
        body: ListView(
          children: [
            Container(
              height: 80,
              width: 500,
              color: Colors.grey,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(13.0),
                    child: Container(
                      height: 50,
                      width: 450,
                      color: Colors.white,
                      child: Center(
                        child: TextField(
                          decoration: InputDecoration(
                              hintText: ("Search by product Brand & more..."),
                              hintStyle: (TextStyle(
                                  color: Colors.black, wordSpacing: (2))),
                              prefixIcon: IconButton(
                                icon: Icon(
                                  Icons.search,
                                  size: (27),
                                ),
                                onPressed: () {},
                              )),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 120,
              width: 500,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: Stor.length,
                  itemBuilder: (context, index) {
                    return SizedBox(
                      width: 122,
                      child: Column(
                        children: [
                          Container(
                            height: 80,
                            child: Image.asset(Stor[index]["image"]),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: Container(
                              height: 24,
                              child: Text(
                                Stor[index]["name"],
                                style: TextStyle(
                                    fontWeight: FontWeight.normal,
                                    fontSize: (15),
                                    color: Colors.blue),
                              ),
                            ),
                          )
                        ],
                      ),
                    );
                  }),
            ),
            Container(
              height: 70,
              width: 500,
              color: Colors.lightGreenAccent,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 50,
                      width: 370,
                      child: Row(
                        children: [
                          Container(
                            alignment: Alignment.center,
                            width: 100,
                            child: Text(
                              "Ends in",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: (25),
                                  color: Colors.brown),
                            ),
                          ),
                          Container(
                            alignment: Alignment.center,
                            width: 60,
                            height: 50,
                            color: Colors.white,
                            child: Text(
                              "05",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: (35),
                                  color: Colors.red),
                            ),
                          ),
                          Container(
                            alignment: Alignment.center,
                            width: 30,
                            color: Colors.white38,
                            child: Text(
                              "h",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: (35)),
                            ),
                          ),
                          Container(
                            alignment: Alignment.center,
                            width: 60,
                            color: Colors.white,
                            child: Text(
                              "04",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: (35),
                                  color: Colors.red),
                            ),
                          ),
                          Container(
                            width: 30,
                            child: Text(
                              "m",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: (35)),
                            ),
                          ),
                          Container(
                            alignment: Alignment.center,
                            width: 60,
                            height: 50,
                            color: Colors.white,
                            child: Text(
                              "00",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: (35),
                                  color: Colors.red),
                            ),
                          ),
                          Container(
                            alignment: Alignment.center,
                            width: 30,
                            child: Text(
                              "s",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: (35)),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              height: 250,
              width: 500,
              child: Image.asset(
                "images/imgajio.jpg",
                fit: BoxFit.fill,
              ),
            ),
            Container(
              height: 50,
              width: 500,
              child: Image.asset(
                "images/fed.jpg",
                fit: BoxFit.fill,
              ),
            ),
            Container(
              height: 200,
              width: 500,
              child: Carousel(
                dotBgColor: Colors.transparent,
                dotIncreasedColor: Colors.black,
                autoplayDuration: const Duration(seconds: 8),
                dotSize: 6,
                images: [
                  Image.asset(
                    'images/c1.jpg',
                    fit: BoxFit.cover,
                  ),
                  Image.asset(
                    'images/c2.jpg',
                    fit: BoxFit.cover,
                  ),
                  Image.asset(
                    'images/c3.jpg',
                    fit: BoxFit.cover,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(3.0),
              child: Container(
                height: 125,
                width: 500,
                child: Image.asset(
                  "images/bank.jpg",
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              height: 35,
              width: 500,
              child: Image.asset("images/ajio.jpg", fit: BoxFit.fill),
            ),
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Container(
                height: 125,
                width: 500,
                color: Colors.lightGreenAccent,
                child: Column(
                  children: [
                    Container(
                      height: 125,
                      width: 465,
                      color: Colors.white,
                      child: Column(
                        children: [
                          Container(
                            alignment: Alignment.center,
                            height: 60,
                            width: 465,
                            child: Text(
                              "TERRIFIC TREATS WHEN YOU JOIN US!",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: (20)),
                            ),
                          ),
                          Container(
                            height: 40,
                            width: 465,
                            color: Colors.blue,
                            child: Row(
                              children: [
                                Container(
                                  alignment: Alignment.centerRight,
                                  height: 40,
                                  width: 180,
                                  child: Text(
                                    "SIGN UP & GET UP TO",
                                    style: TextStyle(fontSize: 15),
                                  ),
                                ),
                                Container(
                                  alignment: Alignment.center,
                                  height: 40,
                                  width: 105,
                                  child: Text(
                                    '\u{20B9}${500}*',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: (35)),
                                  ),
                                ),
                                Container(
                                  alignment: Alignment.centerLeft,
                                  height: 50,
                                  width: 180,
                                  child: Text(
                                    "IN YOUR AJIO WALLET",
                                    style: TextStyle(fontSize: (13.5)),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: 25,
                            width: 465,
                            child: Column(
                              children: [
                                Container(
                                  alignment: Alignment.center,
                                  height: 20,
                                  width: 200,
                                  child: Text(
                                    "(100% REDEEMABLE)",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(2.0),
              child: Container(
                height: 175,
                width: 500,
                child: Column(
                  children: [
                    Container(
                      height: 175,
                      width: 465,
                      child: Column(
                        children: [
                          Container(
                            alignment: Alignment.center,
                            height: 35,
                            width: 465,
                            child: Text(
                              "GET STARTED WITH A STYLISH DOUBLE DEAL! ONYOUR FIEST PURCHASE",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: (13),
                              ),
                            ),
                          ),
                          Container(
                            height: 35,
                            width: 465,
                            child: Row(
                              children: [
                                Container(
                                  alignment: Alignment.center,
                                  height: 35,
                                  width: 232.5,
                                  child: Text(
                                    "EXTRA 20% OFF ON 999 rs",
                                    style: TextStyle(fontSize: (17)),
                                  ),
                                ),
                                Container(
                                  alignment: Alignment.center,
                                  height: 35,
                                  width: 232.5,
                                  child: Text(
                                    "EXTRA 30% OFF ON 1490 rs",
                                    style: TextStyle(fontSize: (17)),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: 35,
                            width: 465,
                            child: Row(
                              children: [
                                Container(
                                  height: 35,
                                  width: 232.5,
                                  child: Row(
                                    children: [
                                      Container(
                                        alignment: Alignment.centerRight,
                                        height: 35,
                                        width: 120,
                                        child: Text("USE CODE :"),
                                      ),
                                      Container(
                                        alignment: Alignment.center,
                                        height: 35,
                                        width: 80,
                                        color: Colors.blue,
                                        child: Text(
                                          "  WELCOME",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: (15)),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  height: 35,
                                  width: 232.5,
                                  child: Row(
                                    children: [
                                      Container(
                                        alignment: Alignment.centerRight,
                                        height: 35,
                                        width: 120,
                                        child: Text("USE CODE :"),
                                      ),
                                      Container(
                                        alignment: Alignment.center,
                                        height: 35,
                                        width: 80,
                                        color: Colors.blue,
                                        child: Text(
                                          "  WELCOME",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: (15)),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            alignment: Alignment.center,
                            height: 35,
                            width: 465,
                            child: Text(
                              "+ EXTRA 5% ON THE AJIO APP",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.deepPurpleAccent),
                            ),
                          ),
                          Container(
                            alignment: Alignment.center,
                            height: 25,
                            width: 465,
                            child: Text(
                              "SHIPPING IS ON US",
                              style: TextStyle(fontSize: (15)),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Container(
              height: 300,
              width: 500,
              child: Carousel(
                dotBgColor: Colors.transparent,
                dotIncreasedColor: Colors.black,
                autoplayDuration: const Duration(seconds: 8),
                dotSize: 6,
                images: [
                  Image.asset(
                    'images/m1.jpg',
                    fit: BoxFit.fill,
                  ),
                  Image.asset(
                    'images/m2.jpg',
                    fit: BoxFit.cover,
                  ),
                  Image.asset(
                    'images/m3.jpg',
                    fit: BoxFit.cover,
                  ),
                ],
              ),
            ),
            Container(
              height: 202,
              width: 500,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: Stor2.length,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Container(
                          width: 150,
                          child: Image.asset(Stor2[index]["image"]),
                        ),
                      ],
                    );
                  }),
            ),
            Container(
              height: 250,
              width: 500,
              child: Image.asset(
                "images/123.jpg",
                fit: BoxFit.fill,
              ),
            ),
            Container(
              height: 50,
              width: 500,
              child: Image.asset(
                "images/fed.jpg",
                fit: BoxFit.fill,
              ),
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          onTap: (value) {
            print(value);
          },
          currentIndex: value,
          elevation: 10,
          iconSize: (30),
          showUnselectedLabels: true,
          unselectedItemColor: Colors.black,
          fixedColor: Colors.red,
          // items:Bar.map((e) => BottomNavigationBarItem(label: e["text"],icon: e["icon"])).toList(),

          items: [
            BottomNavigationBarItem(
                icon: GestureDetector(
                  child: Icon(Icons.home),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => MyHomePage()));
                  },
                ),
                label: "Home"),
            BottomNavigationBarItem(
                icon: GestureDetector(
                  child: Icon(Icons.storefront),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Page0()));
                  },
                ),
                label: "Store"),
            BottomNavigationBarItem(
                icon: GestureDetector(
                  child: Icon(Icons.person),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => formfull()));
                  },
                ),
                label: "Account"),
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite), label: "Wishlist"),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_bag), label: "Bag"),
          ],
        ));
  }
}
