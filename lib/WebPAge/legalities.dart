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

class Legalities extends StatelessWidget {
  const Legalities({Key key}) : super(key: key);

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
                    //  WebHeader(),

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
                            "GAME OF SKILLS",
                            style: TextStyle(
                                fontSize: 24,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(height: 20),
                          Text(
                            "balleballe11 is considered as a “Game of Skill.” The game of skills can be defined as a game wherein the skills of the individuals participating in any online fantasy sports gaming play a dominant role rather than the mere luck of the individuals. The individuals in game of skills use their knowledge, skills, training and attention for participation and winning.",
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.grey,
                                fontWeight: FontWeight.w500,
                                height: 1.8),
                          ),
                          const SizedBox(height: 10),
                          Text(
                            "Online fantasy sports gaming is considered to be a legal practice around the world with certain states being an exception. Online fantasy sports gaming is entirely based on the concept of Game of Skills, wherein the users form their own teams and are allocated points on the basis of on-field performance of their chosen players.",
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.grey,
                                fontWeight: FontWeight.w500,
                                height: 1.8),
                          ),
                          const SizedBox(height: 10),
                          Text(
                            "balleballe11 is completely legal as it offers services, Fun Features, Program(s) and Contest(s) related to fantasy cricket, fantasy football, fantasy kabaddi, fantasy volleyball, fantasy basketball & fantasy hockey. The services, contest(s) and program(s) related to online fantasy sports gaming offered by balleballe11 enables its users to create their own team prior the match begins and then the teams are awarded points on the basis of the real-life performance of the players chosen by the users in the team. The individual whose team scores the highest aggregate of points is announced as the winner. The formation of team by the users of balleballe11 is entirely dependent on the skills, knowledge and attention of the users which makes online fantasy sports gaming offered at balleballe11 a game of skills and 100% legal.",
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.grey,
                                fontWeight: FontWeight.w500,
                                height: 1.8),
                          ),
                          const SizedBox(height: 20),
                          Text(
                            "ALIGNMENT WITH THE INDIAN LAWS",
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(height: 20),
                          Text(
                            "The game of skills such as the online fantasy sports gaming are considered to be legal all over India. expect certain states such as Sikkim, Assam, Odisha, Telangana , Nagaland , Andhra Pradesh and Tamil Nadu. The Public Gambling Act, 1867 (“PGA, 1867”) is recognized as the primary legality driving the prevalence of gambling in India.",
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.grey,
                                fontWeight: FontWeight.w500,
                                height: 1.8),
                          ),
                          const SizedBox(height: 10),
                          Text(
                            "The PGA defines the act of “public gambling” and the keeping of a common gaming house as a criminal and punishable act in India. However, the online fantasy sports gaming is considered to be an exception under the PGA, wherein the provisions and punishments of PGA shall not be applicable to games played by the user using their skills and knowledge as primary tools.",
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.grey,
                                fontWeight: FontWeight.w500,
                                height: 1.8),
                          ),
                          const SizedBox(height: 20),
                          Text(
                            "SIKKIM, ASSAM, ODISHA, TELANGANA , NAGALAND , ANDHRA PRADESH AND TAMIL NADU.",
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                height: 1.5),
                          ),
                          const SizedBox(height: 20),
                          Text(
                            "There are various states in India wherein the laws related to the game of skills are unclear. In this regard, for the websites offering online fantasy sports gaming, it remains unclear whether to offer the services for free or not. The Indian states with no clearance regarding the offering of pay-to-play contests include Sikkim, Assam, Odisha, Telangana , Nagaland , Andhra Pradesh and Tamil Nadu.",
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.grey,
                                fontWeight: FontWeight.w500,
                                height: 1.8),
                          ),
                          const SizedBox(height: 10),
                          Text(
                            "In this context, balleballe11 does not permit the users identified as the residents of Sikkim, Assam, Odisha, Telangana , Nagaland , Andhra Pradesh and Tamil Nadu to participate in the pay-to-play contest(s) organized by balleballe11 .",
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
                      padding: EdgeInsets.only(left: 15, right: 15, bottom: 40),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(height: 30),
                          Text(
                            "GAME OF SKILLS",
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(height: 20),
                          Text(
                            "balleballe11 is considered as a “Game of Skill.” The game of skills can be defined as a game wherein the skills of the individuals participating in any online fantasy sports gaming play a dominant role rather than the mere luck of the individuals. The individuals in game of skills use their knowledge, skills, training and attention for participation and winning.",
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.grey,
                                fontWeight: FontWeight.w500,
                                height: 1.5),
                          ),
                          const SizedBox(height: 10),
                          Text(
                            "Online fantasy sports gaming is considered to be a legal practice around the world with certain states being an exception. Online fantasy sports gaming is entirely based on the concept of Game of Skills, wherein the users form their own teams and are allocated points on the basis of on-field performance of their chosen players.",
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.grey,
                                fontWeight: FontWeight.w500,
                                height: 1.8),
                          ),
                          const SizedBox(height: 10),
                          Text(
                            "balleballe11 is completely legal as it offers services, Fun Features, Program(s) and Contest(s) related to fantasy cricket, fantasy football, fantasy kabaddi, fantasy volleyball, fantasy basketball & fantasy hockey. The services, contest(s) and program(s) related to online fantasy sports gaming offered by balleballe11 enables its users to create their own team prior the match begins and then the teams are awarded points on the basis of the real-life performance of the players chosen by the users in the team. The individual whose team scores the highest aggregate of points is announced as the winner. The formation of team by the users of balleballe11 is entirely dependent on the skills, knowledge and attention of the users which makes online fantasy sports gaming offered at balleballe11 a game of skills and 100% legal.",
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.grey,
                                fontWeight: FontWeight.w500,
                                height: 1.5),
                          ),
                          const SizedBox(height: 20),
                          Text(
                            "ALIGNMENT WITH THE INDIAN LAWS",
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(height: 20),
                          Text(
                            "The game of skills such as the online fantasy sports gaming are considered to be legal all over India. expect certain states such as Sikkim, Assam, Odisha, Telangana , Nagaland , Andhra Pradesh and Tamil Nadu. The Public Gambling Act, 1867 (“PGA, 1867”) is recognized as the primary legality driving the prevalence of gambling in India.",
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.grey,
                                fontWeight: FontWeight.w500,
                                height: 1.5),
                          ),
                          const SizedBox(height: 10),
                          Text(
                            "The PGA defines the act of “public gambling” and the keeping of a common gaming house as a criminal and punishable act in India. However, the online fantasy sports gaming is considered to be an exception under the PGA, wherein the provisions and punishments of PGA shall not be applicable to games played by the user using their skills and knowledge as primary tools.",
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.grey,
                                fontWeight: FontWeight.w500,
                                height: 1.5),
                          ),
                          const SizedBox(height: 20),
                          Text(
                            "SIKKIM, ASSAM, ODISHA, TELANGANA , NAGALAND , ANDHRA PRADESH AND TAMIL NADU.",
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                height: 1.5),
                          ),
                          const SizedBox(height: 20),
                          Text(
                            "There are various states in India wherein the laws related to the game of skills are unclear. In this regard, for the websites offering online fantasy sports gaming, it remains unclear whether to offer the services for free or not. The Indian states with no clearance regarding the offering of pay-to-play contests include Sikkim, Assam, Odisha, Telangana , Nagaland , Andhra Pradesh and Tamil Nadu.",
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.grey,
                                fontWeight: FontWeight.w500,
                                height: 1.5),
                          ),
                          const SizedBox(height: 10),
                          Text(
                            "In this context, balleballe11 does not permit the users identified as the residents of Sikkim, Assam, Odisha, Telangana , Nagaland , Andhra Pradesh and Tamil Nadu to participate in the pay-to-play contest(s) organized by balleballe11 .",
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.grey,
                                fontWeight: FontWeight.w500,
                                height: 1.5),
                          ),
                        ],
                      ),
                    ),

                    //Desktop Footer
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
