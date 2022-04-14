import 'package:balleballe11/constance/icon_constants.dart';
import 'package:balleballe11/login/login.dart';
import 'package:flutter/material.dart';

import 'about_us.dart';
import 'home_webpage.dart';
import 'how_to_play.dart';

class WebHeader extends StatefulWidget {
  const WebHeader({Key key}) : super(key: key);

  @override
  _WebHeaderState createState() => _WebHeaderState();
}

class _WebHeaderState extends State<WebHeader> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          "assets/img/frame_47.png",
          height: MediaQuery.of(context).size.height * 0.9,
          width: double.infinity,
          fit: BoxFit.cover,
        ),
        Padding(
          padding: const EdgeInsets.only(top: 20.0),
          child: Row(
            children: [
              const SizedBox(width: 60),
              Image.asset(
                ImgConstants.balleballe11_LOGO,
                // width: 40,
                // height: 30,

                height: MediaQuery.of(context).size.height * 0.16,
                fit: BoxFit.cover,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.08,
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: TextButton(
                        style: ButtonStyle(
                          foregroundColor:
                              MaterialStateProperty.resolveWith<Color>(
                                  (Set<MaterialState> states) {
                            // if (states.contains(MaterialState.focused))
                            //   return Colors.red;
                            if (states.contains(MaterialState.hovered))
                              return Colors.orange;
                            if (states.contains(MaterialState.pressed))
                              return Colors.orange;
                            return Colors
                                .white; // null throus error in flutter 2.2+.
                          }),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => WebHomePage()),
                          );
                        },
                        child: Text(
                          'Home',
                          style: TextStyle(fontWeight: FontWeight.w700),
                        ),
                      ),
                    ),
                    Expanded(
                      child: TextButton(
                        style: ButtonStyle(
                          foregroundColor:
                              MaterialStateProperty.resolveWith<Color>(
                                  (Set<MaterialState> states) {
                            // if (states.contains(MaterialState.focused))
                            //   return Colors.red;
                            if (states.contains(MaterialState.hovered))
                              return Colors.orange;
                            if (states.contains(MaterialState.pressed))
                              return Colors.orange;
                            return Colors
                                .white; // null throus error in flutter 2.2+.
                          }),
                        ),
                        onPressed: () {
                          //  _launchAboutUs();
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => AboutUs()),
                          );
                        },
                        child: Text(
                          'About Us',
                          style: TextStyle(fontWeight: FontWeight.w700),
                        ),
                      ),
                    ),
                    Expanded(
                      child: TextButton(
                        style: ButtonStyle(
                          foregroundColor:
                              MaterialStateProperty.resolveWith<Color>(
                                  (Set<MaterialState> states) {
                            // if (states.contains(MaterialState.focused))
                            //   return Colors.red;
                            if (states.contains(MaterialState.hovered))
                              return Colors.orange;
                            if (states.contains(MaterialState.pressed))
                              return Colors.orange;
                            return Colors
                                .white; // null throus error in flutter 2.2+.
                          }),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HowToPlay()),
                          );
                        },
                        child: Text(
                          'How to Play',
                          style: TextStyle(fontWeight: FontWeight.w700),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Spacer(),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Colors.white, // background
                      onPrimary: Colors.black),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LoginPage()),
                    );
                  },
                  child: Container(
                    padding:
                        EdgeInsets.only(top: 5, bottom: 5, left: 5, right: 5),
                    child: Text(
                      "Login",
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                          fontWeight: FontWeight.w500),
                    ),
                  )),
              const SizedBox(width: 60),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 180),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.4,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "Our Mission",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(height: 10),
                          Text(
                            "Who we are ?",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 24,
                                fontWeight: FontWeight.w600),
                          ),
                          const SizedBox(height: 30),
                          Text(
                            "balleballe11 is the flagship product of Fantasy Sports balleballe11 Private Limited. balleballe11 is India’s Biggest Sports Gaming platform with users playing Fantasy Cricket. It is a fantasy Sports Management platform that offers Indian sports fans a platform to showcase their sports knowledge. User can create their own team made up of real-life players from upcoming matches, score points based on their on-field performance and compete with other User.",
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                                height: 1.5),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Text(
                            "We make sure you become a part of the game you love so much and get a chance to win real cash and some more amazing rewards. So gear up as we take you to a world of ‘fantasies’ where you play alongside the stars of the game. We offer a safe and secured platform to enjoy fantasy sports at your leisure.",
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                                height: 1.5),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );

    // Container(
    //   padding: EdgeInsets.only(bottom: 30, top: 30),
    //   decoration: BoxDecoration(
    //     color: Color(0xffed2224),
    //   ),
  }
}
