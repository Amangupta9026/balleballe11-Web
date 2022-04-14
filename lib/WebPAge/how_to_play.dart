import 'package:balleballe11/WebPAge/responsive.dart';
import 'package:balleballe11/WebPAge/webHeaderMob.dart';
import 'package:balleballe11/constance/icon_constants.dart';
import 'package:balleballe11/login/login.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'about_us.dart';
import 'footer.dart';
import 'footerMob.dart';
import 'home_webpage.dart';

class HowToPlay extends StatefulWidget {
  const HowToPlay({Key key}) : super(key: key);

  @override
  _HowToPlayState createState() => _HowToPlayState();
}

class _HowToPlayState extends State<HowToPlay> {
  int selectiveColor = 0;
  int _selectedTabbar = 0;

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

  TabController _tabController;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Color(0xffffffff),
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

                                height:
                                    MediaQuery.of(context).size.height * 0.15,
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
                        padding: const EdgeInsets.only(top: 20.0, bottom: 20),
                        child: Center(
                          child: Text(
                            "How to Play",
                            style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                        ),
                      ),

                      // Desktop Tab
                      Padding(
                        padding: EdgeInsets.only(left: 80, right: 80),
                        child: Column(children: [
                          TabBar(
                            indicatorColor: Colors.red,
                            unselectedLabelColor: Colors.black,
                            labelColor: Colors.black,
                            onTap: (index) {
                              print(index);
                              setState(() {
                                _selectedTabbar = index;
                              });
                            },
                            tabs: [
                              Tab(
                                text: "balleballe11",
                              ),
                              Tab(
                                  icon: Row(children: [
                                Image.asset(
                                  'assets/img/sport1.png',
                                  height: 20,
                                  width: 20,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text("Cricket"),
                              ]))
                            ],
                          ),
                          Builder(builder: (_) {
                            if (_selectedTabbar == 0) {
                              return balleballe11Tab(); //1st custom tabBarView
                              //2nd tabView
                            } else {
                              return DesktopCricketTab();
                            }
                          }),
                        ]),
                      ),

                      // DeskTop Footer
                      Footer(),
                    ],
                  ),

                // Responsive both platform
                if (Responsive.isTablet(context) ||
                    Responsive.isMobile(context))
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      WebHeaderMob(),
                      Padding(
                        padding: const EdgeInsets.only(top: 20.0, bottom: 20),
                        child: Center(
                          child: Text(
                            "How to Play",
                            style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                        ),
                      ),

                      // Mobile Tab

                      Padding(
                        padding: EdgeInsets.only(left: 15, right: 15),
                        child: Column(children: [
                          TabBar(
                            indicatorColor: Colors.red,
                            unselectedLabelColor: Colors.black,
                            onTap: (index) {
                              print(index);
                              setState(() {
                                _selectedTabbar = index;
                              });
                            },
                            tabs: [
                              Tab(
                                text: "balleballe11",
                              ),
                              Tab(
                                  icon: Row(children: [
                                Image.asset(
                                  'assets/img/sport1.png',
                                  height: 20,
                                  width: 20,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text("Cricket"),
                              ]))
                            ],
                          ),
                          Builder(builder: (_) {
                            if (_selectedTabbar == 0) {
                              return balleballe11MobileTab(); //1st custom tabBarView
                              //2nd tabView
                            } else {
                              return MobileCricketTab();
                            }
                          }),
                        ]),
                      ),

                      //MobileFooter
                      FooterMob(),
                    ],
                  )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class balleballe11MobileTab extends StatefulWidget {
  @override
  State<balleballe11MobileTab> createState() => _balleballe11MobileTabState();
}

