import 'package:balleballe11/WebPAge/privacy_policy.dart';
import 'package:balleballe11/WebPAge/terms_condition.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'cancellation_refundPolicy.dart';
import 'fantasy_points.dart';
import 'faq.dart';
import 'how_to_play.dart';
import 'legalities.dart';

class Footer extends StatefulWidget {
  const Footer({Key key}) : super(key: key);

  @override
  _FooterState createState() => _FooterState();
}

class _FooterState extends State<Footer> {
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

  // Useful Links

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          color: Color(0xff1f1f1f),
          width: double.infinity,
          height: MediaQuery.of(context).size.height * 0.75,
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                //    cr
                children: [
                  SizedBox(width: MediaQuery.of(context).size.width * .048),
                  Flexible(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "   Follow Us",
                          style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.w600,
                              color: Colors.white),
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              ElevatedButton(
                                child: Center(
                                  child: Image.asset(
                                    'assets/img/facebook.png',
                                    height: 15,
                                    //  width: 30,
                                  ),
                                ),
                                onPressed: () {
                                  _facebook();
                                },
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.white, // background
                                  onPrimary: Colors.white,
                                  padding: EdgeInsets.all(0),
                                  //    onPrimary: Colors.red,

                                  shape: CircleBorder(),
                                ),
                              ),
                              //   const SizedBox(width: 8),
                              ElevatedButton(
                                child: Center(
                                  child: Image.asset(
                                    'assets/img/youtube.png',
                                    height: 15,
                                    //   width: 30,
                                  ),
                                  // child: Text(
                                  //   'Y',
                                  //   textAlign: TextAlign.center,
                                  // ),
                                ),
                                onPressed: () {
                                  _youtube();
                                },
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.white, // background
                                  onPrimary: Colors.white,
                                  padding: EdgeInsets.all(0),

                                  shape: CircleBorder(),
                                ),
                              ),
                              //  const SizedBox(width: 8),
                              ElevatedButton(
                                child: Center(
                                  child: Image.asset(
                                    'assets/img/instagram.png',
                                    height: 15,
                                    //   width: 30,
                                  ),
                                  // child: Text(
                                  //   'I',
                                  //   textAlign: TextAlign.center,
                                  // ),
                                ),
                                onPressed: () {
                                  _instagram();
                                },
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.white, // background
                                  onPrimary: Colors.white,
                                  padding: EdgeInsets.all(0),
                                  //    onPrimary: Colors.red,

                                  shape: CircleBorder(),
                                ),
                              ),
                              //   const SizedBox(width: 8),
                              ElevatedButton(
                                child: Center(
                                  child: Image.asset(
                                    'assets/img/twitter.png',
                                    height: 15,
                                    //       width: 30,
                                  ),
                                  // child: Text(
                                  //   'T',
                                  //   textAlign: TextAlign.center,
                                  // ),
                                ),
                                onPressed: () {
                                  _twitter();
                                },
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.white, // background
                                  onPrimary: Colors.white,
                                  padding: EdgeInsets.all(0),
                                  //    onPrimary: Colors.red,

                                  shape: CircleBorder(),
                                ),
                              ),
                              // const SizedBox(width: 8),
                              ElevatedButton(
                                child: Center(
                                  child: Image.asset(
                                    'assets/img/telegram.png',
                                    height: 15,
                                    //      width: 30,
                                  ),
                                ),
                                onPressed: () {
                                  _telegram();
                                },
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.white, // background
                                  onPrimary: Colors.white,
                                  padding: EdgeInsets.all(0),

                                  shape: CircleBorder(),
                                ),
                              ),
                            ]),
                        Container(
                          height: 80,
                        )
                      ],
                    ),
                  ),
                  Flexible(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 7.0),
                          child: Text(
                            "Useful Links",
                            style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.w600,
                                color: Colors.white),
                          ),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            TextButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => HowToPlay()),
                                  );
                                },
                                child: Text("How to Play",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.grey))),
                          ],
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Row(
                          children: [
                            TextButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Faq()),
                                  );
                                  //  _launchTermsUrl();
                                },
                                child: Text("FAQ's",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.grey))),
                          ],
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Row(
                          children: [
                            Flexible(
                              child: TextButton(
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              FantasyPoints()),
                                    );
                                  },
                                  child: Text("Fantasy Points",
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w400,
                                          color: Colors.grey))),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              height: 25,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Flexible(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 7.0),
                          child: Text(
                            "Policies",
                            style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.w600,
                                color: Colors.white),
                          ),
                        ),
                        // const SizedBox(
                        //   height: 8,
                        // ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(
                              height: 8,
                            ),
                            TextButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => PrivacyPolicy()),
                                  );
                                },
                                child: Text("Privacy Policy",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.grey))),
                            const SizedBox(
                              height: 8,
                            ),
                            TextButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => TermsCondition()),
                                  );
                                },
                                child: Text("Terms & Conditions",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.grey))),
                            const SizedBox(
                              height: 8,
                            ),
                            TextButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            CancellationRefundPolicy()),
                                  );
                                },
                                child: Text("Cancellation/Refund Policy",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.grey))),
                            const SizedBox(
                              height: 8,
                            ),
                            TextButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Legalities()),
                                  );
                                },
                                child: Text("Legalities",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.grey))),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Flexible(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Get in Touch",
                          style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(
                              height: 15,
                            ),
                            RichText(
                              text: TextSpan(
                                text: 'Email:  ',
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
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
                                          decoration:
                                              TextDecoration.underline)),
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 25,
                            ),
                            RichText(
                              textAlign: TextAlign.start,
                              //   textDirection: TextDirection.
                              text: TextSpan(
                                text: 'Phone:  ',
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
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
                                          decoration:
                                              TextDecoration.underline)),
                                ],
                              ),
                            ),
                            SizedBox(height: 57),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 45,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 60,
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
                ],
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(120.0, 30, 120, 20),
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
              )
            ],
          ),
        ),
      ],
    );
  }
}
