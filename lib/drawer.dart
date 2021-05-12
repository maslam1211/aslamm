import 'package:flutter/material.dart';
import 'package:flutter_appajio/main.dart';

class drawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 430,
      child: Drawer(
        child: SafeArea(
          child: Column(
            children: [
              Container(
                width: 430,
                height: 80,
                child: Row(
                  children: [
                    Container(
                      width: 80,
                      child: IconButton(
                        icon: Icon(
                          Icons.arrow_back,
                          size: (35),
                        ),
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>MyHomePage()));
                        },
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      width: 230,
                      child: Text(
                        "AJIO",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: (30),
                            color: Colors.indigo),
                      ),
                    ),
                    Container(
                      width: 120,
                      child: Row(
                        children: [
                          Container(
                            width: 60,
                            child: IconButton(
                              icon: Icon(
                                Icons.home,
                                size: (35),
                              ),
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>MyHomePage()));
                              },
                            ),
                          ),
                          Container(
                            width: 60,
                            child: IconButton(
                              icon: Icon(
                                Icons.search,
                                size: (35),
                              ),
                              onPressed: () {},
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                  width: 430,
                  height: 870,
                  color: Colors.grey,
                  child: Column(
                    children: [
                      Container(
                        alignment: Alignment.bottomLeft,
                        width: 400,
                        height: 50,
                        child: Text(
                          "Shop by",
                          style: TextStyle(color: Colors.white, fontSize: (20)),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Container(
                            alignment: Alignment.center,
                            width: 400,
                            height: 800,
                            decoration: BoxDecoration(color: Colors.white,
                                borderRadius: BorderRadius.circular(5)),
                            child: Column(
                              children: [
                                Container(
                                  width: 400,
                                  height: 80,
                                  child: ListTile(
                                    leading: Icon(Icons.assignment_ind),
                                    title: Text(
                                      "Women",
                                      style: TextStyle(fontSize: (20)),
                                    ),
                                  ),
                                ),
                                Container(
                                  width: 400,
                                  height: 80,
                                  child: ListTile(
                                    leading: Icon(Icons.person),
                                    title: Text(
                                      "Men",
                                      style: TextStyle(fontSize: (20)),
                                    ),
                                  ),
                                ),
                                Container(
                                  width: 400,
                                  height: 80,
                                  child: ListTile(
                                    leading: Icon(Icons.child_care),
                                    title: Text(
                                      "Kids",
                                      style: TextStyle(fontSize: (20)),
                                    ),
                                  ),
                                ),
                                Container(
                                  width: 400,
                                  height: 80,
                                  child: ListTile(
                                    leading: Icon(Icons.home),
                                    title: Text(
                                      "Home And Kitchen",
                                      style: TextStyle(fontSize: (20)),
                                    ),
                                  ),
                                ),
                                Container(
                                  width: 400,
                                  height: 80,
                                  child: ListTile(
                                    leading: Icon(Icons.storefront),
                                    title: Text(
                                      "Stores",
                                      style: TextStyle(fontSize: (20)),
                                    ),
                                  ),
                                ),
                                Container(
                                  width: 400,
                                  height: 80,
                                  child: ListTile(
                                    leading: Icon(Icons.star_border),
                                    title: Text(
                                      "Indie (the Artisan Store)",
                                      style: TextStyle(fontSize: (20)),
                                    ),
                                  ),
                                ),
                                Container(
                                  width: 400,
                                  height: 80,
                                  child: ListTile(
                                    leading: Icon(Icons.adb),
                                    title: Text(
                                      "Precious Jwellery",
                                      style: TextStyle(fontSize: (20)),
                                    ),
                                  ),
                                ),
                                Container(
                                  width: 400,
                                  height: 80,
                                  child: ListTile(
                                    leading: Icon(Icons.square_foot),
                                    title: Text(
                                      "Sneakerhood",
                                      style: TextStyle(fontSize: (20)),
                                    ),
                                  ),
                                ),
                                Container(
                                  width: 400,
                                  height: 80,
                                  child: ListTile(
                                    leading: Icon(Icons.new_releases_outlined),
                                    title: Text(
                                      "New Arrivals",
                                      style: TextStyle(fontSize: (20)),
                                    ),
                                  ),
                                ),
                                Container(
                                  width: 400,
                                  height: 80,
                                  child: ListTile(
                                    leading: Icon(
                                        Icons.collections_bookmark_rounded),
                                    title: Text(
                                      "Collection",
                                      style: TextStyle(fontSize: (20)),
                                    ),
                                  ),
                                ),
                              ],
                            )),
                      ),
                    ],
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