class _balleballe11MobileTabState extends State<balleballe11MobileTab> {
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
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 10.0, right: 10),
          child: Column(
            children: [
              const SizedBox(
                height: 30,
              ),
              Center(
                child: Image.asset(
                  'assets/img/introduction.png',
                  //    height: MediaQuery,
                  width: MediaQuery.of(context).size.width * 0.8,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 50),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RichText(
                      text: TextSpan(
                        text: 'balleballe11 ',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Colors.red,
                          fontSize: 16,
                        ),
                        children: <TextSpan>[
                          TextSpan(
                              text:
                                  'is India’s biggest Sports Game with an exponentially growing user base of over 2 crore sports fans.',
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                color: Colors.grey,
                                fontSize: 14,
                              )),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0, bottom: 20),
                      child: Text(
                          "balleballe11 is played by using your sport knowledge and skill. You can pick your own team made up of real players for Cricket, Football, NBA. Create your team within a maximum budget of 100 credits. Your team earns points based on your chosen players' performance in the real-life matches. It's time to showcase your skill and go for glory!",
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              color: Colors.grey,
                              fontSize: 14,
                              height: 1.8)),
                    ),
                    Text("Follow these 6 easy steps to get started:",
                        style: TextStyle(
                            fontWeight: FontWeight.w900,
                            color: Colors.black,
                            fontSize: 15,
                            height: 1.8)),
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0, bottom: 5),
                      child: Text(
                        "•  Select A Sport:",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w900,
                            color: Colors.black),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: Text(
                        "Select any sport or you may select multi sports at a time",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: Colors.grey),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0, bottom: 5),
                      child: Text(
                        "•  Select A Match:",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w900,
                            color: Colors.black),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: Text(
                        "Select any of the upcoming matches from any of the current or upcoming cricket series",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: Colors.grey),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0, bottom: 5),
                      child: Text(
                        "•  Create Your Team:",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w900,
                            color: Colors.black),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: Text(
                        "Use your sports knowledge and showcase your skills to create your balleballe11 team within a budget of 100 credits",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: Colors.grey),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0, bottom: 5),
                      child: Text(
                        "•  Join a Contest:",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w900,
                            color: Colors.black),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: Text(
                        "Join any balleballe11 free or cash contest to win cash and the ultimate bragging rights to showoff your improvement in the Free/Skill contests on balleballe11!",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: Colors.grey),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0, bottom: 5),
                      child: Text(
                        "•  Follow the Match:",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w900,
                            color: Colors.black),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: Text(
                        "Watch the real match and track your fantasy scorecard (updated every 2 minutes)",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: Colors.grey),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0, bottom: 5),
                      child: Text(
                        "•  Withdraw your Winnings:",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w900,
                            color: Colors.black),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0, bottom: 30),
                      child: Text(
                        "Instantly withdraw your winnings from your balleballe11 account (One Time Verification required)",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: Colors.grey),
                      ),
                    ),

                    //Managing the teams
                    Center(
                      child: Image.asset(
                        'assets/img/managing.png',
                        //    height: MediaQuery,
                        width: MediaQuery.of(context).size.width * 0.8,
                      ),
                    ),
                    const SizedBox(height: 25),
                    Padding(
                      padding: const EdgeInsets.only(left: 7.0),
                      child: Image.asset(
                        'assets/img/my_teams.jpeg',
                        //   height: MediaQuery.of(context).size.height * 0.04,
                        width: MediaQuery.of(context).size.width * 0.9,
                      ),
                    ),
                    const SizedBox(height: 20),
                    RichText(
                      text: TextSpan(
                        text: 'You can make as many changes to your ',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontSize: 18,
                            height: 1.5),
                        children: <TextSpan>[
                          TextSpan(
                              text: 'balleballe11',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.red,
                                  fontSize: 18,
                                  height: 1.5)),
                          TextSpan(
                              text:
                                  ' teams as you like until the deadline of that match!',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                  fontSize: 18,
                                  height: 1.5)),
                        ],
                      ),
                    ),
                    const SizedBox(height: 20),
                    RichText(
                      text: TextSpan(
                        text:
                            'You can also change your Captain or Vice Captain before the deadline of the match. Select the “',
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Colors.grey,
                            fontSize: 14,
                            height: 1.5),
                        children: <TextSpan>[
                          TextSpan(
                              text: 'Edit Team',
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: Colors.red,
                                  fontSize: 14,
                                  height: 1.5)),
                          TextSpan(
                              text: '” button to make changes to your team.',
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: Colors.grey,
                                  fontSize: 14,
                                  height: 1.5)),
                        ],
                      ),
                    ),
                    const SizedBox(height: 20),
                    Text(
                        "Make sure you keep an eye on which of your players are playing the match and keep your session updated at all times.",
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Colors.grey,
                            fontSize: 14,
                            height: 1.5)),

                    const SizedBox(
                      height: 30,
                    ),

                    // Account Balance
                    Center(
                      child: Image.asset(
                        'assets/img/account.png',
                        //    height: MediaQuery,
                        width: MediaQuery.of(context).size.width * 0.8,
                      ),
                    ),
                    const SizedBox(height: 25),

                    Padding(
                      padding: const EdgeInsets.only(left: 9.0),
                      child: Image.asset(
                        'assets/img/account_balance.jpeg',
                        //   height: MediaQuery.of(context).size.height * 0.04,
                        width: MediaQuery.of(context).size.width * 0.9,
                      ),
                    ),

                    const SizedBox(height: 20),

                    RichText(
                      text: TextSpan(
                        text: 'You can ',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Colors.grey,
                          fontSize: 16,
                          height: 1.5,
                        ),
                        children: <TextSpan>[
                          TextSpan(
                              text: 'view, withdraw or deposit',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                fontSize: 16,
                                height: 1.5,
                              )),
                          TextSpan(
                              text:
                                  ' money into your balleballe11 account anytime by going to the “',
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Colors.grey,
                                fontSize: 16,
                                height: 1.5,
                              )),
                          TextSpan(
                              text: 'My Account',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                fontSize: 16,
                                height: 1.5,
                              )),
                          TextSpan(
                              text: '” link.',
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Colors.grey,
                                fontSize: 16,
                                height: 1.5,
                              )),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 15.0, bottom: 15),
                      child: Text(
                        "You will need to go through a One Time Account Verification process before you withdraw any money from your balleballe11 account. Don’t worry – this process wont take time and will not be repeated unless you change any of your details.",
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Colors.grey,
                            fontSize: 15,
                            height: 1.5),
                      ),
                    ),
                    Text(
                        "Money in your balleballe11 account is divided into 3 categories:",
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Colors.grey,
                            fontSize: 15,
                            height: 1.5)),
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0, bottom: 10),
                      child: RichText(
                        text: TextSpan(
                          text: 'Unutilized: ',
                          style: TextStyle(
                              fontWeight: FontWeight.w900,
                              color: Colors.black,
                              fontSize: 14,
                              letterSpacing: 1.2),
                          children: <TextSpan>[
                            TextSpan(
                                text:
                                    'If you have deposited any amount but have not yet joined any league using this amount, it will be categorized as Unutilized in your balleballe11 account.',
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    color: Colors.grey,
                                    fontSize: 14,
                                    height: 1.5)),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0, bottom: 10),
                      child: RichText(
                        text: TextSpan(
                          text: 'Winnings: ',
                          style: TextStyle(
                              fontWeight: FontWeight.w900,
                              color: Colors.black,
                              fontSize: 14,
                              letterSpacing: 1.2),
                          children: <TextSpan>[
                            TextSpan(
                                text:
                                    'The amount of money earned as “winnings” through any cash leagues joined. No processing fees will be deducted if you wish to withdraw any amount from your Winnings!',
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    color: Colors.grey,
                                    fontSize: 14,
                                    height: 1.5)),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0, bottom: 10),
                      child: RichText(
                        text: TextSpan(
                          text: 'Cash Bonus: ',
                          style: TextStyle(
                              fontWeight: FontWeight.w900,
                              color: Colors.black,
                              fontSize: 14,
                              letterSpacing: 1.2),
                          children: <TextSpan>[
                            TextSpan(
                                text:
                                    'It’s on us! This is given by balleballe11 to you, and can be used to join any public cash leagues and win more cash! This cash bonus comes with an expiry date so make full use of this freebie and get started!',
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    color: Colors.grey,
                                    fontSize: 14,
                                    height: 1.5)),
                          ],
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
    );
  }
}

