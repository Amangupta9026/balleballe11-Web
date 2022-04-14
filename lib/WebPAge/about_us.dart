import 'package:balleballe11/WebPAge/responsive.dart';
import 'package:balleballe11/WebPAge/webHeader.dart';
import 'package:balleballe11/WebPAge/webHeaderMob.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'footer.dart';
import 'footerMob.dart';

class AboutUs extends StatefulWidget {
  const AboutUs({Key key}) : super(key: key);

  @override
  State<AboutUs> createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUs> {
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
              Column(
                children: [
                  WebHeader(),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 80.0, right: 20, bottom: 55),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 50),
                        Center(
                          child: Text(
                            "Why choose us?",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 30, fontWeight: FontWeight.w600),
                          ),
                        ),
                        const SizedBox(height: 15),
                        Center(
                          child: Text(
                              "From the trust of millions of users to eye catchy features, you have multiple reasons to choose us.",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  height: 2,
                                  color: Colors.grey)),
                        ),
                        const SizedBox(height: 60),
                        Row(
                          // mainAxisAlignment: Main,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width * 0.3,
                              child: Column(
                                children: [
                                  Image.asset(
                                    'assets/img/wallet.png',
                                    // width: MediaQuery.of(context).size.width * 0.3,
                                    // he
                                  ),
                                  const SizedBox(height: 15),
                                  Text(
                                    "Win Cash Daily",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.black),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 30.0, top: 10),
                                    child: Text(
                                      "Participate in Cash or Practice Contests and go for glory! You can win exciting cash prize daily through balleballe11.",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.grey,
                                          height: 1.8),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width * 0.3,
                              child: Column(
                                children: [
                                  Image.asset(
                                    'assets/img/cash.png',
                                    //   width: MediaQuery.of(context).size.width * 0.3,
                                  ),
                                  const SizedBox(height: 15),
                                  Text(
                                    "Quick Cash Withdraw",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.black),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 30.0, top: 10),
                                    child: Text(
                                      "We provide quick cash withdrawal or instant cash withdrawal facility that leads direct transfer on your attached PAYTM or Bank Account.",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.grey,
                                          height: 1.8),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width * 0.3,
                              child: Column(
                                children: [
                                  Image.asset(
                                    'assets/img/privacy.png',
                                  ),
                                  const SizedBox(height: 15),
                                  Text(
                                    "Privacy & Secure",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.black),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 30.0, top: 10),
                                    child: Text(
                                      "We provide online Fantasy Cricket games on balleballe11 for our Users’ entertainment in an absolutely safe, secure and trustworthy environment.",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.grey,
                                          height: 1.8),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),

                  //  Footer
                  Footer(),
                ],
              ),
            if (Responsive.isTablet(context) || Responsive.isMobile(context))
              Column(
                children: [
                  WebHeaderMob(),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(15, 30, 15, 60),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Our Mission",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              color: Colors.red),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          "Who we are ?",
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.w600),
                        ),
                        const SizedBox(height: 30),
                        Text(
                          "balleballe11 is the flagship product of Fantasy Sports balleballe11 Private Limited. balleballe11 is India’s Biggest Sports Gaming platform with users playing Fantasy Cricket. It is a fantasy Sports Management platform that offers Indian sports fans a platform to showcase their sports knowledge. User can create their own team made up of real-life players from upcoming matches, score points based on their on-field performance and compete with other User.",
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              height: 1.8),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Text(
                          "We make sure you become a part of the game you love so much and get a chance to win real cash and some more amazing rewards. So gear up as we take you to a world of ‘fantasies’ where you play alongside the stars of the game. We offer a safe and secured platform to enjoy fantasy sports at your leisure.",
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              height: 1.8),
                        ),
                        const SizedBox(height: 50),
                        Center(
                          child: Text(
                            "Why choose us?",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 30, fontWeight: FontWeight.w600),
                          ),
                        ),
                        const SizedBox(height: 6),
                        Center(
                          child: Text(
                              "From the trust of millions of users to eye catchy features, you have multiple reasons to choose us.",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  height: 1.8,
                                  color: Colors.grey)),
                        ),
                        const SizedBox(height: 50),
                        Center(
                          child: Image.asset(
                            'assets/img/wallet.png',
                            // width: MediaQuery.of(context).size.width * 0.3,
                            // he
                          ),
                        ),
                        const SizedBox(height: 15),
                        Center(
                          child: Text(
                            "Win Cash Daily",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                                color: Colors.black),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10, bottom: 50),
                          child: Text(
                            "Participate in Cash or Practice Contests and go for glory! You can win exciting cash prize daily through balleballe11.",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: Colors.grey,
                                height: 1.8),
                          ),
                        ),
                        Center(
                          child: Image.asset(
                            'assets/img/cash.png',
                            // width: MediaQuery.of(context).size.width * 0.3,
                            // he
                          ),
                        ),
                        const SizedBox(height: 15),
                        Center(
                          child: Text(
                            "Quick Cash Withdraw",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                                color: Colors.black),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10, bottom: 50),
                          child: Text(
                            "We provide quick cash withdrawal or instant cash withdrawal facility that leads direct transfer on your attached PAYTM or Bank Account.",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: Colors.grey,
                                height: 1.8),
                          ),
                        ),
                        Center(
                          child: Image.asset(
                            'assets/img/privacy.png',
                            // width: MediaQuery.of(context).size.width * 0.3,
                            // he
                          ),
                        ),
                        const SizedBox(height: 15),
                        Center(
                          child: Text(
                            "Privacy & Secure",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                                color: Colors.black),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Text(
                            "We provide online Fantasy Cricket games on balleballe11 for our Users’ entertainment in an absolutely safe, secure and trustworthy environment.",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: Colors.grey,
                                height: 1.8),
                          ),
                        )
                      ],
                    ),
                  ),

                  // Mobile Footer Follow us
                  FooterMob(),
                ],
              ),
          ],
        ),
      ),
    ));
  }
}
