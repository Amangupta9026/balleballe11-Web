import 'package:balleballe11/constance/icon_constants.dart';
import 'package:balleballe11/login/login.dart';
import 'package:flutter/material.dart';

import 'about_us.dart';
import 'home_webpage.dart';
import 'how_to_play.dart';

class WebHeaderMob extends StatefulWidget {
  const WebHeaderMob({Key key}) : super(key: key);

  @override
  _WebHeaderMobState createState() => _WebHeaderMobState();
}

class _WebHeaderMobState extends State<WebHeaderMob> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xff493d95),
      ),
      padding: const EdgeInsets.only(left: 15, right: 15, top: 10, bottom: 10),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
                ImgConstants.balleballe11_LOGO,
                width: MediaQuery.of(context).size.width * 0.22,
                // height: MediaQuery.of(context).size.height * 0.08,
              ),
              //   Spacer(),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.0),
                    border: Border.all(width: 1.0, color: Colors.white)),
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
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                TextButton(
                                  style: ButtonStyle(
                                    foregroundColor:
                                        MaterialStateProperty.resolveWith<
                                            Color>((Set<MaterialState> states) {
                                      // if (states.contains(MaterialState.focused))
                                      //   return Colors.red;
                                      if (states
                                          .contains(MaterialState.hovered))
                                        return Colors.orange;
                                      if (states
                                          .contains(MaterialState.pressed))
                                        return Colors.orange;
                                      return Colors
                                          .black; // null throus error in flutter 2.2+.
                                    }),
                                  ),
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => WebHomePage()),
                                    );
                                  },
                                  child: Text('Home'),
                                ),
                                TextButton(
                                  style: ButtonStyle(
                                    foregroundColor:
                                        MaterialStateProperty.resolveWith<
                                            Color>((Set<MaterialState> states) {
                                      // if (states.contains(MaterialState.focused))
                                      //   return Colors.red;
                                      if (states
                                          .contains(MaterialState.hovered))
                                        return Colors.orange;
                                      if (states
                                          .contains(MaterialState.pressed))
                                        return Colors.orange;
                                      return Colors
                                          .black; // null throus error in flutter 2.2+.
                                    }),
                                  ),
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => AboutUs()),
                                    );
                                    // _launchAboutUs();
                                  },
                                  child: Text('About Us'),
                                ),
                                TextButton(
                                  style: ButtonStyle(
                                    foregroundColor:
                                        MaterialStateProperty.resolveWith<
                                            Color>((Set<MaterialState> states) {
                                      // if (states.contains(MaterialState.focused))
                                      //   return Colors.red;
                                      if (states
                                          .contains(MaterialState.hovered))
                                        return Colors.orange;
                                      if (states
                                          .contains(MaterialState.pressed))
                                        return Colors.orange;
                                      return Colors
                                          .black; // null throus error in flutter 2.2+.
                                    }),
                                  ),
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => HowToPlay()),
                                    );
                                  },
                                  child: Text('How to Play'),
                                ),
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
                                      alignment: Alignment.center,
                                      width: double.infinity,
                                      child: Text(
                                        "Login",
                                        style: TextStyle(
                                            fontSize: 16,
                                            color: Colors.black,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    )),
                              ]))
                        ]),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