// Mobile Cricket Tab

class MobileCricketTab extends StatelessWidget {
  const MobileCricketTab({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 35,
        ),
        Center(
          child: Image.asset(
            'assets/img/createTeam.png',
            //    height: MediaQuery,
            width: MediaQuery.of(context).size.width * 0.8,
          ),
        ),
        const SizedBox(
          height: 45,
        ),
        Container(
          padding: EdgeInsets.fromLTRB(18, 8, 18, 8),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Color(0xfffde8e9)),
          child: Text(
            "Step 1",
            style: TextStyle(
                color: Colors.red, fontWeight: FontWeight.bold, fontSize: 16),
          ),
        ),
        const SizedBox(height: 20),
        Text(
          "Select a Match",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
        ),
        const SizedBox(height: 10),
        RichText(
          text: TextSpan(
            text:
                'Select any upcoming match from the list of ongoing and upcoming cricket series and click on the ‘',
            style: TextStyle(
                fontWeight: FontWeight.w500,
                color: Colors.grey,
                fontSize: 16,
                height: 1.5),
            children: <TextSpan>[
              TextSpan(
                  text: 'Create Team',
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
                    fontSize: 16,
                    height: 1.5,
                  )),
              TextSpan(
                  text: '’ button.',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Colors.grey,
                    fontSize: 16,
                    height: 1.5,
                  )),
            ],
          ),
        ),
        const SizedBox(height: 15),
        Image.asset(
          'assets/img/balleballe11home.png',
          //    height: MediaQuery,
          width: MediaQuery.of(context).size.width * 0.9,
        ),
        const SizedBox(height: 15),
        RichText(
          text: TextSpan(
            text:
                "Every cricket team you build on balleballe11 has to have 11 players, of which a ",
            style: TextStyle(
                fontWeight: FontWeight.w500,
                color: Colors.grey,
                fontSize: 16,
                height: 1.5),
            children: <TextSpan>[
              TextSpan(
                  text: 'maximum of 7 players ',
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
                    fontSize: 16,
                    height: 1.5,
                  )),
              TextSpan(
                  text: 'can be from any one team playing the real-life match.',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Colors.grey,
                    fontSize: 16,
                    height: 1.5,
                  )),
            ],
          ),
        ),
        const SizedBox(
          height: 20,
        ),

        Text(
          "Cricket Player Combinations",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
        ),
        const SizedBox(height: 10),

        Text(
          "Your balleballe11 can have different combinations of players, but has to be within the 100 credit cap and must qualify the following team selection criteria:",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: Colors.grey,
            height: 1.8,
          ),
        ),
        const SizedBox(height: 15),

