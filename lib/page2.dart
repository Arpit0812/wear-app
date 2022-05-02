import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class page2 extends StatefulWidget {
  @override
  _page2State createState() => _page2State();
}

class _page2State extends State<page2> {
  bool icons = true;
  List<Map<String, dynamic>> co = [
    {'color': Color(0xffFAF0E4), 'title': 'woman'},
    {'color': Color(0xffF5F6F4), 'title': 'man'},
    {'color': Color(0xffD5EDED), 'title': 'Girl'},
    {'color': Color(0xffFF8D6B), 'title': 'Boy'},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100),
        child: Container(
          height: 100,
          // color: Colors.red,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      icons = !icons;
                    });
                  },
                  child: icons ? Icon(Icons.wrap_text) : Icon(Icons.line_style),
                ),
                Spacer(),
                Container(
                  height: MediaQuery.of(context).size.height * 0.05,
                  width: MediaQuery.of(context).size.width * 0.1,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(5),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('assets/images/girls.jpg'),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Let's",
              style: TextStyle(
                fontSize: 25,
              ),
            ),
            Text(
              "Get Started !",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.08,
            ),

            ///listview.bulider///
            Container(
              height: 400,
              // color: Colors.red,
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20,
                ),
                itemCount: 4,
                //  scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Container(
                        height: 150,
                        width: 100,
                        decoration: BoxDecoration(
                            color: co[index]['color'],
                            image: DecorationImage(
                                image: AssetImage('assets/images/gl.png'))),
                      ),
                      Text("Abbbbbbb"),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
