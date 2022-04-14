import 'dart:html';

import 'package:card_swiper/card_swiper.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:balleballe11/WebPAge/responsive.dart';
import 'package:balleballe11/constance/color_constant.dart';
import 'package:balleballe11/constance/icon_constants.dart';
import 'package:balleballe11/login/login.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'package:url_launcher/url_launcher.dart';

import 'about_us.dart';
import 'footer.dart';
import 'footerMob.dart';
import 'how_to_play.dart';

class WebHomePage extends StatefulWidget {
  const WebHomePage({Key key}) : super(key: key);

  @override
  State<WebHomePage> createState() => _WebHomePageState();
}

class _WebHomePageState extends State<WebHomePage> {
  int selectiveColor = 0;

  // Follow Us
  String launchfacebook = "https://www.facebook.com/balleballe11official/";
  String launchyoutube = "https://youtube.com/";
  String launchinstagram = "https://www.instagram.com";
  String launchtwitter = "https://twitter.com/";
  String launchtelegram = "https://t.me";

  void _facebook() async => await canLaunch(launchfacebook)
      ? await launch(launchfacebook)
      : throw 'Could not launch $launchfacebook';

  void _youtube() async => await canLaunch(launchyoutube)
      ? await launch(launchyoutube)
      : throw 'Could not launch $launchyoutube';

  void _instagram() async => await canLaunch(launchinstagram)
      ? await launch(launchinstagram)
      : throw 'Could not launch $launchinstagram';

  void _twitter() async => await canLaunch(launchtwitter)
      ? await launch(launchtwitter)
      : throw 'Could not launch $launchtwitter';