// Mob Table

        Table(
          border: TableBorder.all(width: 0.8, color: Colors.grey),
          children: [
            TableRow(children: [
              Padding(
                padding: const EdgeInsets.only(top: 10.0, bottom: 10, left: 10),
                child: Text(
                  "Player type",
                  textScaleFactor: 1.5,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 11,
                      color: Colors.black),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0, bottom: 8, left: 10),
                child: Text(
                  "Minimum",
                  textScaleFactor: 1.5,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 11,
                      color: Colors.black),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0, bottom: 8, left: 10),
                child: Text(
                  "Maximum",
                  textScaleFactor: 1.5,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 11,
                      color: Colors.black),
                ),
              ),
            ]),
            TableRow(children: [
              Padding(
                padding: const EdgeInsets.only(top: 10.0, bottom: 10, left: 10),
                child: Text(
                  "WK",
                  textScaleFactor: 1.5,
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 11,
                      color: Colors.grey),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10.0, bottom: 10, left: 10),
                child: Text(
                  "1",
                  textScaleFactor: 1.5,
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 11,
                      color: Colors.grey),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10.0, bottom: 10, left: 10),
                child: Text(
                  "4",
                  textScaleFactor: 1.5,
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 11,
                      color: Colors.grey),
                ),
              ),
            ]),
            TableRow(children: [
              Padding(
                padding: const EdgeInsets.only(top: 10.0, bottom: 10, left: 10),
                child: Text(
                  "Bat",
                  textScaleFactor: 1.5,
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 11,
                      color: Colors.grey),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10.0, bottom: 10, left: 10),
                child: Text(
                  "3",
                  textScaleFactor: 1.5,
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 11,
                      color: Colors.grey),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10.0, bottom: 10, left: 10),
                child: Text(
                  "6",
                  textScaleFactor: 1.5,
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 11,
                      color: Colors.grey),
                ),
              ),
            ]),
            TableRow(children: [
              Padding(
                padding: const EdgeInsets.only(top: 10.0, bottom: 10, left: 10),
                child: Text(
                  "AR",
                  textScaleFactor: 1.5,
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 11,
                      color: Colors.grey),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10.0, bottom: 10, left: 10),
                child: Text(
                  "1",
                  textScaleFactor: 1.5,
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 11,
                      color: Colors.grey),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10.0, bottom: 10, left: 10),
                child: Text(
                  "4",
                  textScaleFactor: 1.5,
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 11,
                      color: Colors.grey),
                ),
              ),
            ]),
            TableRow(children: [
              Padding(
                padding: const EdgeInsets.only(top: 10.0, bottom: 10, left: 10),
                child: Text(
                  "Bowl",
                  textScaleFactor: 1.5,
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 11,
                      color: Colors.grey),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10.0, bottom: 10, left: 10),
                child: Text(
                  "3",
                  textScaleFactor: 1.5,
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 11,
                      color: Colors.grey),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10.0, bottom: 10, left: 10),
                child: Text(
                  "6",
                  textScaleFactor: 1.5,
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 11,
                      color: Colors.grey),
                ),
              ),
            ]),
          ],
        ),

        const SizedBox(
          height: 30,
        ),

        //
        //Step 2
        //

        Container(
          padding: EdgeInsets.fromLTRB(18, 8, 18, 8),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Color(0xfffde8e9)),
          child: Text(
            "Step 2 ",
            style: TextStyle(
                color: Colors.red, fontWeight: FontWeight.bold, fontSize: 16),
          ),
        ),
        const SizedBox(height: 20),
        Text(
          "Select any Contest",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
        ),
        const SizedBox(height: 10),
        RichText(
          text: TextSpan(
            text:
                'Select or Join any balleballe11 free or cash contest to win cash and the ultimate bragging rights to showoff your improvement in the Free/Skill contests on balleballe11! First create you team on click on  ',
            style: TextStyle(
                fontWeight: FontWeight.w500,
                color: Colors.grey,
                fontSize: 16,
                height: 1.5),
            children: <TextSpan>[
              TextSpan(
                  text: 'Create Team',
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
                    fontSize: 16,
                    height: 1.5,
                  )),
              TextSpan(
                  text: '’ button.',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Colors.grey,
                    fontSize: 16,
                    height: 1.5,
                  )),
            ],
          ),
        ),
        const SizedBox(height: 15),
        Image.asset(
          'assets/img/image_work3.jpg',
          //    height: MediaQuery,
          width: MediaQuery.of(context).size.width * 0.9,
        ),
        const SizedBox(height: 45),
        Container(
          padding: EdgeInsets.fromLTRB(18, 8, 18, 8),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Color(0xfffde8e9)),
          child: Text(
            "Step 3",
            style: TextStyle(
                color: Colors.red, fontWeight: FontWeight.bold, fontSize: 16),
          ),
        ),
        const SizedBox(height: 35),

        Image.asset(
          'assets/img/image_work2.jpg',
          //    height: MediaQuery,
          width: MediaQuery.of(context).size.width * 0.9,
        ),
        const SizedBox(
          height: 20,
        ),

        Text(
          "Create your Team",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        RichText(
          text: TextSpan(
            text: 'Select players for your  ',
            style: TextStyle(
                fontWeight: FontWeight.w500,
                color: Colors.grey,
                fontSize: 16,
                height: 1.5),
            children: <TextSpan>[
              TextSpan(
                  text: 'balleballe11 team ',
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
                    fontSize: 16,
                    height: 1.5,
                  )),
              TextSpan(
                  text: 'from all 4 of the categories mentioned below:',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Colors.grey,
                    fontSize: 16,
                    height: 1.5,
                  )),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 12, bottom: 12),
          child: RichText(
            text: TextSpan(
              text: '•   WK ',
              style: TextStyle(
                fontWeight: FontWeight.w700,
                color: Colors.black,
                fontSize: 16,
              ),
              children: <TextSpan>[
                TextSpan(
                    text: '- Wicket-keeper ',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Colors.grey,
                      fontSize: 16,
                    )),
              ],
            ),
          ),
        ),
        RichText(
          text: TextSpan(
            text: '•   BAT ',
            style: TextStyle(
              fontWeight: FontWeight.w700,
              color: Colors.black,
              fontSize: 16,
            ),
            children: <TextSpan>[
              TextSpan(
                  text: '- Batsmen',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Colors.grey,
                    fontSize: 16,
                  )),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 12, bottom: 12),
          child: RichText(
            text: TextSpan(
              text: '•   BWL ',
              style: TextStyle(
                fontWeight: FontWeight.w700,
                color: Colors.black,
                fontSize: 16,
              ),
              children: <TextSpan>[
                TextSpan(
                    text: '- Bowlers ',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Colors.grey,
                      fontSize: 16,
                    )),
              ],
            ),
          ),
        ),
        RichText(
          text: TextSpan(
            text: '•   AR ',
            style: TextStyle(
              fontWeight: FontWeight.w700,
              color: Colors.black,
              fontSize: 16,
            ),
            children: <TextSpan>[
              TextSpan(
                  text: '- All-rounders',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Colors.grey,
                    fontSize: 16,
                  )),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 15, bottom: 12),
          child: Text("Check player info by clicking on the player image.",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Colors.grey,
              )),
        ),
        Text(
          "Sort players as per their teams, credits or points.",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: Colors.grey,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 12, bottom: 12),
          child: Text("Keep an eye on:",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Colors.grey,
              )),
        ),
        RichText(
          text: TextSpan(
            text: '•   ',
            style: TextStyle(
              fontWeight: FontWeight.w700,
              color: Colors.black,
              fontSize: 16,
            ),
            children: <TextSpan>[
              TextSpan(
                  text: 'Number of players added to your team',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Colors.grey,
                    fontSize: 16,
                  )),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 12, bottom: 12),
          child: RichText(
            text: TextSpan(
              text: '•   ',
              style: TextStyle(
                fontWeight: FontWeight.w700,
                color: Colors.black,
                fontSize: 16,
              ),
              children: <TextSpan>[
                TextSpan(
                    text: 'Available credits',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Colors.grey,
                      fontSize: 16,
                    )),
              ],
            ),
          ),
        ),
        RichText(
          text: TextSpan(
            text: '•   ',
            style: TextStyle(
              fontWeight: FontWeight.w700,
              color: Colors.black,
              fontSize: 16,
            ),
            children: <TextSpan>[
              TextSpan(
                  text: 'The deadline for team submission',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Colors.grey,
                    fontSize: 16,
                  )),
            ],
          ),
        ),

        // Step 4

        const SizedBox(height: 40),
        Container(
          padding: EdgeInsets.fromLTRB(18, 8, 18, 8),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Color(0xfffde8e9)),
          child: Text(
            "Step 4",
            style: TextStyle(
                color: Colors.red, fontWeight: FontWeight.bold, fontSize: 16),
          ),
        ),
        const SizedBox(height: 25),

        Text(
          "Select your balleballe11 team’s Captain & Vice Captain",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
        ),
        const SizedBox(height: 30),

        Image.asset(
          'assets/img/choose_captain.jpg',
          //    height: MediaQuery,
          width: MediaQuery.of(context).size.width * 0.9,
        ),

        const SizedBox(height: 30),

        Text(
          "After creating your balleballe11 team, choose a Captain & Vice Captain for the team.",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: Colors.grey,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        RichText(
          text: TextSpan(
            text: '•   ',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black,
              fontSize: 16,
            ),
            children: <TextSpan>[
              TextSpan(
                  text: 'Captain - Gets ',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Colors.grey,
                    fontSize: 16,
                  )),
              TextSpan(
                  text: '2x ',
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
                    fontSize: 16,
                  )),
              TextSpan(
                  text: 'points scored by him in the actual game',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Colors.grey,
                    fontSize: 16,
                    height: 1.5,
                  )),
            ],
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        RichText(
          text: TextSpan(
            text: '•   ',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black,
              fontSize: 16,
            ),
            children: <TextSpan>[
              TextSpan(
                  text: 'Vice Captain - Gets ',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Colors.grey,
                    fontSize: 16,
                  )),
              TextSpan(
                  text: '1.5x ',
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
                    fontSize: 16,
                  )),
              TextSpan(
                  text: 'points scored by him in the actual game',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Colors.grey,
                    fontSize: 16,
                    height: 1.5,
                  )),
            ],
          ),
        ),

        // Step 5

        const SizedBox(height: 40),
        Container(
          padding: EdgeInsets.fromLTRB(18, 8, 18, 8),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Color(0xfffde8e9)),
          child: Text(
            "Step 5",
            style: TextStyle(
                color: Colors.red, fontWeight: FontWeight.bold, fontSize: 16),
          ),
        ),
        const SizedBox(height: 25),

        Text(
          "Creating multiple teams",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
        ),
        const SizedBox(height: 30),

        Image.asset(
          'assets/img/my_teams.jpeg',
          //    height: MediaQuery,
          width: MediaQuery.of(context).size.width * 0.9,
        ),

        const SizedBox(
          height: 20,
        ),

        Text(
          "You can create upto 11 teams per match and choose to join a contests with any of the teams created!",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: Colors.grey,
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        Text(
          "Click on 'CREATE TEAM' for creating next team",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: Colors.grey,
          ),
        ),

        const SizedBox(
          height: 50,
        ),
      ],
    );
  }
}

