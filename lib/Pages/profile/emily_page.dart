import 'package:flutter/material.dart';
import 'package:bukit_vista/Widgets/text.dart';

import '../list_guest.dart';
import '../list_property.dart';

class EmilyPage extends StatefulWidget {
  const EmilyPage({Key? key}) : super(key: key);

  @override
  State<EmilyPage> createState() => _EmilyPageState();
}

class _EmilyPageState extends State<EmilyPage> {
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

    Widget fullProfile(
      String birth,
      String email,
      String cellNo,
      String property,
      String checkIn,
      String checkOut,
      String idCard,
    ) {
      return Container(
        width: mediaQueryWidth * 0.95,
        height: bodyHeight * 0.6,
        decoration: BoxDecoration(
          color: const Color(0xffFCF8E8),
          borderRadius: BorderRadius.circular(25),
        ),
        child: Padding(
          padding: const EdgeInsets.only(right: 12, left: 12, top: 20),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Date Of Birth:',
                        style: detailInfo,
                      ),
                      SizedBox(height: bodyHeight * 0.02),
                      Text(
                        'Email:',
                        style: detailInfo,
                      ),
                      SizedBox(height: bodyHeight * 0.02),
                      Text(
                        'Cell No:',
                        style: detailInfo,
                      ),
                      SizedBox(height: bodyHeight * 0.02),
                      Text(
                        'Property ID:',
                        style: detailInfo,
                      ),
                      SizedBox(height: bodyHeight * 0.02),
                      Text(
                        'Check In:',
                        style: detailInfo,
                      ),
                      SizedBox(height: bodyHeight * 0.02),
                      Text(
                        'Check Out:',
                        style: detailInfo,
                      ),
                      SizedBox(height: bodyHeight * 0.02),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        birth,
                        style: detailInfo,
                      ),
                      SizedBox(height: bodyHeight * 0.02),
                      Text(
                        email,
                        style: detailInfo,
                      ),
                      SizedBox(height: bodyHeight * 0.02),
                      Text(
                        cellNo,
                        style: detailInfo,
                      ),
                      SizedBox(height: bodyHeight * 0.02),
                      Text(
                        property,
                        style: detailInfo,
                      ),
                      SizedBox(height: bodyHeight * 0.02),
                      Text(
                        checkIn,
                        style: detailInfo,
                      ),
                      SizedBox(height: bodyHeight * 0.02),
                      Text(
                        checkOut,
                        style: detailInfo,
                      ),
                      SizedBox(height: bodyHeight * 0.02),
                    ],
                  ),
                ],
              ),
              SizedBox(height: bodyHeight * 0.02),
              Image.asset(
                idCard,
                width: mediaQueryWidth * 0.4,
                height: bodyHeight * 0.2,
              )
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
          'PROFILE EMILY',
          style: title,
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          profile(6, 'assets/woman.png', 'Emily Harper', 'Russia'),
          SizedBox(height: bodyHeight * 0.04),
          fullProfile(
              '25 July 1896',
              'harperly44@gmail.com',
              '+7-401-279-1432',
              'PR0701',
              '19 July 2021, 2:00 PM',
              '23 July 2021, TBA',
              'assets/idcardW.png')
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
