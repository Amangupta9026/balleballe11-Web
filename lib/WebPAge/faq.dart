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

class Faq extends StatelessWidget {
  const Faq({Key key}) : super(key: key);

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
                            "FAQ's",
                            style: TextStyle(
                                fontSize: 24,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(height: 40),
                          Text(
                            "What is Fantasy Cricket?",
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                                fontWeight: FontWeight.w700),
                          ),
                          const SizedBox(height: 10),
                          Text(
                            "Cricket is not just a sport in India, it's a religion. From Tests to T20s, you can join contests for all formats of international cricket on balleballe11. Apart from ICC matches and tournaments, users can also play online cricket games from various cricket leagues like the IPL - followed and played across the world.",
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                                height: 1.8),
                          ),
                          const SizedBox(height: 20),
                          Text(
                            "But how does one join and play a fantasy cricket match on balleballe11? All you need to do is register using your email address and mobile number. An even quicker way to sign up is by connecting your Google or Facebook account. The game comes with a set of rules that are put in place to ensure #FairPlay for everyone.",
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                                height: 1.8),
                          ),
                          const SizedBox(height: 40),
                          Text(
                            "What is balleballe11?",
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                                fontWeight: FontWeight.w700),
                          ),
                          const SizedBox(height: 10),
                          Text(
                            "balleballe11 is India’s best Fantasy Sports platform, with a rapidly growing user base and exponentially increasing popularity.",
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                                height: 1.8),
                          ),
                          const SizedBox(height: 40),
                          Text(
                            "How do I sign up on balleballe11?",
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                                fontWeight: FontWeight.w700),
                          ),
                          const SizedBox(height: 10),
                          Text(
                            "Easy breezy! Once you are on balleballe11.com, choose your sport and register by filling out a short form, or just log in with your Facebook or Google+ account to play in our Fantasy Cricket League.",
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                                height: 1.8),
                          ),
                          const SizedBox(height: 40),
                          Text(
                            "Why can’t I log in to my balleballe11 account?",
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                                fontWeight: FontWeight.w700),
                          ),
                          const SizedBox(height: 10),
                          Text(
                            "Sorry for the inconvenience! Please check whether you entered the correct email address and password and try again. If you have forgotten your password, click on “Forgot Password,” enter your email address registered on balleballe11.com, and we will immediately send you an email with a link to reset your password. Follow the instructions given and you will be able to play online Fantasy Cricket games on balleballe11.",
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                                height: 1.8),
                          ),
                          const SizedBox(height: 40),
                          Text(
                            "How do I change my password?",
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                                fontWeight: FontWeight.w700),
                          ),
                          const SizedBox(height: 10),
                          Text(
                            "When you are logged in, look for the option “Change Password.”",
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                                height: 1.8),
                          ),
                          const SizedBox(height: 40),
                          Text(
                            "How many accounts can I create with the same email address on balleballe11.com?",
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                                fontWeight: FontWeight.w700),
                          ),
                          const SizedBox(height: 10),
                          Text(
                            "You can create only one account with one email address on balleballe11.com. Not only that, you are prohibited from creating more than one account on balleballe11. Creation of multiple accounts by a User violates our Fair Play Policy.",
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                                height: 1.8),
                          ),
                          const SizedBox(height: 40),
                          Text(
                            "Can I update/edit my user information?",
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                                fontWeight: FontWeight.w700),
                          ),
                          const SizedBox(height: 10),
                          Text(
                            "Of course, you can! All you need to do is log in to your balleballe11 account and click on “Edit Profile” on the top right of the page. You can edit your date of birth, address and state if your balleballe11 account is “Unverified.” Remember, the name chosen by you and the email address registered once cannot be changed",
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                                height: 1.8),
                          ),
                          const SizedBox(height: 40),
                          Text(
                            "I did not get any confirmation email after I signed up. What do I do?",
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                                fontWeight: FontWeight.w700),
                          ),
                          const SizedBox(height: 10),
                          Text(
                            "A. Maybe you did get an email but it got marked spam and went to your “Spam” box in your mailbox. Please check your “Spam” box and mark the email from balleballe11 as “Not Spam.” Also, add support@balleballe11.com to your contact list so you can continue receiving emails from us. \n B. You might not have entered the correct email address while registering. For any assistance, please reach out to us and we will help you with the steps to play online Fantasy Cricket games on balleballe11.",
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                                height: 1.8),
                          ),
                          const SizedBox(height: 40),
                          Text(
                            "I don't know much about cricket. Can I still play?",
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                                fontWeight: FontWeight.w700),
                          ),
                          const SizedBox(height: 10),
                          Text(
                            "Yes, you can! Just check out our “How to Play balleballe11” section!",
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                                height: 1.8),
                          ),
                        ],
                      ),
                    ),
                    Footer(),
                  ],
                ),

              //Mobile View
              if (Responsive.isTablet(context) || Responsive.isMobile(context))
                Column(
                  children: [
                    WebHeaderMob(),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 20.0, right: 20, bottom: 75),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(height: 30),
                          Text(
                            "FAQ's",
                            style: TextStyle(
                                fontSize: 24,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(height: 40),
                          Text(
                            "What is Fantasy Cricket?",
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                                fontWeight: FontWeight.w700),
                          ),
                          const SizedBox(height: 10),
                          Text(
                            "Cricket is not just a sport in India, it's a religion. From Tests to T20s, you can join contests for all formats of international cricket on balleballe11. Apart from ICC matches and tournaments, users can also play online cricket games from various cricket leagues like the IPL - followed and played across the world.",
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                                height: 1.5),
                          ),
                          const SizedBox(height: 20),
                          Text(
                            "But how does one join and play a fantasy cricket match on balleballe11? All you need to do is register using your email address and mobile number. An even quicker way to sign up is by connecting your Google or Facebook account. The game comes with a set of rules that are put in place to ensure #FairPlay for everyone.",
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                                height: 1.5),
                          ),
                          const SizedBox(height: 40),
                          Text(
                            "What is balleballe11?",
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                                fontWeight: FontWeight.w700),
                          ),
                          const SizedBox(height: 10),
                          Text(
                            "balleballe11 is India’s best Fantasy Sports platform, with a rapidly growing user base and exponentially increasing popularity.",
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                                height: 1.5),
                          ),
                          const SizedBox(height: 40),
                          Text(
                            "How do I sign up on balleballe11?",
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                                fontWeight: FontWeight.w700),
                          ),
                          const SizedBox(height: 10),
                          Text(
                            "Easy breezy! Once you are on balleballe11.com, choose your sport and register by filling out a short form, or just log in with your Facebook or Google+ account to play in our Fantasy Cricket League.",
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                                height: 1.5),
                          ),
                          const SizedBox(height: 40),
                          Text(
                            "Why can’t I log in to my balleballe11 account?",
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                                fontWeight: FontWeight.w700),
                          ),
                          const SizedBox(height: 10),
                          Text(
                            "Sorry for the inconvenience! Please check whether you entered the correct email address and password and try again. If you have forgotten your password, click on “Forgot Password,” enter your email address registered on balleballe11.com, and we will immediately send you an email with a link to reset your password. Follow the instructions given and you will be able to play online Fantasy Cricket games on balleballe11.",
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                                height: 1.5),
                          ),
                          const SizedBox(height: 40),
                          Text(
                            "How do I change my password?",
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                                fontWeight: FontWeight.w700),
                          ),
                          const SizedBox(height: 10),
                          Text(
                            "When you are logged in, look for the option “Change Password.”",
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                                height: 1.5),
                          ),
                          const SizedBox(height: 40),
                          Text(
                            "How many accounts can I create with the same email address on balleballe11.com?",
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                                fontWeight: FontWeight.w700),
                          ),
                          const SizedBox(height: 10),
                          Text(
                            "You can create only one account with one email address on balleballe11.com. Not only that, you are prohibited from creating more than one account on balleballe11. Creation of multiple accounts by a User violates our Fair Play Policy.",
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                                height: 1.5),
                          ),
                          const SizedBox(height: 40),
                          Text(
                            "Can I update/edit my user information?",
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                                fontWeight: FontWeight.w700),
                          ),
                          const SizedBox(height: 10),
                          Text(
                            "Of course, you can! All you need to do is log in to your balleballe11 account and click on “Edit Profile” on the top right of the page. You can edit your date of birth, address and state if your balleballe11 account is “Unverified.” Remember, the name chosen by you and the email address registered once cannot be changed",
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                                height: 1.5),
                          ),
                          const SizedBox(height: 40),
                          Text(
                            "I did not get any confirmation email after I signed up. What do I do?",
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                                fontWeight: FontWeight.w700),
                          ),
                          const SizedBox(height: 10),
                          Text(
                            "A. Maybe you did get an email but it got marked spam and went to your “Spam” box in your mailbox. Please check your “Spam” box and mark the email from balleballe11 as “Not Spam.” Also, add support@balleballe11.com to your contact list so you can continue receiving emails from us. \n B. You might not have entered the correct email address while registering. For any assistance, please reach out to us and we will help you with the steps to play online Fantasy Cricket games on balleballe11.",
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                                height: 1.5),
                          ),
                          const SizedBox(height: 40),
                          Text(
                            "I don't know much about cricket. Can I still play?",
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                                fontWeight: FontWeight.w700),
                          ),
                          const SizedBox(height: 10),
                          Text(
                            "Yes, you can! Just check out our “How to Play balleballe11” section!",
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                                height: 1.5),
                          ),
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