//Desktop Tab
class balleballe11Tab extends StatelessWidget {
  const balleballe11Tab({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 10,
        ),
        Center(
          child: Image.asset(
            'assets/img/introduction.png',
            //    height: MediaQuery,
            width: MediaQuery.of(context).size.width * 0.5,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 50),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  RichText(
                    text: TextSpan(
                      text: 'balleballe11 ',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Colors.red,
                        fontSize: 16,
                      ),
                      children: <TextSpan>[
                        TextSpan(
                            text:
                                'is India’s biggest Sports Game with an exponentially growing user base of over 2 crore sports fans.',
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              color: Colors.grey,
                              fontSize: 14,
                            )),
                      ],
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20.0, bottom: 20),
                child: Text(
                    "balleballe11 is played by using your sport knowledge and skill. You can pick your own team made up of real players for Cricket, Football, NBA. Create your team within a maximum budget of 100 credits. Your team earns points based on your chosen players' performance in the real-life matches. It's time to showcase your skill and go for glory!",
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        color: Colors.grey,
                        fontSize: 14,
                        height: 1.8)),
              ),
              Text("Follow these 6 easy steps to get started:",
                  style: TextStyle(
                      fontWeight: FontWeight.w900,
                      color: Colors.black,
                      fontSize: 15,
                      height: 1.8)),
              Padding(
                padding: const EdgeInsets.only(top: 20.0, bottom: 5),
                child: Text(
                  "•  Select A Sport:",
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w900,
                      color: Colors.black),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Text(
                  "Select any sport or you may select multi sports at a time",
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: Colors.grey),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20.0, bottom: 5),
                child: Text(
                  "•  Select A Match:",
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w900,
                      color: Colors.black),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Text(
                  "Select any of the upcoming matches from any of the current or upcoming cricket series",
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: Colors.grey),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20.0, bottom: 5),
                child: Text(
                  "•  Create Your Team:",
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w900,
                      color: Colors.black),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Text(
                  "Use your sports knowledge and showcase your skills to create your balleballe11 team within a budget of 100 credits",
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: Colors.grey),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20.0, bottom: 5),
                child: Text(
                  "•  Join a Contest:",
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w900,
                      color: Colors.black),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Text(
                  "Join any balleballe11 free or cash contest to win cash and the ultimate bragging rights to showoff your improvement in the Free/Skill contests on balleballe11!",
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: Colors.grey),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20.0, bottom: 5),
                child: Text(
                  "•  Follow the Match:",
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w900,
                      color: Colors.black),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Text(
                  "Watch the real match and track your fantasy scorecard (updated every 2 minutes)",
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: Colors.grey),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20.0, bottom: 5),
                child: Text(
                  "•  Withdraw your Winnings:",
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w900,
                      color: Colors.black),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0, bottom: 40),
                child: Text(
                  "Instantly withdraw your winnings from your balleballe11 account (One Time Verification required)",
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: Colors.grey),
                ),
              ),

              //Managing the teams

              Center(
                child: Image.asset(
                  'assets/img/managing.png',
                  //    height: MediaQuery,
                  width: MediaQuery.of(context).size.width * 0.5,
                ),
              ),
              const SizedBox(height: 35),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    'assets/img/my_teams.jpeg',
                    //   height: MediaQuery.of(context).size.height * 0.04,
                    width: MediaQuery.of(context).size.width * 0.2,
                  ),
                  Flexible(
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 15.0, right: 15, bottom: 25),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              RichText(
                                text: TextSpan(
                                  text: 'You can make as many changes to your ',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                    fontSize: 18,
                                  ),
                                  children: <TextSpan>[
                                    TextSpan(
                                        text: 'balleballe11',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.red,
                                          fontSize: 18,
                                        )),
                                    TextSpan(
                                        text:
                                            ' teams as you like until the deadline of that match!',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black,
                                          fontSize: 18,
                                        )),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(top: 15.0, bottom: 15),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: RichText(
                                    text: TextSpan(
                                      text:
                                          'You can also change your Captain or Vice Captain before the deadline of the match. Select the “',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        color: Colors.grey,
                                        fontSize: 14,
                                      ),
                                      children: <TextSpan>[
                                        TextSpan(
                                            text: 'Edit Team',
                                            style: TextStyle(
                                              fontWeight: FontWeight.w500,
                                              color: Colors.red,
                                              fontSize: 14,
                                            )),
                                        TextSpan(
                                            text:
                                                '” button to make changes to your team.',
                                            style: TextStyle(
                                              fontWeight: FontWeight.w500,
                                              color: Colors.grey,
                                              fontSize: 14,
                                            )),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Text(
                              "Make sure you keep an eye on which of your players are playing the match and keep your session updated at all times.",
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Colors.grey,
                                fontSize: 14,
                              ))
                        ],
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 40,
              ),

              // Account Balance
              Center(
                child: Image.asset(
                  'assets/img/account.png',
                  //    height: MediaQuery,
                  width: MediaQuery.of(context).size.width * 0.5,
                ),
              ),
              const SizedBox(height: 35),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    'assets/img/account_balance.jpeg',
                    //   height: MediaQuery.of(context).size.height * 0.04,
                    width: MediaQuery.of(context).size.width * 0.2,
                  ),
                  Flexible(
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 15.0, right: 15, bottom: 25),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              RichText(
                                text: TextSpan(
                                  text: 'You can ',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    color: Colors.grey,
                                    fontSize: 16,
                                  ),
                                  children: <TextSpan>[
                                    TextSpan(
                                        text: 'view, withdraw or deposit',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black,
                                          fontSize: 16,
                                        )),
                                    TextSpan(
                                        text:
                                            ' money into your balleballe11 account anytime by going to the “',
                                        style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          color: Colors.grey,
                                          fontSize: 16,
                                        )),
                                    TextSpan(
                                        text: 'My Account',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black,
                                          fontSize: 16,
                                        )),
                                    TextSpan(
                                        text: '” link.',
                                        style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          color: Colors.grey,
                                          fontSize: 16,
                                        )),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(top: 15.0, bottom: 15),
                            child: Text(
                              "You will need to go through a One Time Account Verification process before you withdraw any money from your balleballe11 account. Don’t worry – this process wont take time and will not be repeated unless you change any of your details.",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: Colors.grey,
                                  fontSize: 16,
                                  height: 1.8),
                            ),
                          ),
                          Text(
                              "Money in your balleballe11 account is divided into 3 categories:",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: Colors.grey,
                                  fontSize: 16,
                                  height: 2)),
                          Padding(
                            padding:
                                const EdgeInsets.only(top: 10.0, bottom: 10),
                            child: RichText(
                              text: TextSpan(
                                text: 'Unutilized: ',
                                style: TextStyle(
                                    fontWeight: FontWeight.w900,
                                    color: Colors.black,
                                    fontSize: 14,
                                    letterSpacing: 1.2),
                                children: <TextSpan>[
                                  TextSpan(
                                      text:
                                          'If you have deposited any amount but have not yet joined any league using this amount, it will be categorized as Unutilized in your balleballe11 account.',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          color: Colors.grey,
                                          fontSize: 14,
                                          height: 1.8)),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(top: 10.0, bottom: 10),
                            child: RichText(
                              text: TextSpan(
                                text: 'Winnings: ',
                                style: TextStyle(
                                    fontWeight: FontWeight.w900,
                                    color: Colors.black,
                                    fontSize: 14,
                                    letterSpacing: 1.2),
                                children: <TextSpan>[
                                  TextSpan(
                                      text:
                                          'The amount of money earned as “winnings” through any cash leagues joined. No processing fees will be deducted if you wish to withdraw any amount from your Winnings!',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          color: Colors.grey,
                                          fontSize: 14,
                                          height: 1.8)),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(top: 10.0, bottom: 10),
                            child: RichText(
                              text: TextSpan(
                                text: 'Cash Bonus: ',
                                style: TextStyle(
                                    fontWeight: FontWeight.w900,
                                    color: Colors.black,
                                    fontSize: 14,
                                    letterSpacing: 1.2),
                                children: <TextSpan>[
                                  TextSpan(
                                      text:
                                          'It’s on us! This is given by balleballe11 to you, and can be used to join any public cash leagues and win more cash! This cash bonus comes with an expiry date so make full use of this freebie and get started!',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          color: Colors.grey,
                                          fontSize: 14,
                                          height: 1.8)),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}

// Desktop Tab Cricket
class DesktopCricketTab extends StatelessWidget {
  const DesktopCricketTab({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // const SizedBox(
        //   height: 7,
        // ),
        Center(
          child: Image.asset(
            'assets/img/createTeam.png',
            //    height: MediaQuery,
            width: MediaQuery.of(context).size.width * 0.8,
          ),
        ),

        // const SizedBox(
        //   height: 4,
        // ),
        Container(
          padding: EdgeInsets.fromLTRB(18, 8, 18, 8),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Color(0xfffde8e9)),
          child: Text(
            "Step 1",
            style: TextStyle(
                color: Colors.red, fontWeight: FontWeight.bold, fontSize: 16),
          ),
        ),
        const SizedBox(height: 20),
        Text(
          "Select a Match",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
        ),
        const SizedBox(height: 10),
        RichText(
          text: TextSpan(
            text:
                'Select any upcoming match from the list of ongoing and upcoming cricket series and click on the ‘',
            style: TextStyle(
                fontWeight: FontWeight.w500,
                color: Colors.grey,
                fontSize: 16,
                height: 1.5),
            children: <TextSpan>[
              TextSpan(
                  text: 'Create Team',
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
                    fontSize: 16,
                    height: 1.5,
                  )),
              TextSpan(
                  text: '’ button.',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Colors.grey,
                    fontSize: 16,
                    height: 1.5,
                  )),
            ],
          ),
        ),
        const SizedBox(height: 15),

        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  'assets/img/group_home.jpg',
                  //    height: MediaQuery,
                  width: MediaQuery.of(context).size.width * 0.3,
                ),
              ],
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 22.0, right: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Every cricket team you build on balleballe11 has to have 11 players, of which a",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    RichText(
                      text: TextSpan(
                        text: 'maximum of 7 players ',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 16,
                        ),
                        children: <TextSpan>[
                          TextSpan(
                              text:
                                  'can be from any one team playing the real-life match.',
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Colors.grey,
                                fontSize: 16,
                              )),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Cricket Player Combinations",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(height: 10),

                    Text(
                      "Your balleballe11 can have different combinations of players, but has to be within the 100 credit cap and must qualify the following team selection criteria:",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey,
                        height: 1.8,
                      ),
                    ),
                    const SizedBox(height: 15),

                    // Desktop Table

                    Table(
                      border: TableBorder.all(width: 0.8, color: Colors.grey),
                      children: [
                        TableRow(children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 10.0, bottom: 10, left: 10),
                            child: Text(
                              "Player type",
                              textScaleFactor: 1.5,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 11,
                                  color: Colors.black),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 8.0, bottom: 8, left: 10),
                            child: Text(
                              "Minimum",
                              textScaleFactor: 1.5,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 11,
                                  color: Colors.black),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 8.0, bottom: 8, left: 10),
                            child: Text(
                              "Maximum",
                              textScaleFactor: 1.5,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 11,
                                  color: Colors.black),
                            ),
                          ),
                        ]),
                        TableRow(children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 10.0, bottom: 10, left: 10),
                            child: Text(
                              "WK",
                              textScaleFactor: 1.5,
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 11,
                                  color: Colors.grey),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 10.0, bottom: 10, left: 10),
                            child: Text(
                              "1",
                              textScaleFactor: 1.5,
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 11,
                                  color: Colors.grey),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 10.0, bottom: 10, left: 10),
                            child: Text(
                              "4",
                              textScaleFactor: 1.5,
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 11,
                                  color: Colors.grey),
                            ),
                          ),
                        ]),
                        TableRow(children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 10.0, bottom: 10, left: 10),
                            child: Text(
                              "Bat",
                              textScaleFactor: 1.5,
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 11,
                                  color: Colors.grey),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 10.0, bottom: 10, left: 10),
                            child: Text(
                              "3",
                              textScaleFactor: 1.5,
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 11,
                                  color: Colors.grey),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 10.0, bottom: 10, left: 10),
                            child: Text(
                              "6",
                              textScaleFactor: 1.5,
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 11,
                                  color: Colors.grey),
                            ),
                          ),
                        ]),
                        TableRow(children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 10.0, bottom: 10, left: 10),
                            child: Text(
                              "AR",
                              textScaleFactor: 1.5,
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 11,
                                  color: Colors.grey),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 10.0, bottom: 10, left: 10),
                            child: Text(
                              "1",
                              textScaleFactor: 1.5,
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 11,
                                  color: Colors.grey),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 10.0, bottom: 10, left: 10),
                            child: Text(
                              "4",
                              textScaleFactor: 1.5,
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 11,
                                  color: Colors.grey),
                            ),
                          ),
                        ]),
                        TableRow(children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 10.0, bottom: 10, left: 10),
                            child: Text(
                              "Bowl",
                              textScaleFactor: 1.5,
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 11,
                                  color: Colors.grey),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 10.0, bottom: 10, left: 10),
                            child: Text(
                              "3",
                              textScaleFactor: 1.5,
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 11,
                                  color: Colors.grey),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 10.0, bottom: 10, left: 10),
                            child: Text(
                              "6",
                              textScaleFactor: 1.5,
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 11,
                                  color: Colors.grey),
                            ),
                          ),
                        ]),
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),

        //Step 2

        const SizedBox(height: 20),
        Container(
          padding: EdgeInsets.fromLTRB(18, 8, 18, 8),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Color(0xfffde8e9)),
          child: Text(
            "Step 2",
            style: TextStyle(
                color: Colors.red, fontWeight: FontWeight.bold, fontSize: 16),
          ),
        ),
        const SizedBox(height: 20),
        Text(
          "Select any Contest",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
        ),
        const SizedBox(height: 10),
        RichText(
          text: TextSpan(
            text:
                'Select or Join any balleballe11 free or cash contest to win cash and the ultimate bragging rights to showoff your improvement in the Free/Skill contests on balleballe11! First create you team on click on  ',
            style: TextStyle(
                fontWeight: FontWeight.w500,
                color: Colors.grey,
                fontSize: 16,
                height: 1.5),
            children: <TextSpan>[
              TextSpan(
                  text: 'Create Team',
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
                    fontSize: 16,
                    height: 1.5,
                  )),
              TextSpan(
                  text: '’ button.',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Colors.grey,
                    fontSize: 16,
                    height: 1.5,
                  )),
            ],
          ),
        ),
        const SizedBox(height: 15),
        Image.asset(
          'assets/img/image_work3.jpg',
          //    height: MediaQuery,
          width: MediaQuery.of(context).size.width * 0.3,
        ),
        const SizedBox(height: 50),
        Container(
          padding: EdgeInsets.fromLTRB(18, 8, 18, 8),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Color(0xfffde8e9)),
          child: Text(
            "Step 3",
            style: TextStyle(
                color: Colors.red, fontWeight: FontWeight.bold, fontSize: 16),
          ),
        ),
        const SizedBox(height: 35),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  'assets/img/image_work2.jpg',
                  //    height: MediaQuery,
                  width: MediaQuery.of(context).size.width * 0.3,
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 22.0, right: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Create your Team",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  RichText(
                    text: TextSpan(
                      text: 'Select players for your  ',
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Colors.grey,
                          fontSize: 16,
                          height: 1.5),
                      children: <TextSpan>[
                        TextSpan(
                            text: 'balleballe11 team ',
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              color: Colors.black,
                              fontSize: 16,
                              height: 1.5,
                            )),
                        TextSpan(
                            text:
                                'from all 4 of the categories mentioned below:',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Colors.grey,
                              fontSize: 16,
                              height: 1.5,
                            )),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 12, bottom: 12),
                    child: RichText(
                      text: TextSpan(
                        text: '•   WK ',
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          color: Colors.black,
                          fontSize: 16,
                        ),
                        children: <TextSpan>[
                          TextSpan(
                              text: '- Wicket-keeper ',
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Colors.grey,
                                fontSize: 16,
                              )),
                        ],
                      ),
                    ),
                  ),
                  RichText(
                    text: TextSpan(
                      text: '•   BAT ',
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        color: Colors.black,
                        fontSize: 16,
                      ),
                      children: <TextSpan>[
                        TextSpan(
                            text: '- Batsmen',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Colors.grey,
                              fontSize: 16,
                            )),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 12, bottom: 12),
                    child: RichText(
                      text: TextSpan(
                        text: '•   BWL ',
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          color: Colors.black,
                          fontSize: 16,
                        ),
                        children: <TextSpan>[
                          TextSpan(
                              text: '- Bowlers ',
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Colors.grey,
                                fontSize: 16,
                              )),
                        ],
                      ),
                    ),
                  ),
                  RichText(
                    text: TextSpan(
                      text: '•   AR ',
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        color: Colors.black,
                        fontSize: 16,
                      ),
                      children: <TextSpan>[
                        TextSpan(
                            text: '- All-rounders',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Colors.grey,
                              fontSize: 16,
                            )),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 15, bottom: 12),
                    child: Text(
                        "Check player info by clicking on the player image.",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey,
                        )),
                  ),
                  Text(
                    "Sort players as per their teams, credits or points.",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 12, bottom: 12),
                    child: Text("Keep an eye on:",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey,
                        )),
                  ),
                  RichText(
                    text: TextSpan(
                      text: '•   ',
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        color: Colors.black,
                        fontSize: 16,
                      ),
                      children: <TextSpan>[
                        TextSpan(
                            text: 'Number of players added to your team',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Colors.grey,
                              fontSize: 16,
                            )),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 12, bottom: 12),
                    child: RichText(
                      text: TextSpan(
                        text: '•   ',
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          color: Colors.black,
                          fontSize: 16,
                        ),
                        children: <TextSpan>[
                          TextSpan(
                              text: 'Available credits',
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Colors.grey,
                                fontSize: 16,
                              )),
                        ],
                      ),
                    ),
                  ),
                  RichText(
                    text: TextSpan(
                      text: '•   ',
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        color: Colors.black,
                        fontSize: 16,
                      ),
                      children: <TextSpan>[
                        TextSpan(
                            text: 'The deadline for team submission',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Colors.grey,
                              fontSize: 16,
                            )),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),

        // Step 4
        const SizedBox(height: 50),
        Container(
          padding: EdgeInsets.fromLTRB(18, 8, 18, 8),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Color(0xfffde8e9)),
          child: Text(
            "Step 4",
            style: TextStyle(
                color: Colors.red, fontWeight: FontWeight.bold, fontSize: 16),
          ),
        ),
        const SizedBox(height: 20),

        Text(
          "Select your balleballe11 team’s Captain & Vice Captain",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
        ),
        const SizedBox(height: 35),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  'assets/img/choose_captain.jpg',
                  //    height: MediaQuery,
                  width: MediaQuery.of(context).size.width * 0.3,
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 22.0, right: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "After creating your balleballe11 team, choose a Captain & Vice Captain for the team.",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  RichText(
                    text: TextSpan(
                      text: '•   ',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 16,
                      ),
                      children: <TextSpan>[
                        TextSpan(
                            text: 'Captain - Gets ',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Colors.grey,
                              fontSize: 16,
                            )),
                        TextSpan(
                            text: '2x ',
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              color: Colors.black,
                              fontSize: 16,
                            )),
                        TextSpan(
                            text: 'points scored by him in the actual game',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Colors.grey,
                              fontSize: 16,
                              height: 1.5,
                            )),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  RichText(
                    text: TextSpan(
                      text: '•   ',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 16,
                      ),
                      children: <TextSpan>[
                        TextSpan(
                            text: 'Vice Captain - Gets ',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Colors.grey,
                              fontSize: 16,
                            )),
                        TextSpan(
                            text: '1.5x ',
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              color: Colors.black,
                              fontSize: 16,
                            )),
                        TextSpan(
                            text: 'points scored by him in the actual game',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Colors.grey,
                              fontSize: 16,
                              height: 1.5,
                            )),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),

        // Step 5
        const SizedBox(height: 50),
        Container(
          padding: EdgeInsets.fromLTRB(18, 8, 18, 8),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Color(0xfffde8e9)),
          child: Text(
            "Step 5",
            style: TextStyle(
                color: Colors.red, fontWeight: FontWeight.bold, fontSize: 16),
          ),
        ),
        const SizedBox(height: 20),

        Text(
          "Creating multiple teams",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
        ),
        const SizedBox(height: 35),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  'assets/img/my_teams.jpeg',
                  //    height: MediaQuery,
                  width: MediaQuery.of(context).size.width * 0.3,
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 22.0, right: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "You can create upto 11 teams per match and choose to join a contests with any of the teams created!",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey,
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Text(
                    "Click on 'CREATE TEAM' for creating next team",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
        const SizedBox(
          height: 50,
        ),
      ],
    );
  }
}
