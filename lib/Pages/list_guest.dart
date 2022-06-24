import 'package:bukit_vista/Pages/list_property.dart';
import 'package:bukit_vista/Pages/profile/alexandra_page.dart';
import 'package:bukit_vista/Pages/profile/edward_page.dart';
import 'package:bukit_vista/Pages/profile/emily_page.dart';
import 'package:bukit_vista/Pages/profile/james_page.dart';
import 'package:bukit_vista/Pages/profile/lucy_page.dart';
import 'package:bukit_vista/Pages/property/property1.dart';
import 'package:bukit_vista/Pages/property/property2.dart';
import 'package:bukit_vista/Pages/property/property3.dart';
import 'package:bukit_vista/Pages/property/property4.dart';
import 'package:bukit_vista/Pages/property/property5.dart';
import 'package:bukit_vista/Widgets/text.dart';
import 'package:flutter/material.dart';

import 'profile/farhan_page.dart';

class ListGuest extends StatefulWidget {
  const ListGuest({Key? key}) : super(key: key);

  @override
  State<ListGuest> createState() => _ListGuestState();
}

class _ListGuestState extends State<ListGuest> {
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

    Widget profile(
      int index,
      String imageUrl,
      String surname,
      String country,
    ) {
      return Center(
        child: Container(
          width: mediaQueryWidth * 0.95,
          height: 111,
          decoration: BoxDecoration(
            color: const Color(0xffFCF8E8),
            borderRadius: BorderRadius.circular(25),
          ),
          child: Row(
            children: [
              Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Image.asset(
                      'assets/Ellipse.png',
                      width: mediaQueryWidth * 0.2,
                      height: bodyHeight * 0.11,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 11, left: 33, right: 13, bottom: 15),
                    child: Image.asset(
                      imageUrl,
                      width: mediaQueryWidth * 0.13,
                      height: bodyHeight * 0.065,
                    ),
                  ),
                ],
              ),
              SizedBox(width: mediaQueryWidth * 0.08),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 25),
                    child: Text(
                      surname,
                      style: name,
                    ),
                  ),
                  Text(
                    country,
                    style: place,
                  )
                ],
              ),
            ],
          ),
        ),
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
                'LIST OF GUESTS',
                style: title,
              ),
            ),
          ),
          SizedBox(height: bodyHeight * 0.04),
          SizedBox(
            height: bodyHeight * 0.65,
            child: ListView(
              scrollDirection: Axis.vertical,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) {
                          return const FarhanPage();
                        },
                      ),
                    );
                  },
                  child: profile(
                      1, 'assets/man.png', 'Farhan Ashari', 'Indonesia'),
                ),
                SizedBox(height: bodyHeight * 0.04),
                GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) {
                            return const LucyPage();
                          },
                        ),
                      );
                    },
                    child: profile(
                        2, 'assets/woman.png', 'Lucy Anna', 'Singapore')),
                SizedBox(height: bodyHeight * 0.04),
                GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) {
                            return const AlexandraPage();
                          },
                        ),
                      );
                    },
                    child: profile(3, 'assets/woman.png', 'Alexandra Morgan',
                        'Australia')),
                SizedBox(height: bodyHeight * 0.04),
                GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) {
                            return const EdwardPage();
                          },
                        ),
                      );
                    },
                    child: profile(
                        4, 'assets/man.png', 'Edward Beckham', 'London')),
                SizedBox(height: bodyHeight * 0.04),
                GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) {
                            return const JamesPage();
                          },
                        ),
                      );
                    },
                    child: profile(
                        5, 'assets/man.png', 'James Mason', 'New Zealand')),
                SizedBox(height: bodyHeight * 0.04),
                GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) {
                            return const EmilyPage();
                          },
                        ),
                      );
                    },
                    child: profile(
                        6, 'assets/woman.png', 'Emily Harper', 'Russia')),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color(0xffCED89E),
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.black,
        currentIndex: index,
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
