import 'package:flutter/material.dart';
import 'package:bukit_vista/Widgets/text.dart';

import '../list_guest.dart';
import '../list_property.dart';

class Property5 extends StatefulWidget {
  const Property5({Key? key}) : super(key: key);

  @override
  State<Property5> createState() => _Property5State();
}

class _Property5State extends State<Property5> {
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
    Widget fullProperty(
      String nameP,
      String id,
      String price,
      String rooms,
      String bedrooms,
      String bathrooms,
      String guestN,
    ) {
      return Container(
        width: mediaQueryWidth * 0.95,
        height: bodyHeight * 0.45,
        decoration: BoxDecoration(
          color: const Color(0xffFCF8E8),
          borderRadius: BorderRadius.circular(25),
        ),
        child: Padding(
          padding: const EdgeInsets.only(right: 12, left: 12, top: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: bodyHeight * 0.01),
              Text(
                nameP,
                style: detailInfo,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: bodyHeight * 0.025),
                      Text(
                        'Property ID:',
                        style: detailInfo,
                      ),
                      SizedBox(height: bodyHeight * 0.025),
                      Text(
                        'Price:',
                        style: detailInfo,
                      ),
                      SizedBox(height: bodyHeight * 0.025),
                      Text(
                        'Rooms:',
                        style: detailInfo,
                      ),
                      SizedBox(height: bodyHeight * 0.025),
                      Text(
                        'Bedrooms:',
                        style: detailInfo,
                      ),
                      SizedBox(height: bodyHeight * 0.025),
                      Text(
                        'Bathrooms:',
                        style: detailInfo,
                      ),
                      SizedBox(height: bodyHeight * 0.025),
                      Text(
                        'Guest Number:',
                        style: detailInfo,
                      ),
                      SizedBox(height: bodyHeight * 0.025),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: bodyHeight * 0.025),
                      Text(
                        id,
                        style: detailInfo,
                      ),
                      SizedBox(height: bodyHeight * 0.025),
                      Text(
                        price,
                        style: detailInfo,
                      ),
                      SizedBox(height: bodyHeight * 0.025),
                      Text(
                        rooms,
                        style: detailInfo,
                      ),
                      SizedBox(height: bodyHeight * 0.025),
                      Text(
                        bedrooms,
                        style: detailInfo,
                      ),
                      SizedBox(height: bodyHeight * 0.025),
                      Text(
                        bathrooms,
                        style: detailInfo,
                      ),
                      SizedBox(height: bodyHeight * 0.025),
                      Text(
                        guestN,
                        style: detailInfo,
                      ),
                      SizedBox(height: bodyHeight * 0.025),
                    ],
                  ),
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
          'HOMEY 3BR VILLA',
          style: title,
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 21),
                child: Image.asset(
                  'assets/Property5.png',
                  width: mediaQueryWidth * 0.58,
                  height: mediaQueryWidth * 0.57,
                ),
              ),
              SizedBox(width: mediaQueryWidth * 0.015),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Features',
                    style: features,
                  ),
                  SizedBox(height: bodyHeight * 0.02),
                  Row(
                    children: [
                      Stack(
                        children: [
                          Image.asset(
                            'assets/Ellipse.png',
                            width: mediaQueryWidth * 0.15,
                            height: bodyHeight * 0.055,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 7, left: 12, right: 8, bottom: 8),
                            child: Image.asset(
                              'assets/bathtub.png',
                              width: mediaQueryWidth * 0.1,
                              height: bodyHeight * 0.04,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(width: mediaQueryWidth * 0.001),
                      Stack(
                        children: [
                          Image.asset(
                            'assets/Ellipse.png',
                            width: mediaQueryWidth * 0.15,
                            height: bodyHeight * 0.055,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 7, left: 10, right: 8, bottom: 8),
                            child: Image.asset(
                              'assets/fridge.png',
                              width: mediaQueryWidth * 0.1,
                              height: bodyHeight * 0.04,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: bodyHeight * 0.02),
                  Row(
                    children: [
                      Stack(
                        children: [
                          Image.asset(
                            'assets/Ellipse.png',
                            width: mediaQueryWidth * 0.15,
                            height: bodyHeight * 0.055,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 7, left: 13, right: 8, bottom: 8),
                            child: Image.asset(
                              'assets/kitchen.png',
                              width: mediaQueryWidth * 0.08,
                              height: bodyHeight * 0.035,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(width: mediaQueryWidth * 0.001),
                      Stack(
                        children: [
                          Image.asset(
                            'assets/Ellipse.png',
                            width: mediaQueryWidth * 0.15,
                            height: bodyHeight * 0.055,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 7, left: 13, right: 8, bottom: 8),
                            child: Image.asset(
                              'assets/parking-area.png',
                              width: mediaQueryWidth * 0.08,
                              height: bodyHeight * 0.035,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: bodyHeight * 0.02),
                  Row(
                    children: [
                      Stack(
                        children: [
                          Image.asset(
                            'assets/Ellipse.png',
                            width: mediaQueryWidth * 0.15,
                            height: bodyHeight * 0.055,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 7, left: 10, right: 8, bottom: 8),
                            child: Image.asset(
                              'assets/smart-tv.png',
                              width: mediaQueryWidth * 0.1,
                              height: bodyHeight * 0.04,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(width: mediaQueryWidth * 0.009),
                      Stack(
                        children: [
                          Image.asset(
                            'assets/Ellipse.png',
                            width: mediaQueryWidth * 0.15,
                            height: bodyHeight * 0.055,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 7, left: 10, right: 8, bottom: 8),
                            child: Image.asset(
                              'assets/swimming-pool.png',
                              width: mediaQueryWidth * 0.1,
                              height: bodyHeight * 0.04,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: bodyHeight * 0.035),
          fullProperty('HOMEY 3BR VILLA', 'PR0678', 'Rp.850.000/night', '3',
              '3', '3', '6')
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
