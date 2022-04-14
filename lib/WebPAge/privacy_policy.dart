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

class PrivacyPolicy extends StatelessWidget {
  const PrivacyPolicy({Key key}) : super(key: key);

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
                    // WebHeader(),

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
                          left: 55.0, right: 40, bottom: 75),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(height: 30),
                          Text(
                            "Privacy Policy",
                            style: TextStyle(
                                fontSize: 24,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(height: 40),
                          Text(
                            "Our Privacy Is Important",
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                                fontWeight: FontWeight.w700),
                          ),
                          const SizedBox(height: 10),
                          Text(
                            "We provide online Fantasy Cricket ,Football and NBA games on balleballe11 for our Users’ entertainment in an absolutely safe, secure and trustworthy environment. We are committed to protecting the privacy of our Users. This Privacy Policy explains what information we collect from our Users, how we use their information, and what choices are available to our Users in this regard.",
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.grey,
                                fontWeight: FontWeight.w500,
                                height: 1.8),
                          ),
                          const SizedBox(height: 20),
                          Text(
                            "This Privacy Policy forms part of our Website’s Terms of Service. balleballe11 respects your privacy and assures you that any information provided by you to balleballe11 is fully protected and will be used according to this Privacy Policy. To play games of Fantasy Cricket ,Football and NBA offered on balleballe11, you may have to provide certain information to us.",
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.grey,
                                fontWeight: FontWeight.w500,
                                height: 1.8),
                          ),
                          const SizedBox(height: 20),
                          Text(
                            "The Information We Collect",
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                                fontWeight: FontWeight.w700),
                          ),
                          const SizedBox(height: 10),
                          Text(
                            "You are required to register with us to become our User and access our games. We collect the personal information of our Users. Examples of this include Users’ names, addresses, email addresses, and phone numbers. If you do not provide us with the required information, you may not be able to access our Games and other Services. We also collect information other than your personal information, such as your IP address. Such information is not associated with your personal information and cannot be linked to you personally. We may use IP addresses to analyse trends, administer the Website, track Users’ movement and gather broad demographic information for aggregate use. IP addresses are not linked to personally identifiable information. balleballe11.com is the sole owner of the information collected on this Website. We will not sell, share, or rent our Users’ information to others in ways different from what is disclosed in this Privacy Policy.",
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.grey,
                                fontWeight: FontWeight.w500,
                                height: 1.8),
                          ),
                          const SizedBox(height: 20),
                          Text(
                            "Usage of the Information Collected",
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                                fontWeight: FontWeight.w700),
                          ),
                          const SizedBox(height: 10),
                          Text(
                            "balleballe11 does not disclose your personal information to any third party without your express permission. However, by registering on our Website or App, you grant us permission to use and share your personal information as stated in this Privacy Policy. We may need to disclose your information when required by law. We use your personal information to improve our Services and enhance your experience on our Website as well as to notify you of our new Fantasy Cricket ,Football and NBA offers, Products and Services. Your personal information may be shared with the sponsors and suppliers of prizes for our winners.",
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.grey,
                                fontWeight: FontWeight.w500,
                                height: 1.8),
                          ),
                          const SizedBox(height: 10),
                          Text(
                            "balleballe11 uses a fool proof security system to prevent the loss, misuse and alteration of User information. Your registration data is password-protected and only you can access your information. balleballe11 is not responsible for any activity that takes place in your account when your password is used. We strongly advise you not to disclose your password to anyone whosoever.",
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.grey,
                                fontWeight: FontWeight.w500,
                                height: 1.8),
                          ),
                          const SizedBox(height: 20),
                          Text(
                            "Cookies",
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                                fontWeight: FontWeight.w700),
                          ),
                          const SizedBox(height: 10),
                          Text(
                            "When you visit our Website or use our App, cookies may be left in your computer or phone. A cookie is a small text file that uniquely identifies your browser and which is assigned by the servers of balleballe11.com. It may be used to personalize your experience on balleballe11.com. Additionally, it may be used for authentication, game management and security purposes. A cookie in no way gives us access to your computer or any information about you other than the data you choose to share with us.",
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.grey,
                                fontWeight: FontWeight.w500,
                                height: 1.8),
                          ),
                          const SizedBox(height: 10),
                          Text(
                            "Cookies may also be assigned by the advertisers of balleballe11 when you click on any of the advertisements shown on balleballe11.com. In such an event, the cookies are controlled by these advertisers and not by us.",
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.grey,
                                fontWeight: FontWeight.w500,
                                height: 1.8),
                          ),
                          const SizedBox(height: 10),
                          Text(
                            "You can choose to accept or decline cookies. Most Web browsers automatically accept cookies, but you can usually modify your browser setting to decline cookies if you wish. This may prevent you from taking full advantage of our Products and Services.",
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.grey,
                                fontWeight: FontWeight.w500,
                                height: 1.8),
                          ),
                          const SizedBox(height: 20),
                          Text(
                            "Your Consent",
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                                fontWeight: FontWeight.w700),
                          ),
                          const SizedBox(height: 10),
                          Text(
                            "By registering on our Website or App, you give your express consent for the collection and use of your personal information by balleballe11.com and its partners and affiliates. From time to time, we may change our methods of collecting information and modify our Privacy Policy. We will post such changes on this page so that you are always aware of what information we collect, how we use it, and under what circumstances we disclose it. Make sure that you stay updated on our Privacy Policy revisions.",
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.grey,
                                fontWeight: FontWeight.w500,
                                height: 1.8),
                          ),
                          const SizedBox(height: 10),
                          Text(
                            "balleballe11 asserts that this Privacy Policy is only a description of its operation regarding User information. This Privacy Policy does not create any legal rights in your favour or in favour of any other person, group or organization. balleballe11 reserves the right to change this Privacy Policy at any time without prior notice.",
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.grey,
                                fontWeight: FontWeight.w500,
                                height: 1.8),
                          ),
                          const SizedBox(height: 15),
                        ],
                      ),
                    ),
                    Footer(),
                  ],
                ),

              //
              //
              // Mobile View
              //
              //
              //

              if (Responsive.isTablet(context) || Responsive.isMobile(context))
                Column(
                  children: [
                    WebHeaderMob(),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 20.0, right: 20, bottom: 50),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(height: 30),
                          Text(
                            "Privacy Policy",
                            style: TextStyle(
                                fontSize: 24,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(height: 25),
                          Text(
                            "Our Privacy Is Important",
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                                fontWeight: FontWeight.w700),
                          ),
                          const SizedBox(height: 10),
                          Text(
                            "We provide online Fantasy Cricket ,Football and NBA games on balleballe11 for our Users’ entertainment in an absolutely safe, secure and trustworthy environment. We are committed to protecting the privacy of our Users. This Privacy Policy explains what information we collect from our Users, how we use their information, and what choices are available to our Users in this regard.",
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.grey,
                                fontWeight: FontWeight.w500,
                                height: 1.5),
                          ),
                          const SizedBox(height: 20),
                          Text(
                            "This Privacy Policy forms part of our Website’s Terms of Service. balleballe11 respects your privacy and assures you that any information provided by you to balleballe11 is fully protected and will be used according to this Privacy Policy. To play games of Fantasy Cricket ,Football and NBA offered on balleballe11, you may have to provide certain information to us.",
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.grey,
                                fontWeight: FontWeight.w500,
                                height: 1.5),
                          ),
                          const SizedBox(height: 20),
                          Text(
                            "The Information We Collect",
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                                fontWeight: FontWeight.w700),
                          ),
                          const SizedBox(height: 10),
                          Text(
                            "You are required to register with us to become our User and access our games. We collect the personal information of our Users. Examples of this include Users’ names, addresses, email addresses, and phone numbers. If you do not provide us with the required information, you may not be able to access our Games and other Services. We also collect information other than your personal information, such as your IP address. Such information is not associated with your personal information and cannot be linked to you personally. We may use IP addresses to analyse trends, administer the Website, track Users’ movement and gather broad demographic information for aggregate use. IP addresses are not linked to personally identifiable information. balleballe11.com is the sole owner of the information collected on this Website. We will not sell, share, or rent our Users’ information to others in ways different from what is disclosed in this Privacy Policy.",
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.grey,
                                fontWeight: FontWeight.w500,
                                height: 1.5),
                          ),
                          const SizedBox(height: 20),
                          Text(
                            "Usage of the Information Collected",
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                                fontWeight: FontWeight.w700),
                          ),
                          const SizedBox(height: 10),
                          Text(
                            "balleballe11 does not disclose your personal information to any third party without your express permission. However, by registering on our Website or App, you grant us permission to use and share your personal information as stated in this Privacy Policy. We may need to disclose your information when required by law. We use your personal information to improve our Services and enhance your experience on our Website as well as to notify you of our new Fantasy Cricket ,Football and NBA offers, Products and Services. Your personal information may be shared with the sponsors and suppliers of prizes for our winners.",
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.grey,
                                fontWeight: FontWeight.w500,
                                height: 1.5),
                          ),
                          const SizedBox(height: 10),
                          Text(
                            "balleballe11 uses a fool proof security system to prevent the loss, misuse and alteration of User information. Your registration data is password-protected and only you can access your information. balleballe11 is not responsible for any activity that takes place in your account when your password is used. We strongly advise you not to disclose your password to anyone whosoever.",
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.grey,
                                fontWeight: FontWeight.w500,
                                height: 1.5),
                          ),
                          const SizedBox(height: 20),
                          Text(
                            "Cookies",
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                                fontWeight: FontWeight.w700),
                          ),
                          const SizedBox(height: 10),
                          Text(
                            "When you visit our Website or use our App, cookies may be left in your computer or phone. A cookie is a small text file that uniquely identifies your browser and which is assigned by the servers of balleballe11.com. It may be used to personalize your experience on balleballe11.com. Additionally, it may be used for authentication, game management and security purposes. A cookie in no way gives us access to your computer or any information about you other than the data you choose to share with us.",
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.grey,
                                fontWeight: FontWeight.w500,
                                height: 1.5),
                          ),
                          const SizedBox(height: 10),
                          Text(
                            "Cookies may also be assigned by the advertisers of balleballe11 when you click on any of the advertisements shown on balleballe11.com. In such an event, the cookies are controlled by these advertisers and not by us.",
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.grey,
                                fontWeight: FontWeight.w500,
                                height: 1.5),
                          ),
                          const SizedBox(height: 10),
                          Text(
                            "You can choose to accept or decline cookies. Most Web browsers automatically accept cookies, but you can usually modify your browser setting to decline cookies if you wish. This may prevent you from taking full advantage of our Products and Services.",
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.grey,
                                fontWeight: FontWeight.w500,
                                height: 1.5),
                          ),
                          const SizedBox(height: 20),
                          Text(
                            "Your Consent",
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                                fontWeight: FontWeight.w700),
                          ),
                          const SizedBox(height: 10),
                          Text(
                            "By registering on our Website or App, you give your express consent for the collection and use of your personal information by balleballe11.com and its partners and affiliates. From time to time, we may change our methods of collecting information and modify our Privacy Policy. We will post such changes on this page so that you are always aware of what information we collect, how we use it, and under what circumstances we disclose it. Make sure that you stay updated on our Privacy Policy revisions.",
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.grey,
                                fontWeight: FontWeight.w500,
                                height: 1.5),
                          ),
                          const SizedBox(height: 10),
                          Text(
                            "balleballe11 asserts that this Privacy Policy is only a description of its operation regarding User information. This Privacy Policy does not create any legal rights in your favour or in favour of any other person, group or organization. balleballe11 reserves the right to change this Privacy Policy at any time without prior notice.",
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.grey,
                                fontWeight: FontWeight.w500,
                                height: 1.5),
                          ),
                          const SizedBox(height: 4),
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
      ),
    );
  }
}
