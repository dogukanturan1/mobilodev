import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:mobil_odev/screens/profile_screen.dart';

import '../constant.dart';
import '../constant.dart';
import '../constant.dart';
import '../constant.dart';
import '../constant.dart';
import '../constant.dart';
import '../constant.dart';
import '../constant.dart';
import '../constant.dart';
import '../constant.dart';

class OnboardingScreen extends StatefulWidget {
  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    indicator() {
      return Container(
        width: 6,
        height: 6,
        margin: EdgeInsets.all(2),
        decoration: BoxDecoration(
          color: kWhiteColor,
          shape: BoxShape.circle,
        ),
      );
    }

    activeIndicator() {
      return Container(
        width: 12,
        height: 12,
        margin: EdgeInsets.all(2),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            color: kWhiteColor,
          ),
        ),
        child: Center(
          child: Container(
            width: 6,
            height: 6,
            decoration: BoxDecoration(
              color: kWhiteColor,
              shape: BoxShape.circle,
            ),
          ),
        ),
      );
    }

    return Scaffold(
      body: Stack(
        children: [
          CarouselSlider(
            items: [0, 1, 2, 3].map((e) {
              return Image.asset('assets/images/uu_logo.png');
            }).toList(),
            options: CarouselOptions(
              height: double.infinity,
              initialPage: currentIndex,
              viewportFraction: 1,
              onPageChanged: (index, reason) {
                setState(() {
                  currentIndex = index;
                });
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 40, top: 80),
            child: Row(
              children: [0, 1, 2, 3].map((item) {
                if (item == currentIndex) return activeIndicator();
                return indicator();
              }).toList(),
            ),
          ),
          Center(
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 36,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'Uludağ Üniversitesi',
                    style: TextStyle(
                      fontSize: 40,
                      color: Colors.blueGrey,
                      fontWeight: FontWeight.w500,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 260,
                  ),
                  Text(
                    '',
                    style: TextStyle(
                      color: kWhiteColor,
                      fontSize: 16,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  MaterialButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ProfileScreen(),
                        ),
                      );
                    },
                    color: kWhiteColor,
                    minWidth: double.infinity,
                    padding: EdgeInsets.symmetric(
                      vertical: 4,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Text(
                      'Müzik Çalar',
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 12,
                  ),

                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    'You are going to sign up. Please review our',
                    style: TextStyle(
                      color: kWhiteColor,
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    'Doğukan Turan',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      decoration: TextDecoration.underline,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height:10,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
