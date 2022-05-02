import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class page3 extends StatefulWidget {
  @override
  _page3State createState() => _page3State();
}

class _page3State extends State<page3> {
  int counter = 0;
  List<Map<String, dynamic>> Catagories = [
    {'title': 'S'},
    {'title': 'M'},
    {'title': 'L'},
    {'title': 'XL'},
    {'title': 'XXL'},
  ];
  List<Map<String, dynamic>> catagories = [
    {'color': Colors.black},
    {'color': Color(0xffD6EEEE)},
    {'color': Color(0xffFAF0E4)},
    {'color': Color(0xffFF8C6B)},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 300,
                decoration: BoxDecoration(
                  // color: Colors.red,
                  image: DecorationImage(
                    image: AssetImage('assets/images/gl.png'),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Text(
                "Select Size",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20),
              Container(
                height: 60,
                //  color: Colors.green,
                child: ListView.builder(
                    itemCount: 5,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Row(
                        children: [
                          GestureDetector(
                            child: Container(
                              height: 50,
                              width: 50,
                              alignment: Alignment.center,
                              margin: EdgeInsets.all(6),
                              decoration: BoxDecoration(
                                border: Border.all(),
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child: Text(
                                Catagories[index]['title'],
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                            onTap: () {
                              setState(() {
                                counter = index;
                              });
                            },
                          ),
                        ],
                      );
                    }),
              ),
              SizedBox(height: 20),
              Text(
                "Select Colour",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Container(
                height: 60,
                //  color: Colors.green,
                child: ListView.builder(
                    itemCount: 4,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Row(
                        children: [
                          Container(
                            height: 40,
                            width: 40,
                            margin: EdgeInsets.all(6),
                            decoration: BoxDecoration(
                              color: catagories[index]['color'],
                              borderRadius: BorderRadius.circular(30),
                            ),
                          ),
                        ],
                      );
                    }),
              ),
              Container(
                height: 20,
                width: 40,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Color(0xffD6EEEE),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text("new"),
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Text(
                    "Custom Tailor",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Spacer(),
                  GestureDetector(
                    onTap: () {
                      print("Book Nearby");
                    },
                    child: Container(
                      height: 40,
                      width: 120,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Text(
                        "Book Nearby",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Container(
                height: 80,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "JumpSuit With Front Zip",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            "\$285.50",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      Spacer(),
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Icon(Icons.shopping_cart),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
