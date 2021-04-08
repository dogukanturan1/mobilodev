import 'package:flutter/material.dart';

import '../constant.dart';
import '../constant.dart';
import '../constant.dart';
import '../constant.dart';
import '../constant.dart';
import '../constant.dart';
import '../constant.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                'assets/images/teknik_bilimler.jpg',
              ),
              alignment: Alignment.topCenter,
              fit: BoxFit.fitWidth,
            ),
          ),
          child: Column(
            children: [
              SizedBox(
                height: 300,
              ),
              Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(vertical: 100),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  color: Colors.lightGreen,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    //Let's add some text title

                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: Text(
                        "Top 10",
                        style: TextStyle(
                          color: Colors.blueGrey,
                          fontSize: 50.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 12.0),
                      child: Text(
                        "This is Mahmut Tuncer",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24.0,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    SizedBox(
                      height:25.0,
                    ),
                    Center(
                      child: Container(
                        width: 290.0,
                        height: 280.0,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(35.0),
                            image: DecorationImage(
                              image: AssetImage("assets/images/maymun.jpeg"),
                            )),
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Center(
                      child: Text(
                        "I am sorry",
                        style: TextStyle(
                          color: Colors.white70,
                          fontSize: 40.0,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    SizedBox(
                      height:15,
                    ),

                    Container(
                      width: 500.0,
                      child:  Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        IconButton(iconSize: 45.0,
                          color: Colors.blueGrey,
                          onPressed: () {},
                          icon: Icon(
                            Icons.skip_previous,
                          ),
                        ),
                        IconButton(iconSize: 62.0,
                          color: Colors.blueGrey,
                         onPressed: () {},
                          icon: Icon(
                            Icons.play_arrow,
                          ),
                        ),
                        IconButton(
                          iconSize: 45.0,
                          color: Colors.blueGrey,
                          onPressed: () {},
                          icon: Icon(
                            Icons.skip_next,
                          ),
                        ),


                      ],
                    )
                    )







                  ],
                      ),

                    ),




                  ],
                ),
              ),

          ),

    );

  }
}
