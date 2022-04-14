import 'package:balleballe11/WebPAge/privacy_policy.dart';
import 'package:balleballe11/WebPAge/terms_condition.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'cancellation_refundPolicy.dart';
import 'fantasy_points.dart';
import 'faq.dart';
import 'how_to_play.dart';
import 'legalities.dart';

class FooterMob extends StatefulWidget {
  const FooterMob({Key key}) : super(key: key);

  @override
  _FooterMobState createState() => _FooterMobState();
}

class _FooterMobState extends State<FooterMob> {
  // int selectiveColor = 0;

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
    return Container(
        width: double.infinity,
        padding: const EdgeInsets.only(top: 15.0, bottom: 15),
        decoration: BoxDecoration(
          color: Color(0xff1f1f1f),
        ),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Padding(
            padding: const EdgeInsets.only(top: 30, left: 15.0, right: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Follow Us",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Colors.white),
                ),
                SizedBox(height: 12),
                Wrap(children: [
                  ElevatedButton(
                    child: Image.asset(
                      'assets/img/facebook.png',
                      height: 15,
                      //       width: 30,
                    ),
                    onPressed: () {
                      _facebook();
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.white, // background
                      onPrimary: Colors.white,
                      //    onPrimary: Colors.red,

                      shape: CircleBorder(),
                    ),
                  ),
                  // const SizedBox(width: 8),
                  ElevatedButton(
                    child: Image.asset(
                      'assets/img/youtube.png',
                      alignment: Alignment.center,
                      height: 15,

                      //       width: 30,
                    ),
                    onPressed: () {
                      _youtube();
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.white, // background
                      onPrimary: Colors.white,

                      shape: CircleBorder(),
                    ),
                  ),
                  // const SizedBox(width: 8),
                  ElevatedButton(
                    child: Image.asset(
                      'assets/img/instagram.png',
                      alignment: Alignment.center,
                      height: 15,
                      //       width: 30,
                    ),
                    onPressed: () {
                      _instagram();
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.white, // background
                      onPrimary: Colors.white,
                      //    onPrimary: Colors.red,

                      shape: CircleBorder(),
                    ),
                  ),
                  // const SizedBox(width: 8),
                  ElevatedButton(
                    child: Image.asset(
                      'assets/img/twitter.png',
                      alignment: Alignment.center,
                      height: 15,
                      //       width: 30,
                    ),
                    onPressed: () {
                      _twitter();
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.white, // background
                      onPrimary: Colors.white,
                      //    onPrimary: Colors.red,

                      shape: CircleBorder(),
                    ),
                  ),
                  //   const SizedBox(width: 8),
                  ElevatedButton(
                    child: Image.asset(
                      'assets/img/telegram.png',
                      alignment: Alignment.center,
                      height: 15,
                      //       width: 30,
                    ),
                    onPressed: () {
                      _telegram();
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.white, // background
                      onPrimary: Colors.white,

                      shape: CircleBorder(),
                    ),
                  ),
                ]),
                //Usefull Link
                SizedBox(height: 28),
                Text(
                  "Useful Links",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Colors.white),
                ),
                SizedBox(height: 10),
                InkWell(
                  child: Text("How to Play",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Colors.grey)),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HowToPlay()),
                    );
                  },
                ),
                SizedBox(
                  height: 5,
                ),
                InkWell(
                  child: Text("FAQ's",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Colors.grey)),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Faq()),
                    );
                  },
                ),

                SizedBox(
                  height: 5,
                ),
                InkWell(
                  child: Text("Fantasy Points",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Colors.grey)),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => FantasyPoints()),
                    );
                  },
                ),
                SizedBox(
                  height: 28,
                ),
                Text(
                  "Policy",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Colors.white),
                ),
                SizedBox(height: 10),
                InkWell(
                  child: Text("Privacy Policy",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Colors.grey)),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => PrivacyPolicy()),
                    );
                  },
                ),
                SizedBox(
                  height: 5,
                ),
                InkWell(
                  child: Text("Terms & Conditions",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Colors.grey)),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => TermsCondition()),
                    );
                  },
                ),
                SizedBox(
                  height: 5,
                ),
                InkWell(
                  child: Text("Cancellation/Refund Policy",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Colors.grey)),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => CancellationRefundPolicy()),
                    );
                  },
                ),
                SizedBox(
                  height: 5,
                ),
                InkWell(
                  child: Text("Legalities",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Colors.grey)),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Legalities()),
                    );
                  },
                ),
                SizedBox(
                  height: 28,
                ),
                Text(
                  "Get in Touch",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Colors.white),
                ),
                SizedBox(height: 13),
                RichText(
                  text: TextSpan(
                    text: 'Email:  ',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                      fontSize: 16,
                    ),
                    children: <TextSpan>[
                      TextSpan(
                          text: 'support@balleballe11.com',
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              color: Colors.grey,
                              fontSize: 14,
                              decoration: TextDecoration.underline)),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                RichText(
                  textAlign: TextAlign.start,
                  //   textDirection: TextDirection.
                  text: TextSpan(
                    text: 'Phone:  ',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                      fontSize: 16,
                    ),
                    children: <TextSpan>[
                      TextSpan(
                          text: '+91-000000000',
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              color: Colors.grey,
                              fontSize: 14,
                              decoration: TextDecoration.underline)),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 30),
          Container(
            height: 80,
            width: MediaQuery.of(context).size.width,
            color: Color(0xff1b1b1b),
            child: Center(
              child: Text(
                "© Copyright 2021 balleballe11. All Rights Reserved. ",
                style: TextStyle(fontSize: 16, color: Colors.grey),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
                top: 30.0, left: 15, right: 15, bottom: 65),
            child: Center(
              child: Text(
                "Disclaimer: balleballe11 is not affiliated in any way to and claims no association, in any capacity whatsoever, with the Residents of the states of SIKKIM, ASSAM, ODISHA, TELANGANA, NAGALAND, ANDHRA PRADESH and where otherwise prohibited by law are not eligible to enter balleballe11's leagues. *The game involves an element of financial risk and may be addictive. Please play responsibly and at your own risk. *This game is applicable for users 18+ only.",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff8b5a41),
                    height: 1.5),
              ),
            ),
          ),
        ]));
  }
}
