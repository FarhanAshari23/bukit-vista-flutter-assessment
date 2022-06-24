import 'package:bukit_vista/Pages/property/property1.dart';
import 'package:bukit_vista/Pages/property/property2.dart';
import 'package:bukit_vista/Pages/property/property3.dart';
import 'package:bukit_vista/Pages/property/property4.dart';
import 'package:bukit_vista/Pages/property/property5.dart';
import 'package:flutter/material.dart';
import '../Widgets/text.dart';

import 'list_guest.dart';

class ListProperty extends StatefulWidget {
  const ListProperty({Key? key}) : super(key: key);

  @override
  State<ListProperty> createState() => _ListPropertyState();
}

class _ListPropertyState extends State<ListProperty> {
  int selectedIndex = -1;
  late int id;
  late int index;
  @override
  void initState() {
    index = 0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final mediaQueryHeight = MediaQuery.of(context).size.height;
    final bodyHeight = mediaQueryHeight -
        MediaQuery.of(context).padding.top -
        MediaQuery.of(context).padding.bottom;
    final mediaQueryWidth = MediaQuery.of(context).size.width;
    Widget property(String imgProperty, String namePlace, int index) {
      return Column(
        children: [
          GestureDetector(
            onTap: () {
              setState(() {
                selectedIndex = index;
              });
            },
            child: Container(
              width: mediaQueryWidth * 0.4,
              height: bodyHeight * 0.2,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                border: Border.all(
                    color: selectedIndex == index
                        ? const Color(0xff6050E7)
                        : Colors.black),
              ),
              child: Image.asset(
                imgProperty,
                width: 160,
                height: 155,
              ),
            ),
          ),
          SizedBox(height: bodyHeight * 0.03),
          Center(
            child: Text(
              namePlace,
              textAlign: TextAlign.center,
              style: descPlace,
            ),
          )
        ],
      );
    }

    return Scaffold(
      backgroundColor: const Color(0xff76BA99),
      appBar: AppBar(
        backgroundColor: const Color(0xffCED89E),
        title: Text(
          'BUKIT VISTA',
          style: title,
        ),
      ),
      drawer: Drawer(
        backgroundColor: const Color(0xffced89e),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              alignment: Alignment.bottomLeft,
              height: bodyHeight * 0.14,
              color: const Color(0xff76ba99),
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: Text(
                  'TABS',
                  style: title,
                ),
              ),
            ),
            SizedBox(height: bodyHeight * 0.03),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                      builder: (context) {
                        return const ListGuest();
                      },
                    ),
                  );
                },
                child: Container(
                  height: bodyHeight * 0.07,
                  width: mediaQueryWidth * 0.56,
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(12),
                    child: Text(
                      'List Of Guest',
                      style: name,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: bodyHeight * 0.025),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text(
                'Details all property',
                style: features,
              ),
            ),
            SizedBox(height: bodyHeight * 0.025),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) {
                        return const Property1();
                      },
                    ),
                  );
                },
                child: Container(
                  height: bodyHeight * 0.07,
                  width: mediaQueryWidth * 0.56,
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(12),
                    child: Text(
                      'FOREST OF PENIDA',
                      style: name,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: bodyHeight * 0.025),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) {
                        return const Property5();
                      },
                    ),
                  );
                },
                child: Container(
                  height: bodyHeight * 0.07,
                  width: mediaQueryWidth * 0.56,
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(12),
                    child: Text(
                      'HOMEY 3BR VILLA',
                      style: name,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: bodyHeight * 0.025),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) {
                        return const Property2();
                      },
                    ),
                  );
                },
                child: Container(
                  height: bodyHeight * 0.07,
                  width: mediaQueryWidth * 0.56,
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(12),
                    child: Text(
                      'SPACIOUS WOODEN VILLA',
                      style: name,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: bodyHeight * 0.025),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) {
                        return const Property3();
                      },
                    ),
                  );
                },
                child: Container(
                  height: bodyHeight * 0.09,
                  width: mediaQueryWidth * 0.56,
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(12),
                    child: Text(
                      'LUXURIOUS HOME IN JOGJA',
                      style: name,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: bodyHeight * 0.025),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) {
                        return const Property4();
                      },
                    ),
                  );
                },
                child: Container(
                  height: bodyHeight * 0.07,
                  width: mediaQueryWidth * 0.56,
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(12),
                    child: Text(
                      'ATRA BAMBULOGY',
                      style: name,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 23),
              child: Text(
                'LIST OF PROPERTY',
                style: title,
              ),
            ),
          ),
          SizedBox(height: bodyHeight * 0.05),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: SizedBox(
              height: 460,
              width: mediaQueryWidth * 0.94,
              child: ListView(
                scrollDirection: Axis.vertical,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          property('assets/Property1.png',
                              'PERFECT ESCAPE\nFOREST OF PENIDA', 0),
                          SizedBox(width: mediaQueryWidth * 0.1),
                          property('assets/Property2.png',
                              'SPACIOUS WOODEN\nVILLA', 1)
                        ],
                      ),
                      SizedBox(height: bodyHeight * 0.09),
                      Row(
                        children: [
                          property('assets/Property3.png',
                              'LUXURIOS HOME\nJOGJA', 2),
                          SizedBox(width: mediaQueryWidth * 0.1),
                          property('assets/Property4.png', 'ATRA\nBAMBULOGY', 3)
                        ],
                      ),
                      SizedBox(height: bodyHeight * 0.09),
                      Row(
                        children: [
                          property(
                              'assets/Property5.png', 'HOMEY 3 BR\nVILLA', 4),
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color(0xffCED89E),
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.black,
        currentIndex: 1,
        onTap: (value) {
          if (value == 1) {
            Navigator.of(context).pushReplacement(
              MaterialPageRoute(
                builder: (context) {
                  return const ListProperty();
                },
              ),
            );
          } else {
            Navigator.of(context).pushReplacement(
              MaterialPageRoute(
                builder: (context) {
                  return const ListGuest();
                },
              ),
            );
          }
          setState(
            () {
              index = value;
            },
          );
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Guest",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Property",
          ),
        ],
      ),
    );
  }
}