  void _telegram() async => await canLaunch(launchtelegram)
      ? await launch(launchtelegram)
      : throw 'Could not launch $launchtelegram';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScrollConfiguration(
        behavior: ScrollConfiguration.of(context).copyWith(
          dragDevices: {
            PointerDeviceKind.touch,
            PointerDeviceKind.mouse,
            PointerDeviceKind.unknown,
            PointerDeviceKind.stylus,
            PointerDeviceKind.invertedStylus
          },
        ),
        child: SingleChildScrollView(
          physics: ClampingScrollPhysics(),
          child: Column(
            children: [
              if (Responsive.isDesktop(context))
                SingleChildScrollView(
                  physics: ClampingScrollPhysics(),
                  child: Column(
                    children: [
                      Stack(
                        children: [
                          Image.asset(
                            'assets/img/frame45.png',
                            width: MediaQuery.of(context).size.width,
                            //   height: MediaQuery.of(context).size.height * 0.9,
                            fit: BoxFit.cover,
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(top: 20.0, right: 60),
                            child: Row(
                              children: [
                                const SizedBox(width: 60),
                                Image.asset(
                                  ImgConstants.balleballe11_LOGO,
                                  // width: 40,
                                  // height: 30,
                                  // width:
                                  //     MediaQuery.of(context).size.width * 0.16,
                                  height:
                                      MediaQuery.of(context).size.height * 0.16,
                                  fit: BoxFit.cover,
                                ),
                                SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.08,
                                ),
                                Expanded(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Expanded(
                                        child: TextButton(
                                          style: ButtonStyle(
                                            foregroundColor:
                                                MaterialStateProperty
                                                    .resolveWith<Color>(
                                                        (Set<MaterialState>
                                                            states) {
                                              // if (states.contains(MaterialState.focused))
                                              //   return Colors.red;
                                              if (states.contains(
                                                  MaterialState.hovered))
                                                return Colors.orange;
                                              if (states.contains(
                                                  MaterialState.pressed))
                                                return Colors.orange;
                                              return Colors
                                                  .white; // null throus error in flutter 2.2+.
                                            }),
                                          ),
                                          onPressed: () {},
                                          child: Text('Home'),
                                        ),
                                      ),
                                      Expanded(
                                        child: TextButton(
                                          style: ButtonStyle(
                                            foregroundColor:
                                                MaterialStateProperty
                                                    .resolveWith<Color>(
                                                        (Set<MaterialState>
                                                            states) {
                                              // if (states.contains(MaterialState.focused))
                                              //   return Colors.red;
                                              if (states.contains(
                                                  MaterialState.hovered))
                                                return Colors.orange;
                                              if (states.contains(
                                                  MaterialState.pressed))
                                                return Colors.orange;
                                              return Colors
                                                  .white; // null throus error in flutter 2.2+.
                                            }),
                                          ),
                                          onPressed: () {
                                            //  _launchAboutUs();
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      AboutUs()),
                                            );
                                          },
                                          child: Text('About Us'),
                                        ),
                                      ),
                                      Expanded(
                                        child: TextButton(
                                          style: ButtonStyle(
                                            foregroundColor:
                                                MaterialStateProperty
                                                    .resolveWith<Color>(
                                                        (Set<MaterialState>
                                                            states) {
                                              // if (states.contains(MaterialState.focused))
                                              //   return Colors.red;
                                              if (states.contains(
                                                  MaterialState.hovered))
                                                return Colors.orange;
                                              if (states.contains(
                                                  MaterialState.pressed))
                                                return Colors.orange;
                                              return Colors
                                                  .white; // null throus error in flutter 2.2+.
                                            }),
                                          ),
                                          onPressed: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      HowToPlay()),
                                            );
                                          },
                                          child: Text('How to Play'),
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
                                        MaterialPageRoute(
                                            builder: (context) => LoginPage()),
                                      );
                                    },
                                    child: Container(
                                      padding: EdgeInsets.only(
                                          top: 5, bottom: 5, left: 5, right: 5),
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
                            padding: const EdgeInsets.only(left: 60, top: 210),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Flexible(
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Row(
                                            children: [
                                              Flexible(
                                                child: Text(
                                                  "Play Fantasy Sports",
                                                  style: TextStyle(
                                                      fontSize: 50,
                                                      color: Color(0xffffe500),
                                                      fontWeight:
                                                          FontWeight.w700),
                                                ),
                                              ),
                                            ],
                                          ),
                                          const SizedBox(
                                            height: 20,
                                          ),
                                          Row(
                                            children: [
                                              Container(
                                                color: Colors.white,
                                                height: 7,
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    0.37,
                                              ),
                                            ],
                                          ),
                                          const SizedBox(
                                            height: 10,
                                          ),
                                          Row(
                                            children: [
                                              Flexible(
                                                child: Text(
                                                  "WIN LAKHS",
                                                  style: TextStyle(
                                                      fontSize: 75,
                                                      color: Colors.white,
                                                      letterSpacing: 1.6,
                                                      fontWeight:
                                                          FontWeight.w700),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              Flexible(
                                                child: Text(
                                                  "IN EVERY MATCH",
                                                  style: TextStyle(
                                                      fontSize: 60,
                                                      color: Colors.white,
                                                      letterSpacing: 1,
                                                      fontWeight:
                                                          FontWeight.w700),
                                                ),
                                              ),
                                            ],
                                          ),
                                          SizedBox(
                                            height: 40,
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 120.0),
                                            child: Row(
                                              children: [
                                                ElevatedButton(
                                                    style: ElevatedButton
                                                        .styleFrom(
                                                            primary: Colors
                                                                .black, // background
                                                            onPrimary:
                                                                Colors.white),
                                                    onPressed: () {
                                                      downloadFile(
                                                          "https://balleballe11.in/upload/apk/balleballe11.apk");
                                                    },
                                                    child: Container(
                                                      padding: EdgeInsets.only(
                                                          top: 10,
                                                          bottom: 10,
                                                          left: 10,
                                                          right: 10),
                                                      child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .center,
                                                        children: [
                                                          Column(
                                                            children: [
                                                              Image.asset(
                                                                "assets/img/android_icon1.png",
                                                                // height: 80,
                                                                // width: 80,
                                                              ),
                                                            ],
                                                          ),
                                                          SizedBox(width: 5),
                                                          Column(
                                                            children: [
                                                              Row(
                                                                children: [
                                                                  Text(
                                                                    "DOWNLOAD FOR",
                                                                    style: TextStyle(
                                                                        fontSize:
                                                                            14,
                                                                        color: Colors
                                                                            .white),
                                                                  ),
                                                                ],
                                                              ),
                                                              Row(
                                                                children: [
                                                                  Text(
                                                                    "ANDROID",
                                                                    style: TextStyle(
                                                                        fontSize:
                                                                            14,
                                                                        color: Colors
                                                                            .white),
                                                                  )
                                                                ],
                                                              )
                                                            ],
                                                          ),
                                                        ],
                                                      ),
                                                    )),
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    Flexible(
                                      child: Column(
                                        //  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Image.asset(
                                            "assets/img/group_home.jpg",
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                0.7,
                                            //   width: 400,
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 60,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Flexible(
                            child: Text(
                              "It's easy to start playing on balleballe11",
                              style: TextStyle(
                                  fontSize: 35,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w700),
                            ),
                          )
                        ],
                      ),
                      const SizedBox(height: 50),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                              width: MediaQuery.of(context).size.width * 0.04),
                          Flexible(
                            child: Row(
                              children: [
                                Container(
                                  decoration: new BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: new BorderRadius.all(
                                      Radius.circular(20.0),
                                    ),
                                    border: Border.all(
                                      width: 35,
                                      color: Color(0xffeaf8ff),
                                      style: BorderStyle.solid,
                                    ),
                                  ),
                                  child: Column(
                                    children: [
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.22,
                                        padding: EdgeInsets.all(30),
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: new BorderRadius.all(
                                            Radius.circular(20.0),
                                          ),
                                        ),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Image.asset(
                                                  'assets/img/group_wicket.png',
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      0.1,
                                                  height: MediaQuery.of(context)
                                                          .size
                                                          .height *
                                                      0.1,
                                                ),
                                              ],
                                            ),
                                            Center(
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Flexible(
                                                    child: Center(
                                                      child: Text(
                                                        "Select A Match",
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: TextStyle(
                                                            fontSize: 30,
                                                            color: Colors.black,
                                                            fontWeight:
                                                                FontWeight
                                                                    .bold),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Center(
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Flexible(
                                                    child: Center(
                                                      child: Text(
                                                        "Choose an upcoming match that you want to play",
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: TextStyle(
                                                            fontSize: 24,
                                                            color: Colors.grey,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w500),
                                                      ),
                                                    ),
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
                            ),
                          ),
                          // const SizedBox(
                          //   width: 60,
                          // ),
                          Flexible(
                            child: Row(
                              children: [
                                Container(
                                  decoration: new BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: new BorderRadius.all(
                                      Radius.circular(20.0),
                                    ),
                                    border: Border.all(
                                      width: 35,
                                      color: Color(0xfffef6ed),
                                      style: BorderStyle.solid,
                                    ),
                                  ),
                                  child: Column(
                                    children: [
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.22,
                                        padding: EdgeInsets.all(30),
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: new BorderRadius.all(
                                            Radius.circular(20.0),
                                          ),
                                        ),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Image.asset(
                                                  'assets/img/group_people.png',
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      0.1,
                                                  height: MediaQuery.of(context)
                                                          .size
                                                          .height *
                                                      0.1,
                                                ),
                                              ],
                                            ),
                                            Center(
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Flexible(
                                                    child: Center(
                                                      child: Text(
                                                        "Create Team",
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: TextStyle(
                                                            fontSize: 30,
                                                            color: Colors.black,
                                                            fontWeight:
                                                                FontWeight
                                                                    .bold),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Center(
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Flexible(
                                                    child: Center(
                                                      child: Text(
                                                        "Use your skills to pick the right players",
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: TextStyle(
                                                            fontSize: 24,
                                                            color: Colors.grey,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w500),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Container(
                                              height: 30,
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
                          // const SizedBox(
                          //   width: 60,
                          // ),
                          Flexible(
                            child: Row(
                              children: [
                                Container(
                                  decoration: new BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: new BorderRadius.all(
                                      Radius.circular(20.0),
                                    ),
                                    border: Border.all(
                                      width: 35,
                                      color: Color(0xfffceff7),
                                      style: BorderStyle.solid,
                                    ),
                                  ),
                                  child: Column(
                                    children: [
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.22,
                                        padding: EdgeInsets.all(30),
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: new BorderRadius.all(
                                            Radius.circular(20.0),
                                          ),
                                        ),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Image.asset(
                                                  'assets/img/group_champion.png',
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      0.1,
                                                  height: MediaQuery.of(context)
                                                          .size
                                                          .height *
                                                      0.1,
                                                ),
                                              ],
                                            ),
                                            Center(
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Flexible(
                                                    child: Center(
                                                      child: Text(
                                                        "Join Contests",
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: TextStyle(
                                                            fontSize: 30,
                                                            color: Colors.black,
                                                            fontWeight:
                                                                FontWeight
                                                                    .bold),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Center(
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Flexible(
                                                    child: Center(
                                                      child: Text(
                                                        "Choose between different contests and win money",
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: TextStyle(
                                                            fontSize: 24,
                                                            color: Colors.grey,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w500),
                                                      ),
                                                    ),
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
                            ),
                          ),
                          // Container(
                          //   width: MediaQuery.of(context).size.width * 0.04,
                          // ),
                        ],
                      ),
                      const SizedBox(
                        height: 85,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "How it Works",
                            style: TextStyle(
                                fontSize: 35,
                                color: Colors.black,
                                fontWeight: FontWeight.w700),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Flexible(
                            child: Text(
                              "Get to know the flow of balleballe11 and start your fantasy sports journey with us",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w500),
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 60,
                      ),
                      Stack(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 100),
                              // Container(
                              //   color: Color(0xffed2224),
                              //   height: MediaQuery.of(context).size.height *
                              //       1.72 *
                              //       0.99,
                              //   width: MediaQuery.of(context).size.width,
                              // ),
                              Image.asset(
                                'assets/img/frame1.png',
                                width: MediaQuery.of(context).size.width,
                                height: MediaQuery.of(context).size.height *
                                    1.83 *
                                    0.95,
                                fit: BoxFit.fill,
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              SizedBox(
                                width: 30,
                              ),
                              Row(
                                children: [
                                  SizedBox(
                                    width:
                                        MediaQuery.of(context).size.width * 0.1,
                                  ),
                                  Container(
                                    width: MediaQuery.of(context).size.width *
                                        0.25,
                                    child: Column(
                                      children: [
                                        Image.asset(
                                          "assets/img/image_work1.jpg",
                                          height: 400,
                                          width: 400,
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    width:
                                        MediaQuery.of(context).size.width * 0.4,
                                    padding: EdgeInsets.only(left: 30),
                                    child: Column(
                                      children: [
                                        SizedBox(
                                          height: 80,
                                        ),
                                        Row(
                                          children: [
                                            Stack(
                                              alignment: Alignment.center,
                                              children: [
                                                Image.asset(
                                                  "assets/img/step_number.png",
                                                ),
                                                Text(
                                                  "01",
                                                  style: TextStyle(
                                                      fontSize: 24,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: Colors.black),
                                                )
                                              ],
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Row(
                                          children: [
                                            Flexible(
                                              child: Text(
                                                "Select A Match",
                                                style: TextStyle(
                                                    fontSize: 30,
                                                    color: Colors.white,
                                                    fontWeight:
                                                        FontWeight.w700),
                                              ),
                                            ),
                                          ],
                                        ),
                                        const SizedBox(
                                          height: 15,
                                        ),
                                        Row(
                                          children: [
                                            Flexible(
                                              child: Text(
                                                "To begin your journey, first of all you have to select a match that you want to play. You can choose any sport of your choice by clicking on it and your preferred contest too.",
                                                style: TextStyle(
                                                    fontSize: 18,
                                                    color: Colors.white,
                                                    fontWeight:
                                                        FontWeight.w500),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 30,
                              ),
                              Row(
                                children: [
                                  SizedBox(
                                    width: MediaQuery.of(context).size.width *
                                        0.18,
                                  ),
                                  Container(
                                    width:
                                        MediaQuery.of(context).size.width * 0.4,
                                    child: Column(
                                      children: [
                                        Row(
                                          children: [
                                            Stack(
                                              alignment: Alignment.center,
                                              children: [
                                                Image.asset(
                                                  "assets/img/step_number.png",
                                                ),
                                                Text(
                                                  "02",
                                                  style: TextStyle(
                                                      fontSize: 24,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: Colors.black),
                                                )
                                              ],
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Column(children: [
                                          Row(
                                            children: [
                                              Flexible(
                                                child: Text(
                                                  "Create Your Team",
                                                  style: TextStyle(
                                                      fontSize: 35,
                                                      color: Colors.white,
                                                      fontWeight:
                                                          FontWeight.w700),
                                                ),
                                              ),
                                            ],
                                          ),
                                          const SizedBox(
                                            height: 15,
                                          ),
                                          Row(
                                            children: [
                                              Flexible(
                                                child: Text(
                                                  "Once you entered in your preferred match and select your contest, now you have to create your balleballe11 team by following the best player ration as per sports standard.",
                                                  //   textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                      fontSize: 18,
                                                      color: Colors.white,
                                                      fontWeight:
                                                          FontWeight.w500),
                                                ),
                                              ),
                                            ],
                                          )
                                        ]),
                                        const SizedBox(
                                          height: 30,
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    width:
                                        MediaQuery.of(context).size.width * 0.4,
                                    child: Column(
                                      children: [
                                        Image.asset(
                                          "assets/img/image_work2.jpg",
                                          height: 400,
                                          width: 400,
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(
                                width: 30,
                              ),
                              Row(
                                children: [
                                  SizedBox(
                                    width:
                                        MediaQuery.of(context).size.width * 0.1,
                                  ),
                                  Container(
                                    padding:
                                        EdgeInsets.only(top: 20, right: 30),
                                    width: MediaQuery.of(context).size.width *
                                        0.25,
                                    child: Column(
                                      children: [
                                        Image.asset(
                                          "assets/img/image_work3.jpg",
                                          height: 450,
                                          width: 400,
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    width:
                                        MediaQuery.of(context).size.width * 0.4,
                                    child: Column(
                                      children: [
                                        SizedBox(
                                          height: 20,
                                        ),
                                        Row(
                                          children: [
                                            Stack(
                                              alignment: Alignment.center,
                                              children: [
                                                Image.asset(
                                                  "assets/img/step_number.png",
                                                ),
                                                Text(
                                                  "03",
                                                  style: TextStyle(
                                                      fontSize: 24,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: Colors.black),
                                                )
                                              ],
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Row(
                                          children: [
                                            Flexible(
                                              child: Text(
                                                "Join Contest",
                                                style: TextStyle(
                                                    fontSize: 30,
                                                    color: Colors.white,
                                                    fontWeight:
                                                        FontWeight.w700),
                                              ),
                                            ),
                                          ],
                                        ),
                                        const SizedBox(
                                          height: 15,
                                        ),
                                        Row(
                                          children: [
                                            Flexible(
                                              child: Text(
                                                "Created your fantasy team? Now choose your captain and vice-captain, as they worth more and join your preferred contest with your team. You can join multiple leagues with multiple teams.",
                                                style: TextStyle(
                                                    fontSize: 18,
                                                    color: Colors.white,
                                                    fontWeight:
                                                        FontWeight.w500),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                      Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Center(
                                child: Text(
                                  "What Our Users Say",
                                  style: TextStyle(
                                      fontSize: 40,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Flexible(
                                child: Center(
                                  child: Text(
                                    "Being a renowned Fantasy Sports Platform, we are recommended by millions of users. Here, check out what they say.",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 18,
                                        color: Colors.grey,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 40,
                          ),
                        ],
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.52,
                        color: Color(0xfff7f7f9),
                        child: Row(
                          children: [
                            Column(
                              children: [
                                Container(
                                  padding: EdgeInsets.only(top: 100, bottom: 0),
                                  width:
                                      MediaQuery.of(context).size.width * 0.25,
                                  child: Column(
                                    children: [
                                      Image.asset(
                                        "assets/img/customer.png",
                                        // height:
                                        //     MediaQuery.of(context).size.height * 0.4,
                                        //     width: MediaQuery.of(context).size.width * 0.4,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            // const SizedBox(
                            //   width: 55,
                            // ),
                            Column(
                              children: [
                                const SizedBox(
                                  height: 35,
                                ),
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.7,
                                  height:
                                      MediaQuery.of(context).size.height * 0.3,
                                  child: Swiper(
                                    itemCount: 2,
                                    itemBuilder:
                                        (BuildContext context, int index) =>
                                            Carousel(
                                      boxFit: BoxFit.cover,
                                      images: [
                                        Row(
                                          children: [
                                            Container(
                                              //  padding: EdgeInsets.only(top: 50),
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.20,
                                              child: Column(
                                                children: [
                                                  Flexible(
                                                    child: Text(
                                                      "I played cricket related you can mention any 5 min extra Deadline easy Winning , won 40+ lakhs in cricket.",
                                                      style: TextStyle(
                                                          fontSize: 18,
                                                          color: Colors.black,
                                                          fontWeight:
                                                              FontWeight.w500),
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 10,
                                                  ),
                                                  Row(
                                                    children: [
                                                      Column(
                                                        children: [
                                                          CircleAvatar(
                                                            radius: 20.0,
                                                            child: ClipRRect(
                                                              child: Image.asset(
                                                                  "assets/img/img1.jpg"),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          50.0),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      SizedBox(
                                                        width: MediaQuery.of(
                                                                    context)
                                                                .size
                                                                .width *
                                                            0.01,
                                                      ),
                                                      Flexible(
                                                        child: Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Row(
                                                              children: [
                                                                Flexible(
                                                                    child: Text(
                                                                        "Rahul Singh")),
                                                              ],
                                                            ),
                                                            Row(
                                                              children: [
                                                                Flexible(
                                                                    child: Text(
                                                                        "Ayodhya")),
                                                              ],
                                                            )
                                                          ],
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ),
                                            // const SizedBox(
                                            //   width: 25,
                                            // ),
                                            Container(
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.20,
                                              child: Column(
                                                children: [
                                                  Flexible(
                                                    child: Text(
                                                      "I played cricket related you can mention any 5 min extra Deadline easy Winning , won 40+ lakhs in cricket.",
                                                      style: TextStyle(
                                                          fontSize: 18,
                                                          color: Colors.black,
                                                          fontWeight:
                                                              FontWeight.w500),
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 10,
                                                  ),
                                                  Row(
                                                    children: [
                                                      Column(
                                                        children: [
                                                          CircleAvatar(
                                                            radius: 20.0,
                                                            child: ClipRRect(
                                                              child: Image.asset(
                                                                  "assets/img/img1.jpg"),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          50.0),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      SizedBox(
                                                        width: MediaQuery.of(
                                                                    context)
                                                                .size
                                                                .width *
                                                            0.01,
                                                      ),
                                                      Flexible(
                                                        child: Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Row(
                                                              children: [
                                                                Flexible(
                                                                    child: Text(
                                                                        "Rahul Singh")),
                                                              ],
                                                            ),
                                                            Row(
                                                              children: [
                                                                Flexible(
                                                                    child: Text(
                                                                        "Ayodhya")),
                                                              ],
                                                            )
                                                          ],
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ),
                                            // const SizedBox(
                                            //   width: 25,
                                            // ),
                                            Container(
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.20,
                                              child: Column(
                                                children: [
                                                  Flexible(
                                                    child: Text(
                                                      "I played cricket related you can mention any 5 min extra Deadline easy Winning , won 40+ lakhs in cricket.",
                                                      style: TextStyle(
                                                          fontSize: 18,
                                                          color: Colors.black,
                                                          fontWeight:
                                                              FontWeight.w500),
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 10,
                                                  ),
                                                  Row(
                                                    children: [
                                                      Column(
                                                        children: [
                                                          CircleAvatar(
                                                            radius: 20.0,
                                                            child: ClipRRect(
                                                              child: Image.asset(
                                                                  "assets/img/img1.jpg"),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          50.0),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      SizedBox(
                                                        width: MediaQuery.of(
                                                                    context)
                                                                .size
                                                                .width *
                                                            0.01,
                                                      ),
                                                      Flexible(
                                                        child: Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Row(
                                                              children: [
                                                                Flexible(
                                                                    child: Text(
                                                                        "Rahul Singh")),
                                                              ],
                                                            ),
                                                            Row(
                                                              children: [
                                                                Flexible(
                                                                    child: Text(
                                                                        "Ayodhya")),
                                                              ],
                                                            )
                                                          ],
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ),
                                            // const SizedBox(
                                            //   width: 25,
                                            // ),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Container(
                                              //  padding: EdgeInsets.only(top: 50),
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.20,
                                              child: Column(
                                                children: [
                                                  Flexible(
                                                    child: Text(
                                                      "I played cricket related you can mention any 5 min extra Deadline easy Winning , won 40+ lakhs in cricket.",
                                                      style: TextStyle(
                                                          fontSize: 18,
                                                          color: Colors.black,
                                                          fontWeight:
                                                              FontWeight.w500),
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 10,
                                                  ),
                                                  Row(
                                                    children: [
                                                      Column(
                                                        children: [
                                                          CircleAvatar(
                                                            radius: 20.0,
                                                            child: ClipRRect(
                                                              child: Image.asset(
                                                                  "assets/img/img1.jpg"),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          50.0),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      SizedBox(
                                                        width: MediaQuery.of(
                                                                    context)
                                                                .size
                                                                .width *
                                                            0.01,
                                                      ),
                                                      Flexible(
                                                        child: Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Row(
                                                              children: [
                                                                Flexible(
                                                                    child: Text(
                                                                        "Rahul Singh")),
                                                              ],
                                                            ),
                                                            Row(
                                                              children: [
                                                                Flexible(
                                                                    child: Text(
                                                                        "Ayodhya")),
                                                              ],
                                                            )
                                                          ],
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ),
                                            // const SizedBox(
                                            //   width: 25,
                                            // ),
                                            Container(
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.20,
                                              child: Column(
                                                children: [
                                                  Flexible(
                                                    child: Text(
                                                      "I played cricket related you can mention any 5 min extra Deadline easy Winning , won 40+ lakhs in cricket.",
                                                      style: TextStyle(
                                                          fontSize: 18,
                                                          color: Colors.black,
                                                          fontWeight:
                                                              FontWeight.w500),
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 10,
                                                  ),
                                                  Row(
                                                    children: [
                                                      Column(
                                                        children: [
                                                          CircleAvatar(
                                                            radius: 20.0,
                                                            child: ClipRRect(
                                                              child: Image.asset(
                                                                  "assets/img/img1.jpg"),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          50.0),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      SizedBox(
                                                        width: MediaQuery.of(
                                                                    context)
                                                                .size
                                                                .width *
                                                            0.01,
                                                      ),
                                                      Flexible(
                                                        child: Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Row(
                                                              children: [
                                                                Flexible(
                                                                    child: Text(
                                                                        "Rahul Singh")),
                                                              ],
                                                            ),
                                                            Row(
                                                              children: [
                                                                Flexible(
                                                                    child: Text(
                                                                        "Ayodhya")),
                                                              ],
                                                            )
                                                          ],
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ),
                                            // const SizedBox(
                                            //   width: 25,
                                            // ),
                                            Container(
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.20,
                                              child: Column(
                                                children: [
                                                  Flexible(
                                                    child: Text(
                                                      "I played cricket related you can mention any 5 min extra Deadline easy Winning , won 40+ lakhs in cricket.",
                                                      style: TextStyle(
                                                          fontSize: 18,
                                                          color: Colors.black,
                                                          fontWeight:
                                                              FontWeight.w500),
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 10,
                                                  ),
                                                  Row(
                                                    children: [
                                                      Column(
                                                        children: [
                                                          CircleAvatar(
                                                            radius: 20.0,
                                                            child: ClipRRect(
                                                              child: Image.asset(
                                                                  "assets/img/img1.jpg"),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          50.0),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      SizedBox(
                                                        width: MediaQuery.of(
                                                                    context)
                                                                .size
                                                                .width *
                                                            0.01,
                                                      ),
                                                      Flexible(
                                                        child: Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Row(
                                                              children: [
                                                                Flexible(
                                                                    child: Text(
                                                                        "Rahul Singh")),
                                                              ],
                                                            ),
                                                            Row(
                                                              children: [
                                                                Flexible(
                                                                    child: Text(
                                                                        "Ayodhya")),
                                                              ],
                                                            )
                                                          ],
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ),
                                            // const SizedBox(
                                            //   width: 25,
                                            // ),
                                          ],
                                        ),
                                      ],
                                      dotSize: 4.0,
                                      dotSpacing: 15.0,
                                      dotColor: ColorConstant.COLOR_GREEN,
                                      indicatorBgPadding: 5.0,
                                      dotBgColor: Colors.transparent,
                                      borderRadius: true,
                                    ),
                                    autoplay: false,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      //   const SizedBox(height: 100),
                      Container(
                        //   margin: EdgeInsets.only(left: 200),
                        child: Stack(
                          children: [
                            Positioned(
                              left: 0,
                              bottom: 50,
                              top: 220,
                              child: Stack(children: [
                                Image.asset(
                                  "assets/img/salybackground.png",
                                  // height:
                                  //     MediaQuery.of(context).size.height * 0.65,
                                  width:
                                      MediaQuery.of(context).size.width * 0.72,
                                  fit: BoxFit.cover,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 120.0, left: 150),
                                  child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Download",
                                          style: TextStyle(
                                              fontSize: 40,
                                              color: Colors.white,
                                              fontWeight: FontWeight.w700),
                                        ),
                                        Text(
                                          "The balleballe11 App Now !",
                                          style: TextStyle(
                                              fontSize: 30,
                                              color: Colors.white,
                                              fontWeight: FontWeight.w500),
                                        ),
                                        const SizedBox(
                                          height: 5,
                                        ),
                                        Text(
                                          "Create team, Join contests & win exciting cash prizes.",
                                          style: TextStyle(
                                              fontSize: 18,
                                              color: Colors.white,
                                              fontWeight: FontWeight.w400),
                                        ),
                                        const SizedBox(
                                          height: 35,
                                        ),
                                        ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                              primary:
                                                  Colors.black, // background
                                              onPrimary: Colors.white),
                                          onPressed: () {
                                            downloadFile(
                                                "https://balleballe11.in/upload/apk/balleballe11.apk");
                                          },
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                                top: 5.0, bottom: 5),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: [
                                                  Image.asset(
                                                    "assets/img/android_icon1.png",
                                                    // height: 80,
                                                    // width: 80,
                                                  ),
                                                  SizedBox(width: 8),
                                                  Text(
                                                    "DOWNLOAD FOR ANDROID",
                                                    style: TextStyle(
                                                        fontSize: 16,
                                                        color: Colors.white),
                                                  ),
                                                ]),
                                          ),
                                        )
                                      ]),
                                )
                              ]),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 550.0),
                              child: Image.asset(
                                "assets/img/saly14.png",
                                height: MediaQuery.of(context).size.height *
                                    1.2 *
                                    0.99,
                                //  width: double.infinity,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Footer(),
                    ],
                  ),
                ),
              if (Responsive.isTablet(context) || Responsive.isMobile(context))
                ScrollConfiguration(
                    behavior: ScrollConfiguration.of(context).copyWith(
                      dragDevices: {
                        PointerDeviceKind.touch,
                        PointerDeviceKind.mouse,
                        PointerDeviceKind.unknown,
                        PointerDeviceKind.stylus,
                        PointerDeviceKind.invertedStylus
                      },
                    ),
                    child: SingleChildScrollView(
                      physics: ClampingScrollPhysics(),
                      child: Column(
                        children: [
                          Stack(children: [
                            Image.asset(
                              'assets/img/frame45.png',
                              width: MediaQuery.of(context).size.width,
                              height: MediaQuery.of(context).size.height *
                                  1.68 *
                                  0.8,
                              fit: BoxFit.cover,
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 10.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  const SizedBox(width: 20),
                                  Image.asset(
                                    ImgConstants.balleballe11_LOGO,
                                    // width: 40,
                                    // height: 30,
                                    width: MediaQuery.of(context).size.width *
                                        0.22,
                                    height: MediaQuery.of(context).size.height *
                                        0.10,
                                  ),
                                  SizedBox(
                                    width: MediaQuery.of(context).size.width *
                                        0.08,
                                  ),
                                  Spacer(),
                                  Container(
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(5.0),
                                        border: Border.all(
                                            width: 1.0, color: Colors.white)),
                                    child: PopupMenuButton<String>(
                                        tooltip: 'Menu',
                                        icon: Icon(
                                          Icons.menu,
                                          color: Colors.white,
                                        ),
                                        itemBuilder: (BuildContext context) =>
                                            <PopupMenuEntry<String>>[
                                              PopupMenuItem(
                                                  child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                    TextButton(
                                                      style: ButtonStyle(
                                                        foregroundColor:
                                                            MaterialStateProperty
                                                                .resolveWith<
                                                                    Color>((Set<
                                                                        MaterialState>
                                                                    states) {
                                                          // if (states.contains(MaterialState.focused))
                                                          //   return Colors.red;
                                                          if (states.contains(
                                                              MaterialState
                                                                  .hovered))
                                                            return Colors
                                                                .orange;
                                                          if (states.contains(
                                                              MaterialState
                                                                  .pressed))
                                                            return Colors
                                                                .orange;
                                                          return Colors
                                                              .black; // null throus error in flutter 2.2+.
                                                        }),
                                                      ),
                                                      onPressed: () {
                                                        Navigator.push(
                                                          context,
                                                          MaterialPageRoute(
                                                              builder: (context) =>
                                                                  WebHomePage()),
                                                        );
                                                      },
                                                      child: Text('Home'),
                                                    ),
                                                    TextButton(
                                                      style: ButtonStyle(
                                                        foregroundColor:
                                                            MaterialStateProperty
                                                                .resolveWith<
                                                                    Color>((Set<
                                                                        MaterialState>
                                                                    states) {
                                                          // if (states.contains(MaterialState.focused))
                                                          //   return Colors.red;
                                                          if (states.contains(
                                                              MaterialState
                                                                  .hovered))
                                                            return Colors
                                                                .orange;
                                                          if (states.contains(
                                                              MaterialState
                                                                  .pressed))
                                                            return Colors
                                                                .orange;
                                                          return Colors
                                                              .black; // null throus error in flutter 2.2+.
                                                        }),
                                                      ),
                                                      onPressed: () {
                                                        Navigator.push(
                                                          context,
                                                          MaterialPageRoute(
                                                              builder:
                                                                  (context) =>
                                                                      AboutUs()),
                                                        );
                                                        // _launchAboutUs();
                                                      },
                                                      child: Text('About Us'),
                                                    ),
                                                    TextButton(
                                                      style: ButtonStyle(
                                                        foregroundColor:
                                                            MaterialStateProperty
                                                                .resolveWith<
                                                                    Color>((Set<
                                                                        MaterialState>
                                                                    states) {
                                                          // if (states.contains(MaterialState.focused))
                                                          //   return Colors.red;
                                                          if (states.contains(
                                                              MaterialState
                                                                  .hovered))
                                                            return Colors
                                                                .orange;
                                                          if (states.contains(
                                                              MaterialState
                                                                  .pressed))
                                                            return Colors
                                                                .orange;
                                                          return Colors
                                                              .black; // null throus error in flutter 2.2+.
                                                        }),
                                                      ),
                                                      onPressed: () {
                                                        Navigator.push(
                                                          context,
                                                          MaterialPageRoute(
                                                              builder: (context) =>
                                                                  HowToPlay()),
                                                        );
                                                      },
                                                      child:
                                                          Text('How to Play'),
                                                    ),
                                                    ElevatedButton(
                                                        style: ElevatedButton
                                                            .styleFrom(
                                                                primary: Colors
                                                                    .white, // background
                                                                onPrimary:
                                                                    Colors
                                                                        .black),
                                                        onPressed: () {
                                                          Navigator.push(
                                                            context,
                                                            MaterialPageRoute(
                                                                builder:
                                                                    (context) =>
                                                                        LoginPage()),
                                                          );
                                                        },
                                                        child: Container(
                                                          padding:
                                                              EdgeInsets.only(
                                                                  top: 5,
                                                                  bottom: 5,
                                                                  left: 5,
                                                                  right: 5),
                                                          alignment:
                                                              Alignment.center,
                                                          width:
                                                              double.infinity,
                                                          child: Text(
                                                            "Login",
                                                            style: TextStyle(
                                                                fontSize: 16,
                                                                color: Colors
                                                                    .black,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500),
                                                          ),
                                                        )),
                                                  ]))
                                            ]),
                                  ),
                                  SizedBox(width: 20)
                                ],
                              ),
                            ),
                            Center(
                              child: Padding(
                                padding: EdgeInsets.only(top: 100),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Play Fantasy Sports",
                                      style: TextStyle(
                                          fontSize: 28,
                                          color: Color(0xffffe500),
                                          fontWeight: FontWeight.w700),
                                    ),
                                    const SizedBox(
                                      height: 15.0,
                                    ),
                                    Container(
                                      color: Colors.white,
                                      height: 6,
                                      width: MediaQuery.of(context).size.width *
                                          0.62,
                                    ),
                                    const SizedBox(
                                      height: 15.0,
                                    ),
                                    Text(
                                      "WIN LAKHS",
                                      style: TextStyle(
                                          fontSize: 53,
                                          color: Colors.white,
                                          letterSpacing: 1.6,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      "IN EVERY MATCH",
                                      style: TextStyle(
                                          fontSize: 35,
                                          color: Colors.white,
                                          letterSpacing: 1.6,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(20.0),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          ElevatedButton(
                                              style: ElevatedButton.styleFrom(
                                                  primary: Colors
                                                      .black, // background
                                                  onPrimary: Colors.white),
                                              onPressed: () {
                                                downloadFile(
                                                    "https://balleballe11.in/upload/apk/balleballe11.apk");
                                              },
                                              child: Container(
                                                padding: EdgeInsets.only(
                                                    top: 10,
                                                    bottom: 10,
                                                    left: 10,
                                                    right: 10),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  children: [
                                                    Column(
                                                      children: [
                                                        Image.asset(
                                                          "assets/img/android_icon1.png",
                                                          // height: 80,
                                                          // width: 80,
                                                        ),
                                                      ],
                                                    ),
                                                    SizedBox(width: 5),
                                                    Column(
                                                      children: [
                                                        Row(
                                                          children: [
                                                            Text(
                                                              "DOWNLOAD FOR",
                                                              style: TextStyle(
                                                                  fontSize: 14,
                                                                  color: Colors
                                                                      .white),
                                                            ),
                                                          ],
                                                        ),
                                                        Row(
                                                          children: [
                                                            Text(
                                                              "ANDROID",
                                                              style: TextStyle(
                                                                  fontSize: 14,
                                                                  color: Colors
                                                                      .white),
                                                            )
                                                          ],
                                                        )
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                              )),
                                        ],
                                      ),
                                    ),
                                    Image.asset(
                                      "assets/img/group_home.jpg",
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.6,
                                      //   width: 400,
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ]),
                          SizedBox(
                            height: 40,
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 10.0, right: 10),
                            child: Center(
                              child: Text(
                                "It's easy to start playing on balleballe11",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 28,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w700),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Column(
                            children: [
                              Container(
                                width: double.infinity,
                                margin: EdgeInsets.all(15.0),
                                decoration: new BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: new BorderRadius.all(
                                    Radius.circular(20.0),
                                  ),
                                  border: Border.all(
                                    width: 35,
                                    color: Color(0xffeaf8ff),
                                    style: BorderStyle.solid,
                                  ),
                                ),
                                child: Column(
                                  children: [
                                    Container(
                                      width: double.infinity,
                                      padding: EdgeInsets.all(30),
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: new BorderRadius.all(
                                          Radius.circular(20.0),
                                        ),
                                      ),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Image.asset(
                                                'assets/img/group_wicket.png',
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    0.1,
                                                height: MediaQuery.of(context)
                                                        .size
                                                        .height *
                                                    0.1,
                                              ),
                                            ],
                                          ),
                                          Center(
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Flexible(
                                                  child: Center(
                                                    child: Text(
                                                      "Select A Match",
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: TextStyle(
                                                          fontSize: 25,
                                                          color: Colors.black,
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Center(
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Flexible(
                                                  child: Center(
                                                    child: Text(
                                                      "Choose an upcoming match that you want to play",
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: TextStyle(
                                                          fontSize: 20,
                                                          color: Colors.grey,
                                                          fontWeight:
                                                              FontWeight.w500),
                                                    ),
                                                  ),
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
                              //
                              Container(
                                width: double.infinity,
                                margin: EdgeInsets.all(15.0),
                                decoration: new BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: new BorderRadius.all(
                                    Radius.circular(20.0),
                                  ),
                                  border: Border.all(
                                    width: 35,
                                    color: Color(0xfffef6ed),
                                    style: BorderStyle.solid,
                                  ),
                                ),
                                child: Container(
                                  width: double.infinity,
                                  padding: EdgeInsets.all(30),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: new BorderRadius.all(
                                      Radius.circular(20.0),
                                    ),
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Image.asset(
                                            'assets/img/group_people.png',
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.1,
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                0.1,
                                          ),
                                        ],
                                      ),
                                      Center(
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Flexible(
                                              child: Center(
                                                child: Text(
                                                  "Create Team",
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                      fontSize: 25,
                                                      color: Colors.black,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Center(
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Flexible(
                                              child: Center(
                                                child: Text(
                                                  "Use your skills to pick the right players",
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                      fontSize: 20,
                                                      color: Colors.grey,
                                                      fontWeight:
                                                          FontWeight.w500),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              //

                              Container(
                                width: double.infinity,
                                margin: EdgeInsets.all(15.0),
                                decoration: new BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: new BorderRadius.all(
                                    Radius.circular(20.0),
                                  ),
                                  border: Border.all(
                                    width: 35,
                                    color: Color(0xfffceff7),
                                    style: BorderStyle.solid,
                                  ),
                                ),
                                child: Container(
                                  width: double.infinity,
                                  padding: EdgeInsets.all(30),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: new BorderRadius.all(
                                      Radius.circular(20.0),
                                    ),
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Image.asset(
                                            'assets/img/group_champion.png',
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.1,
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                0.1,
                                          ),
                                        ],
                                      ),
                                      Center(
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Flexible(
                                              child: Center(
                                                child: Text(
                                                  "Join Contests",
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                      fontSize: 25,
                                                      color: Colors.black,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Center(
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Flexible(
                                              child: Center(
                                                child: Text(
                                                  "Choose between different contests and win money",
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                      fontSize: 20,
                                                      color: Colors.grey,
                                                      fontWeight:
                                                          FontWeight.w500),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              //How its Work
                              SizedBox(
                                height: 40,
                              ),
                              Center(
                                child: Text(
                                  "How it Works",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 28,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w700),
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 10.0, right: 10),
                                child: Center(
                                  child: Text(
                                    "Get to know the flow of balleballe11 and start your fantasy sports journey with us",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 18,
                                        color: Colors.grey,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 40,
                              ),
                              Stack(
                                children: [
                                  Container(
                                    width: MediaQuery.of(context).size.width,
                                    decoration: BoxDecoration(
                                      color: Color(0xff493d95),
                                    ),
                                    child: Column(
                                      children: [
                                        const SizedBox(height: 65),
                                        Image.asset(
                                          "assets/img/image_work1.jpg",
                                          // height: MediaQuery.of(context)
                                          //         .size
                                          //         .height *
                                          //     0.9,
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.89,
                                        ),
                                        Container(
                                          width: double.infinity,
                                          padding: EdgeInsets.only(
                                              left: 30, top: 40, right: 10),
                                          child: Column(
                                            children: [
                                              Row(
                                                children: [
                                                  Stack(
                                                    alignment: Alignment.center,
                                                    children: [
                                                      Image.asset(
                                                        "assets/img/step_number.png",
                                                      ),
                                                      Text(
                                                        "01",
                                                        style: TextStyle(
                                                            fontSize: 24,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            color:
                                                                Colors.black),
                                                      )
                                                    ],
                                                  ),
                                                ],
                                              ),
                                              SizedBox(
                                                height: 25,
                                              ),
                                              Row(
                                                children: [
                                                  Text(
                                                    "Select A Match",
                                                    style: TextStyle(
                                                        fontSize: 25,
                                                        color: Colors.white,
                                                        fontWeight:
                                                            FontWeight.w700),
                                                  ),
                                                ],
                                              ),
                                              const SizedBox(
                                                height: 15,
                                              ),
                                              Text(
                                                "To begin your journey, first of all you have to select a match that you want to play. You can choose any sport of your choice by clicking on it and your preferred contest too.",
                                                style: TextStyle(
                                                    fontSize: 14,
                                                    color: Colors.white,
                                                    fontWeight:
                                                        FontWeight.w500),
                                              ),
                                            ],
                                          ),
                                        ),

                                        //Image1
                                        const SizedBox(height: 65),
                                        Image.asset(
                                          "assets/img/image_work2.jpg",
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.89,
                                        ),
                                        Container(
                                          width: double.infinity,
                                          padding: EdgeInsets.only(
                                              left: 30, top: 40, right: 10),
                                          child: Column(
                                            children: [
                                              SizedBox(
                                                height: 10,
                                              ),
                                              Row(
                                                children: [
                                                  Stack(
                                                    alignment: Alignment.center,
                                                    children: [
                                                      Image.asset(
                                                        "assets/img/step_number.png",
                                                      ),
                                                      Text(
                                                        "02",
                                                        style: TextStyle(
                                                            fontSize: 24,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            color:
                                                                Colors.black),
                                                      )
                                                    ],
                                                  ),
                                                ],
                                              ),
                                              SizedBox(
                                                height: 25,
                                              ),
                                              Row(
                                                children: [
                                                  Text(
                                                    "Create Your Team",
                                                    style: TextStyle(
                                                        fontSize: 25,
                                                        color: Colors.white,
                                                        fontWeight:
                                                            FontWeight.w700),
                                                  ),
                                                ],
                                              ),
                                              const SizedBox(
                                                height: 15,
                                              ),
                                              Text(
                                                "Once you entered in your preferred match and select your contest, now you have to create your balleballe11 team by following the best player ration as per sports standard.",
                                                style: TextStyle(
                                                    fontSize: 14,
                                                    color: Colors.white,
                                                    fontWeight:
                                                        FontWeight.w500),
                                              ),
                                            ],
                                          ),
                                        ),

                                        //Image3
                                        const SizedBox(height: 65),
                                        Image.asset(
                                          "assets/img/image_work3.jpg",
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.89,
                                        ),
                                        Container(
                                          width: double.infinity,
                                          padding: EdgeInsets.only(
                                              left: 30, top: 40, right: 10),
                                          child: Column(
                                            children: [
                                              SizedBox(
                                                height: 10,
                                              ),
                                              Row(
                                                children: [
                                                  Stack(
                                                    alignment: Alignment.center,
                                                    children: [
                                                      Image.asset(
                                                        "assets/img/step_number.png",
                                                      ),
                                                      Text(
                                                        "03",
                                                        style: TextStyle(
                                                            fontSize: 24,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            color:
                                                                Colors.black),
                                                      )
                                                    ],
                                                  ),
                                                ],
                                              ),
                                              SizedBox(
                                                height: 10,
                                              ),
                                              Row(
                                                children: [
                                                  Text(
                                                    "Join Contest",
                                                    style: TextStyle(
                                                        fontSize: 25,
                                                        color: Colors.white,
                                                        fontWeight:
                                                            FontWeight.w700),
                                                  ),
                                                ],
                                              ),
                                              const SizedBox(
                                                height: 15,
                                              ),
                                              Text(
                                                "Created your fantasy team? Now choose your captain and vice-captain, as they worth more and join your preferred contest with your team. You can join multiple leagues with multiple teams.",
                                                style: TextStyle(
                                                    fontSize: 14,
                                                    color: Colors.white,
                                                    fontWeight:
                                                        FontWeight.w500),
                                              ),
                                              const SizedBox(
                                                height: 35,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 40,
                              ),
                              Center(
                                child: Text(
                                  "What Our Users Say",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 28,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w700),
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 10.0, right: 10),
                                child: Center(
                                  child: Text(
                                    "Being a renowned Fantasy Sports Platform, we are recommended by millions of users. Here, check out what they say.",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 18,
                                        color: Colors.grey,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 40,
                              ),
                              Container(
                                width: double.infinity,
                                height:
                                    MediaQuery.of(context).size.height * 0.3,
                                child: Swiper(
                                  itemCount: 2,
                                  itemBuilder:
                                      (BuildContext context, int index) =>
                                          Carousel(
                                    boxFit: BoxFit.cover,
                                    images: [
                                      Container(
                                        padding: EdgeInsets.only(
                                            left: 10, right: 10),
                                        width: double.infinity,
                                        child: Column(
                                          children: [
                                            Text(
                                              "I played cricket related you can mention any 5 min extra Deadline easy Winning , won 40+ lakhs in cricket.",
                                              style: TextStyle(
                                                  fontSize: 18,
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.w500),
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Row(
                                              children: [
                                                Column(
                                                  children: [
                                                    CircleAvatar(
                                                      radius: 20.0,
                                                      child: ClipRRect(
                                                        child: Image.asset(
                                                            "assets/img/img1.jpg"),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(50.0),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                SizedBox(
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      0.01,
                                                ),
                                                Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Row(
                                                      children: [
                                                        Text("Rahul Singh"),
                                                      ],
                                                    ),
                                                    Row(
                                                      children: [
                                                        Text("Ayodhya"),
                                                      ],
                                                    )
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        padding: EdgeInsets.only(
                                            left: 10, right: 10),
                                        width: double.infinity,
                                        child: Column(
                                          children: [
                                            Text(
                                              "I played cricket related you can mention any 5 min extra Deadline easy Winning , won 40+ lakhs in cricket.",
                                              style: TextStyle(
                                                  fontSize: 18,
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.w500),
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Row(
                                              children: [
                                                Column(
                                                  children: [
                                                    CircleAvatar(
                                                      radius: 20.0,
                                                      child: ClipRRect(
                                                        child: Image.asset(
                                                            "assets/img/img1.jpg"),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(50.0),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                SizedBox(
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      0.01,
                                                ),
                                                Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Row(
                                                      children: [
                                                        Text("Rahul Singh"),
                                                      ],
                                                    ),
                                                    Row(
                                                      children: [
                                                        Text("Ayodhya"),
                                                      ],
                                                    )
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                    dotSize: 4.0,
                                    dotSpacing: 15.0,
                                    dotColor: ColorConstant.COLOR_GREEN,
                                    indicatorBgPadding: 5.0,
                                    dotBgColor: Colors.transparent,
                                    borderRadius: true,
                                  ),
                                  autoplay: false,
                                ),
                              ),
                              SizedBox(height: 20),
                              //Download App
                              Container(
                                width: double.infinity,
                                height:
                                    MediaQuery.of(context).size.height * 0.42,
                                margin: EdgeInsets.all(15.0),
                                padding: EdgeInsets.all(15.0),
                                decoration: BoxDecoration(
                                  color: Color(0xff493d95),
                                  borderRadius: BorderRadius.circular(40.0),
                                ),
                                child: Column(
                                  children: [
                                    Text(
                                      "Download",
                                      style: TextStyle(
                                          fontSize: 30,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w700),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 3.0, bottom: 10),
                                      child: Text(
                                        "the balleballe11 app now!",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 22,
                                            color: Colors.white,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ),
                                    Text(
                                      "Create team, Join contests & win exciting cash prizes.",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: 16,
                                          color: Colors.white,
                                          fontWeight: FontWeight.normal),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(20.0),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          ElevatedButton(
                                              style: ElevatedButton.styleFrom(
                                                  primary: Colors
                                                      .black, // background
                                                  onPrimary: Colors.white),
                                              onPressed: () {
                                                downloadFile(
                                                    "https://balleballe11.in/upload/apk/balleballe11.apk");
                                              },
                                              child: Container(
                                                padding: EdgeInsets.only(
                                                    top: 10,
                                                    bottom: 10,
                                                    left: 10,
                                                    right: 10),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  children: [
                                                    Column(
                                                      children: [
                                                        Image.asset(
                                                          "assets/img/android_icon1.png",
                                                          // height: 80,
                                                          // width: 80,
                                                        ),
                                                      ],
                                                    ),
                                                    SizedBox(width: 5),
                                                    Column(
                                                      children: [
                                                        Row(
                                                          children: [
                                                            Text(
                                                              "DOWNLOAD ON",
                                                              style: TextStyle(
                                                                  fontSize: 14,
                                                                  color: Colors
                                                                      .white),
                                                            ),
                                                          ],
                                                        ),
                                                        Row(
                                                          children: [
                                                            Text(
                                                              "ANDROID",
                                                              style: TextStyle(
                                                                  fontSize: 14,
                                                                  color: Colors
                                                                      .white),
                                                            )
                                                          ],
                                                        )
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                              )),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: 40,
                              ),
                              //Footer
                              FooterMob(),
                            ],
                          )
                        ],
                      ),
                    ))
            ],
          ),
        ),
      ),
    );
  }

  downloadFile(url) {
    AnchorElement anchorElement = new AnchorElement(href: url);
    anchorElement.download =
        "https://balleballe11.in/upload/apk/balleballe11.apk";
    anchorElement.click();
  }
}
