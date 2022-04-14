import 'package:balleballe11/WebPAge/responsive.dart';
import 'package:balleballe11/WebPAge/webHeaderMob.dart';
import 'package:balleballe11/constance/icon_constants.dart';
import 'package:balleballe11/login/login.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'about_us.dart';
import 'footer.dart';
import 'footerMob.dart';
import 'home_webpage.dart';
import 'how_to_play.dart';

class CancellationRefundPolicy extends StatelessWidget {
  const CancellationRefundPolicy({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScrollConfiguration(
      behavior: ScrollConfiguration.of(context).copyWith(
        dragDevices: {
          PointerDeviceKind.touch,
          PointerDeviceKind.mouse,
          PointerDeviceKind.unknown,
          PointerDeviceKind.stylus,
          PointerDeviceKind.invertedStylus
        },
      ),
      child: Scaffold(
        body: SingleChildScrollView(
          physics: ClampingScrollPhysics(),
          child: Column(
            children: [
              if (Responsive.isDesktop(context))
                Column(
                  children: [
                    //   WebHeader(),
                    Container(
                      decoration: BoxDecoration(
                        color: Color(0xff493d95),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 20.0, bottom: 20),
                        child: Row(
                          children: [
                            const SizedBox(width: 60),
                            Image.asset(
                              ImgConstants.balleballe11_LOGO,
                              // width: 40,
                              // height: 30,

                              height: MediaQuery.of(context).size.height * 0.15,
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
                                        foregroundColor: MaterialStateProperty
                                            .resolveWith<Color>(
                                                (Set<MaterialState> states) {
                                          // if (states.contains(MaterialState.focused))
                                          //   return Colors.red;
                                          if (states
                                              .contains(MaterialState.hovered))
                                            return Colors.orange;
                                          if (states
                                              .contains(MaterialState.pressed))
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
                                                  WebHomePage()),
                                        );
                                      },
                                      child: Text(
                                        'Home',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w700),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: TextButton(
                                      style: ButtonStyle(
                                        foregroundColor: MaterialStateProperty
                                            .resolveWith<Color>(
                                                (Set<MaterialState> states) {
                                          // if (states.contains(MaterialState.focused))
                                          //   return Colors.red;
                                          if (states
                                              .contains(MaterialState.hovered))
                                            return Colors.orange;
                                          if (states
                                              .contains(MaterialState.pressed))
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
                                              builder: (context) => AboutUs()),
                                        );
                                      },
                                      child: Text(
                                        'About Us',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w700),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: TextButton(
                                      style: ButtonStyle(
                                        foregroundColor: MaterialStateProperty
                                            .resolveWith<Color>(
                                                (Set<MaterialState> states) {
                                          // if (states.contains(MaterialState.focused))
                                          //   return Colors.red;
                                          if (states
                                              .contains(MaterialState.hovered))
                                            return Colors.orange;
                                          if (states
                                              .contains(MaterialState.pressed))
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
                                      child: Text(
                                        'How to Play',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w700),
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
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 55.0, right: 40, bottom: 40),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(height: 30),
                          Text(
                            "Cancellation/Refund Policy",
                            style: TextStyle(
                                fontSize: 24,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(height: 25),
                          Text(
                            "All deposits and purchases made and fees paid on balleballe11 in to play or in connection with Fantasy Cricket are final. All transactions are final. We recognize that customer satisfaction is extremely important to us, so only error-oriented transaction cases shall be reviewed.",
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.grey,
                                fontWeight: FontWeight.w500,
                                height: 1.8),
                          ),
                          const SizedBox(height: 10),
                          Text(
                            "If you are not fully satisfied with any deposit/purchase made or fee paid on balleballe11 and feel there is an 'Error’ in the transaction, please let us know about that within 3 days from the transaction date, and we shall certainly review the transaction and determine the resolution at our own discretion.",
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.grey,
                                fontWeight: FontWeight.w500,
                                height: 1.8),
                          ),
                          const SizedBox(height: 10),
                          Text(
                            "balleballe11 reserves the right to cancel any matches for any reason, with or without disclosure of the reason, and refund all fees paid for such matches by any and all users within 1-3 business days.",
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.grey,
                                fontWeight: FontWeight.w500,
                                height: 1.8),
                          ),
                          const SizedBox(height: 10),
                          Text(
                            "balleballe11 forbids Users from joining any game rooms after a cricket match related to the game room (identified by the Series) has begun.",
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.grey,
                                fontWeight: FontWeight.w500,
                                height: 1.8),
                          ),
                        ],
                      ),
                    ),

                    //Desktop Footer

                    Footer(),
                  ],
                ),
              if (Responsive.isTablet(context) || Responsive.isMobile(context))
                Column(
                  children: [
                    WebHeaderMob(),
                    Padding(
                      padding: EdgeInsets.only(left: 15, right: 15, bottom: 30),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(height: 30),
                          Text(
                            "Cancellation/Refund Policy",
                            style: TextStyle(
                                fontSize: 24,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(height: 25),
                          Text(
                            "All deposits and purchases made and fees paid on balleballe11 in to play or in connection with Fantasy Cricket are final. All transactions are final. We recognize that customer satisfaction is extremely important to us, so only error-oriented transaction cases shall be reviewed.",
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.grey,
                                fontWeight: FontWeight.w500,
                                height: 1.8),
                          ),
                          const SizedBox(height: 10),
                          Text(
                            "If you are not fully satisfied with any deposit/purchase made or fee paid on balleballe11 and feel there is an 'Error’ in the transaction, please let us know about that within 3 days from the transaction date, and we shall certainly review the transaction and determine the resolution at our own discretion.",
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.grey,
                                fontWeight: FontWeight.w500,
                                height: 1.8),
                          ),
                          const SizedBox(height: 10),
                          Text(
                            "balleballe11 reserves the right to cancel any matches for any reason, with or without disclosure of the reason, and refund all fees paid for such matches by any and all users within 1-3 business days.",
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.grey,
                                fontWeight: FontWeight.w500,
                                height: 1.8),
                          ),
                          const SizedBox(height: 10),
                          Text(
                            "balleballe11 forbids Users from joining any game rooms after a cricket match related to the game room (identified by the Series) has begun.",
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.grey,
                                fontWeight: FontWeight.w500,
                                height: 1.8),
                          ),
                        ],
                      ),
                    ),

                    //Mobile Footer

                    FooterMob(),
                  ],
                )
            ],
          ),
        ),
      ),
    );
  }
}
