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

class TermsCondition extends StatelessWidget {
  const TermsCondition({Key key}) : super(key: key);

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
                Column(children: [
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
                                            builder: (context) => HowToPlay()),
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
                          "Terms and conditions",
                          style: TextStyle(
                              fontSize: 24,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 40),
                        Text(
                          "Agreement",
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                              fontWeight: FontWeight.w700),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          "We advise you to read our Terms of Service carefully and understand them well. All the clauses in the Terms of Service of balleballe11 are delineated below and included in the medium of reference that can be accessed by clicking on the related links. You should make sure that you have read and understood our Agreement, including our Terms of Service, well before becoming a member of balleballe11. By registering on balleballe11, you agree to follow our Terms of Service, Privacy Policy and Game Rules. You are completely bound by our Agreement in any instance when you choose to use our Services or Games or software. We reserve the right to modify and amend our Terms of Service at any time. When we make any changes to our Terms of Service, we shall inform you about the revisions by sending you a notice at your email address registered with us. We shall also update such changes on our Website. We may make changes to our Terms of Service in order to review or change any of our Policies and Game Rules. If you do not agree to the changes made, you may cease your use of our Services of online Fantasy Cricket games by informing us that you have deleted your account. If you continue to use our Services after any amendments or changes, it shall be assumed that you have accepted the changes made in the Agreement and you agree to our new Terms.",
                          style: TextStyle(
                              fontSize: 14,
                              color: Colors.grey,
                              fontWeight: FontWeight.w500,
                              height: 1.8),
                        ),
                        const SizedBox(height: 20),
                        Text(
                          "Warranty",
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                              fontWeight: FontWeight.w700),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          'balleballe11 aims to provide information that is accurate, complete, and reliable at the time of publishing or posting it. However, balleballe11 makes no representations about the correctness, completeness or suitability of any information published on its Website or contained in its documents. All the information and related graphics are provided on an "as is" basis without warranty of any kind, express or implied. balleballe11 hereby disclaims all warranties with regard to such information, including all implied warranties and conditions of merchantability, fitness for a particular purpose, title and non-infringement. Regardless of balleballe11’s efforts to provide its Users with the Services of the highest quality, balleballe11 does not provide Users with any warranty or representation whatsoever regarding the quality, fitness for purpose, completeness, merchantability, non-infringement or accuracy of the Software, the Website and the Fantasy Cricket games. balleballe11 makes no warranty that its Software, Website, Games or Servers shall be uninterrupted, timely or error-free, that defects shall be corrected or that the features and Services provided therein shall be free from viruses or bugs of any kind. balleballe11 reserves the right to determine, at its sole discretion, whether it is responsible for any malfunction or disruption. balleballe11 reserves the right to limit your tournament/game participation or terminate your account in case it determines that you have intentionally caused such a malfunction or disruption. balleballe11 is not liable for any potential winnings from any unfinished tournaments or unfinished online Fantasy Cricket games.',
                          style: TextStyle(
                              fontSize: 14,
                              color: Colors.grey,
                              fontWeight: FontWeight.w500,
                              height: 1.8),
                        ),
                        const SizedBox(height: 20),
                        Text(
                          "Use of Software",
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                              fontWeight: FontWeight.w700),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          'Commercial use of our Software is strictly forbidden. Users are only allowed to use the Software for their personal entertainment. Under no circumstances shall Users be permitted to use their accounts on balleballe11.com for any purpose other than playing the Games for entertainment. Users may not attempt to modify, decompile, reverse-engineer or disassemble the Software in any way. The use of artificial intelligence including, without limitation, robots is strictly forbidden in connection with the Software and the Games. All actions taken in relation to Fantasy Cricket games by Users must be executed personally by Users using the user interface accessible through the Software.',
                          style: TextStyle(
                              fontSize: 14,
                              color: Colors.grey,
                              fontWeight: FontWeight.w500,
                              height: 1.8),
                        ),
                        const SizedBox(height: 20),
                        Text(
                          "Your Password, Your Responsibility",
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                              fontWeight: FontWeight.w700),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          "After you have registered on our Website, it is solely your responsibility to keep your password absolutely confidential. Make sure you do not share your password with anybody, be it your family, friends or anyone else. We are not responsible in any way if your user account is logged in or accessed by anybody else using your password.",
                          style: TextStyle(
                              fontSize: 14,
                              color: Colors.grey,
                              fontWeight: FontWeight.w500,
                              height: 1.8),
                        ),
                        const SizedBox(height: 20),
                        Text(
                          "Eligibility and Jurisdiction Policy",
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                              fontWeight: FontWeight.w700,
                              height: 1.8),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          "•   Our Contests are open only to persons aged 18 or older.",
                          style: TextStyle(
                              fontSize: 14,
                              color: Colors.grey,
                              fontWeight: FontWeight.w500,
                              height: 1.8),
                        ),
                        const SizedBox(height: 6),
                        Text(
                          "•   The Contests are open only to persons residing in India at the time of participation.",
                          style: TextStyle(
                              fontSize: 14,
                              color: Colors.grey,
                              fontWeight: FontWeight.w500,
                              height: 1.8),
                        ),
                        const SizedBox(height: 6),
                        Text(
                          "•   balleballe11 may, in accordance with the laws prevailing in certain Indian states, bar people who reside in certain Indian states from participating in any Contests. Currently people who reside in the Indian states of Assam, Andhra Pradesh, Odisha, Telangana, Nagaland or Sikkim may not participate in any paid or cash Contests, as the laws of these states bar their residents from participating in any online games where participants are required to pay to enter contests like Fantasy Cricket rooms.",
                          style: TextStyle(
                              fontSize: 14,
                              color: Colors.grey,
                              fontWeight: FontWeight.w500,
                              height: 1.8),
                        ),
                        const SizedBox(height: 6),
                        Text(
                          "•   Every person who wishes to participate in the Contests must have a valid email address.",
                          style: TextStyle(
                              fontSize: 14,
                              color: Colors.grey,
                              fontWeight: FontWeight.w500,
                              height: 1.8),
                        ),
                        const SizedBox(height: 6),
                        Text(
                          "•   Only those participants who have successfully registered on balleballe11.com as well as registered for a Contest prior to its each round in accordance with the rules outlined above shall be eligible to participate in the Contest and win prizes.",
                          style: TextStyle(
                              fontSize: 14,
                              color: Colors.grey,
                              fontWeight: FontWeight.w500,
                              height: 1.8),
                        ),
                        const SizedBox(height: 20),
                        Text(
                          "Breach and Consequences",
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                              fontWeight: FontWeight.w700),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          "In the event of breach of any of our Terms of Service, evidenced by our investigation, or if there is reasonable belief that your continued access to our Website is detrimental to the interests of balleballe11 Fantasy Cricket, our other Users or the general public, we may, at our sole discretion, take any or all of the following actions:",
                          style: TextStyle(
                              fontSize: 14,
                              color: Colors.grey,
                              fontWeight: FontWeight.w500,
                              height: 1.8),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              left: 10, right: 10, top: 20, bottom: 16),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "1.  Restrict games between users suspected of colluding or cheating;",
                                style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w500,
                                    height: 1.8),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 6.0, bottom: 6),
                                child: Text(
                                  "2.  Permanently freeze your user account on the Website;",
                                  style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.grey,
                                      fontWeight: FontWeight.w500,
                                      height: 1.8),
                                ),
                              ),
                              Text(
                                "3.  Seize the money in your user account;",
                                style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w500,
                                    height: 1.8),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 6.0, bottom: 6),
                                child: Text(
                                  "4.  Demand damages for breach and take appropriate civil action to recover such damages, and/or initiate prosecution for violations that amount to offences in law.",
                                  style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.grey,
                                      fontWeight: FontWeight.w500,
                                      height: 1.8),
                                ),
                              ),
                              Text(
                                "5.  Additionally, in the event of a material breach thereof, we reserve the right to bar you from future registration on the Website.",
                                style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w500,
                                    height: 1.8),
                              ),
                            ],
                          ),
                        ),
                        Text(
                          "The decision of balleballe11 Management on the action to be taken as a consequence of breach shall be final and binding on you. Any action taken by balleballe11 Fantasy Cricket platform shall be without prejudice to our other rights and remedies available in law or equity.",
                          style: TextStyle(
                              fontSize: 14,
                              color: Colors.grey,
                              fontWeight: FontWeight.w500,
                              height: 1.8),
                        ),
                        const SizedBox(height: 20),
                        Text(
                          "Governing Law, Dispute Resolution and Jurisdiction",
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                              fontWeight: FontWeight.w700,
                              height: 1.8),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          "This Agreement shall in all respects be governed and interpreted and construed in accordance with the laws of India. All disputes, differences, complaints, etc. shall be subject to arbitration under the Indian Arbitration and Conciliation Act, 1996.",
                          style: TextStyle(
                              fontSize: 14,
                              color: Colors.grey,
                              fontWeight: FontWeight.w500,
                              height: 1.8),
                        ),
                        const SizedBox(height: 20),
                        Text(
                          "Content",
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                              fontWeight: FontWeight.w700,
                              height: 1.8),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          'All content and material on the Website, including, but not limited to, information, images, marks, logos, designs, pictures, graphics, text content, hyperlinks, multimedia clips, animation, games and software (collectively referred to as "Content" hereinafter), whether or not belonging to balleballe11, are protected by applicable intellectual property laws. Additionally, all chat content, messages, images, recommendations, emails, images sent by any Users can be logged/recorded by us and shall form part of Content and balleballe11 Fantasy Cricket platform is free to use this material in any manner whatsoever.',
                          style: TextStyle(
                              fontSize: 14,
                              color: Colors.grey,
                              fontWeight: FontWeight.w500,
                              height: 1.8),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          'Our Website may contain information about or hyperlinks to third parties. In such cases, we are not in any way responsible for the content on such websites, and we do not provide any express or implied warranty of the accuracy, completeness, suitability or quality of the content belonging to such third-party websites. You may choose to rely on any third-party content (content that does not belong to balleballe11) posted on our Website solely at your own risk and liability.',
                          style: TextStyle(
                              fontSize: 14,
                              color: Colors.grey,
                              fontWeight: FontWeight.w500,
                              height: 1.8),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          'If you visit a third-party website through any third-party content posted on balleballe11.com, you will be subject to the terms and conditions applicable to that content. We neither control nor are we responsible for the content published on such third-party websites. The existence of a link to a third-party website on our Website is not in any way an endorsement of that website by us.',
                          style: TextStyle(
                              fontSize: 14,
                              color: Colors.grey,
                              fontWeight: FontWeight.w500,
                              height: 1.8),
                        ),
                        const SizedBox(height: 20),
                        Text(
                          "Contest Formats",
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                              fontWeight: FontWeight.w700,
                              height: 1.8),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          "•   balleballe11 Fantasy Cricket platform provides Contests in two separate formats: (1) as Public Contests where Users can participate in a Contest with other Users without any restriction on participation, and (2) Private Contests where Users can invite specific Users to a Contest and restrict participation to such invited Users. All rules applicable to Contests as set out herein shall be applicable to both formats of the Contests.",
                          style: TextStyle(
                              fontSize: 14,
                              color: Colors.grey,
                              fontWeight: FontWeight.w500,
                              height: 1.8),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          "•   Public Contests",
                          style: TextStyle(
                              fontSize: 14,
                              color: Colors.grey,
                              fontWeight: FontWeight.w500,
                              height: 1.8),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              left: 12, right: 10, top: 10, bottom: 30),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "•   In the Public Contest format, balleballe11 may offer Contests comprising 2 Participants, 3 Participants, 5 Participants, 10 Participants, 100 Participants, or any other pre-designated number of Participants.",
                                style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w500,
                                    height: 1.8),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 10.0, bottom: 20),
                                child: Text(
                                  "•   balleballe11 may offer this format of Contests as a paid format and the winner will be determined at the end of the round.",
                                  style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.grey,
                                      fontWeight: FontWeight.w500,
                                      height: 1.8),
                                ),
                              ),
                              Text(
                                "•   The number of Participants required to make a Contest operational will be pre-specified and once the number of Participants in such Contests equals the pre-specified number required for that Contest, the Contest shall be operational. In case the number of Participants is less than the pre-specified number at the pre-decided time of commencement of the round, such Contests shall not be operational and the Participation Fee paid by each Participant shall be credited back to the account of each User without any charge or deduction.",
                                style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w500,
                                    height: 1.8),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                '•   In certain Contests across balleballe11 Services, designated as "Confirmed Contests", the Contests shall become operational once the number of Participants in such Contests equals the pre-specified number of winners to be declared in such Contests, even if all the available Participant slots (as pre-specified in relation to the Contests) remain unfilled. It is clarified that notwithstanding the activation of such Contests, Participants can continue to join such Contests until (i) all the available Participant slots in such Contests are filled, or (ii) the rounds to which the Contests relate commence, whichever is earlier. In case such Contests are not operational by the time of the commencement of the round, the Participation Fee paid by each Participant shall be credited back to the account of such User(s) without any charge or deduction.',
                                style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w500,
                                    height: 1.8),
                              ),
                            ],
                          ),
                        ),
                        Text(
                          "Private contest",
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                              fontWeight: FontWeight.w700,
                              height: 1.8),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          '•   In the Private Contest format of the Contests, balleballe11 allows Users to create Fantasy Cricket contests ("Private Contests") and invite other users, whether existing Users or otherwise, ("Invited User") to create Teams and participate in the Contests. Users may create a Private Contest allowing the participation of a pre-specified number of Participants that is, 2 Participants, 3 Participants, 5 Participants or 10 Participants. The User creating a Private Contest shall submit the Participation Fee for the Private Contest, give a name to the Private Contest and join that Private Contest and be provided with a unique identification code (Fantasy League Code). The Fantasy League Code shall be issued to the account of the User creating the Contest. The User agrees that once a Private Contest is created, no change to the Terms or constitution of the Private Contest shall be permitted, except a change in the name of the Contest. The User creating the Private Contest shall provide balleballe11 with the email addresses or Facebook usernames of all the Invited Users to enable balleballe11 to send a message or email inviting such Invited Users to register on balleballe11.com (if necessary) and participate in the Private Contest to which they have been invited.',
                          style: TextStyle(
                              fontSize: 14,
                              color: Colors.grey,
                              fontWeight: FontWeight.w500,
                              height: 1.8),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          '•   In order to participate in a Private Contest, an Invited User shall input the Contest Code of the Private Contest and submit the Participation Fee for the Private Contest. Once the number of Participants in a Private Contest equals the number of pre-specified Participants for that Private Contest, the Private contest shall be rendered operative and no other Invited Users or other Users shall be permitted to participate in that Private Contest. In the event that a Private Contest does not get the pre-specified number of Participants for that Private Contest until 1 hour prior to the commencement of the round/Contest, the Participants of such Private Contest shall be provided with the option to convert the Private Contest into a Public Contest, and permit the participation of Users without the Contest Code. It is clarified that balleballe11 undertakes such conversion in a serialized manner and cannot and does not warrant that any Private Contest shall be converted into a Public Contest prior to the commencement of the round/Contest, or that any Users shall join such Contest to make it operational. In case the number of Participants in any Private Contest (or converted Contest) is less than the pre-specified number at the time of commencement of the round, such Contest shall not be operational and the Participation Fee paid by each User shall be credited back to the account of each User without any charge or deduction.',
                          style: TextStyle(
                              fontSize: 14,
                              color: Colors.grey,
                              fontWeight: FontWeight.w500,
                              height: 1.8),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          '•   It is clarified that the participation of Invited Users in any Private Contest is subject to the pre-specified number of Participants for that Private Contest, and balleballe11 Fantasy Cricket platform shall not be liable to anyone for the inability of any Invited User to participate in any Private Contest due to any reason whatsoever, including, without limitation, a hardware or technical malfunction or lack of eligibility of such Invited User to participate in the Contest.',
                          style: TextStyle(
                              fontSize: 14,
                              color: Colors.grey,
                              fontWeight: FontWeight.w500,
                              height: 1.8),
                        ),
                        const SizedBox(height: 20),
                        Text(
                          "Indemnity",
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                              fontWeight: FontWeight.w700),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          "To the extent permitted by law, and in consideration for being allowed to use our Services and participate in our Contests, you hereby agree to indemnify, save and hold harmless and defend us (to the extent of all benefits and awards, cost of litigation, disbursements and reasonable attorney's fees that we may incur in connection therewith including any direct, indirect or consequential losses, any loss of profit and loss of reputation) from any claims, actions, suits, taxes, damages, injuries, causes of action, penalties, interest, demands, expenses and/or awards asserted or brought against us by any person in connection with:",
                          style: TextStyle(
                              fontSize: 14,
                              color: Colors.grey,
                              fontWeight: FontWeight.w500,
                              height: 1.8),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              left: 10, right: 10, top: 20, bottom: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "1.  Infringement of their intellectual property rights by your publication of any Content on our Website;",
                                style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w500,
                                    height: 1.8),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 6.0, bottom: 6),
                                child: Text(
                                  "2.  defamatory, offensive or illegal conduct of any other player or for anything that turns out to be misleading, inaccurate, defamatory, threatening, obscene or otherwise illegal whether originating from another player or otherwise;",
                                  style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.grey,
                                      fontWeight: FontWeight.w500,
                                      height: 1.8),
                                ),
                              ),
                              Text(
                                "3.  Use, abuse or misuse of your user account on our online Fantasy Cricket Website in any manner whatsoever;",
                                style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w500,
                                    height: 1.8),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 6.0, bottom: 6),
                                child: Text(
                                  "4.  any disconnections, technical failures, system breakdowns, defects, delays, interruptions, manipulated or improper data transmission, loss or corruption of data or communication lines failure, distributed denial of service attacks, viruses or any other adverse technological occurrences arising in connection with your access to or use of our Website; and",
                                  style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.grey,
                                      fontWeight: FontWeight.w500,
                                      height: 1.8),
                                ),
                              ),
                              Text(
                                "5.  Access of your user account by any other person accessing the Services using your username or password, whether or not with your authorization.",
                                style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w500,
                                    height: 1.8),
                              ),
                            ],
                          ),
                        ),
                        Text(
                          "Governing Law and Jurisdiction",
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                              fontWeight: FontWeight.w700,
                              height: 1.8),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          "Our Terms of Service and Privacy Policy shall be interpreted in accordance with the laws of India. Any dispute, controversy or claim arising from our Terms of Service or Privacy Policy shall be subject to the exclusive jurisdiction of the civil courts at New Delhi.",
                          style: TextStyle(
                              fontSize: 14,
                              color: Colors.grey,
                              fontWeight: FontWeight.w500,
                              height: 1.8),
                        ),
                        const SizedBox(height: 20),
                        Text(
                          "Refund Policy",
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                              fontWeight: FontWeight.w700,
                              height: 1.8),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          "All deposits and purchases made and fees paid on balleballe11.com to play or in connection with Fantasy Cricket are final. All transactions are final. We recognize that customer satisfaction is extremely important to us, so only error-oriented transaction cases shall be reviewed.",
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
                          "balleballe11 reserves the right to cancel any matches for any reason, with or without disclosure of the reason, and refund all fees paid for such matches immediately by any and all users.",
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
                        const SizedBox(height: 20),
                        Text(
                          "Legality",
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                              fontWeight: FontWeight.w700,
                              height: 1.8),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          '•   Playing games of skill is legal as it is excluded from the ambit of Indian gambling legislations, including the Public Gambling Act of 1867.The Supreme Court of India, in the cases of State of Andhra Pradesh v. K Satyanarayana (AIR 1968 SC 825) and KR Lakshmanan v. State of Tamil Nadu (AIR 1996 SC 1153), has held that a game in which success depends predominantly upon the superior knowledge, training, attention, experience and adroitness of the player shall be classified as a game of skill.',
                          style: TextStyle(
                              fontSize: 14,
                              color: Colors.grey,
                              fontWeight: FontWeight.w500,
                              height: 1.8),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          "•   The Contents provided by balleballe11, described above, are games of skill as Participants’ success in the games depends primarily on their superior knowledge of the games of cricket and/or football and/or kabaddi statistics, knowledge of players' relative form, players' performance in a particular territory, conditions and/or format (such as ODIs, Test Cricket and Twenty20 in the cricket fantasy game), attention and dedication to the Contests in which they are participating and adroitness in playing the Contests. The Contests also require Participants to field well-balanced sides with limited resources and make substitutions at appropriate times to gain the maximum points.",
                          style: TextStyle(
                              fontSize: 14,
                              color: Colors.grey,
                              fontWeight: FontWeight.w500,
                              height: 1.8),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          '•   By participating in our Contests, each Participant acknowledges and agrees that he/she is participating in a game of skill, not chance.',
                          style: TextStyle(
                              fontSize: 14,
                              color: Colors.grey,
                              fontWeight: FontWeight.w500,
                              height: 1.8),
                        ),
                        const SizedBox(height: 20),
                        Text(
                          "Fantasy Score and Feeds",
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                              fontWeight: FontWeight.w700,
                              height: 1.8),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          'balleballe11 Fantasy Cricket platform may obtain the score feed and other information required for the computation and tabulation of score points from third party service provider(s). In the rare event that any error in the computation or tabulation of score points, selection of winners, etc. as a result of inaccuracy or incompleteness of the feed provided by the third-party service provider comes to its attention, balleballe11.com shall make best efforts to rectify such error prior to the distribution of prizes. However, balleballe11.com hereby clarifies that it relies on the accuracy and completeness of such third party score/statistic feeds and does not itself warrant or make any representations concerning the accuracy thereof and, in any event, shall take no responsibility for inaccuracies in computation and tabulation of score points or the selection of winners as a result of any inaccurate or incomplete scores/statistics received from such third party service providers. Users and Participants agree not to make any claim or raise any complaint against balleballe11 in this respect.',
                          style: TextStyle(
                              fontSize: 14,
                              color: Colors.grey,
                              fontWeight: FontWeight.w500,
                              height: 1.8),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          "In Starting Line-up Feature: Purpose of indicating a player's inclusion in final starting line-up is only to provide information and assist a user in selecting his/her team on balleballe11. While indicating a Player's inclusion in starting line-up is given by balleballe11 on the basis of information/data received through feed providers, publicly available information. Users are advised to do a thorough research of their own from official sources and/or other available sources of information. balleballe11, shall not take any liability, if a player earlier indicated as 'Playing' does not play or start for any reason whatsoever.",
                          style: TextStyle(
                              fontSize: 14,
                              color: Colors.grey,
                              fontWeight: FontWeight.w500,
                              height: 1.8),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          'Bonuses: The following conditions apply to all the Fantasy Cricket Bonuses and Promotions/Offers (Instant Bonus, Friend Referral Bonus, Free Bonus, Earnings Bonus) on www.balleballe11.com and all Users who receive a Bonus or Promotion amount are bound by them:',
                          style: TextStyle(
                              fontSize: 14,
                              color: Colors.grey,
                              fontWeight: FontWeight.w500,
                              height: 1.8),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          'Free Bonus: This is a bonus that first goes into your Bonus account and then gradually from your Bonus Account to your Balance Account as you join game rooms and pay the match fee. The bonus is released at 4% of the Match Fee for every Fantasy Cricket room you join, pay the match fee and stand a winner or loser in the game, i.e. the game finishes.',
                          style: TextStyle(
                              fontSize: 14,
                              color: Colors.grey,
                              fontWeight: FontWeight.w500,
                              height: 1.8),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          "Instant/Deposit Bonus: This is a bonus you get instantly. On every deposit, the full bonus is added to your Account Balance right away and you can actually play with it all. In 'Slow Bonus' you only get the predefined % of your bonus on the match fee for every Fantasy Cricket game room you join, so its slower.",
                          style: TextStyle(
                              fontSize: 14,
                              color: Colors.grey,
                              fontWeight: FontWeight.w500,
                              height: 1.8),
                        ),
                        Text(
                          'Friend Referral Bonus: This bonus is like an instant bonus. For every friend you refer who plays a cash game on balleballe11.com (deposits money, joins and wins or loses in a cash game room), we give you an Instant Bonus for referring that friend.',
                          style: TextStyle(
                              fontSize: 14,
                              color: Colors.grey,
                              fontWeight: FontWeight.w500,
                              height: 1.8),
                        ),
                        Text(
                          'Free Money Prize: This is an offer that allows you to play a game without paying any entry fee at all but you can win a cash prize in this room. For example, you can join a Rs. 500 prize room with no entry fee and win the cash prize.',
                          style: TextStyle(
                              fontSize: 14,
                              color: Colors.grey,
                              fontWeight: FontWeight.w500,
                              height: 1.8),
                        ),
                        const SizedBox(height: 20),
                        Text(
                          "Bonuses & Terms and Conditions",
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                              fontWeight: FontWeight.w700,
                              height: 1.8),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          "Deposit Bonuses are added to this bucket",
                          style: TextStyle(
                              fontSize: 14,
                              color: Colors.grey,
                              fontWeight: FontWeight.w500,
                              height: 1.8),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          "Promotional winnings (Winnings at Freeroll contests) are added to this bucket",
                          style: TextStyle(
                              fontSize: 14,
                              color: Colors.grey,
                              fontWeight: FontWeight.w500,
                              height: 1.8),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          "The Sign-up Bonus and Referral Bonuses, are added to this bucket once user makes a minimum deposit of Rs.100",
                          style: TextStyle(
                              fontSize: 14,
                              color: Colors.grey,
                              fontWeight: FontWeight.w500,
                              height: 1.8),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          "The user cannot join Private Contests using this cash amount",
                          style: TextStyle(
                              fontSize: 14,
                              color: Colors.grey,
                              fontWeight: FontWeight.w500,
                              height: 1.8),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          "The user cannot withdraw cash from this bucket",
                          style: TextStyle(
                              fontSize: 14,
                              color: Colors.grey,
                              fontWeight: FontWeight.w500,
                              height: 1.8),
                        ),
                        const SizedBox(height: 20),
                        Text(
                          "Score",
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                              fontWeight: FontWeight.w700,
                              height: 1.8),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          "This is moved to Winnings/Withdrawable bucket only when the user converts to a cash player (Deposits cash & play a cash game)",
                          style: TextStyle(
                              fontSize: 14,
                              color: Colors.grey,
                              fontWeight: FontWeight.w500,
                              height: 1.8),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          "Playable bonus and Locked bonus (If any) given to the user if not utilized within 15 days from the day of disbursement will be expired.",
                          style: TextStyle(
                              fontSize: 14,
                              color: Colors.grey,
                              fontWeight: FontWeight.w500,
                              height: 1.8),
                        ),
                        const SizedBox(height: 20),
                        Text(
                          "Prizes: Terms and Conditions",
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                              fontWeight: FontWeight.w700,
                              height: 1.8),
                        ),
                        const SizedBox(height: 10),
                        Padding(
                          padding: EdgeInsets.only(left: 12, right: 12),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "1.   A User can win only one prize in a day.",
                                style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w500,
                                    height: 1.8),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 6, bottom: 6),
                                child: Text(
                                  "2.   balleballe11 will email all winners to notify them 24 hours after the match ends.",
                                  style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.grey,
                                      fontWeight: FontWeight.w500,
                                      height: 1.8),
                                ),
                              ),
                              Text(
                                "3.   In the scenario of a User winning multiple prize rooms in a day, the User will win the prize for the first room that he/she joined on that particular day. The Users with the second-highest points in the other game rooms will win the prizes.",
                                style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w500,
                                    height: 1.8),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 6, bottom: 6),
                                child: Text(
                                  "4.   Every User is allowed only one entry in any Free Entry-based Prize Money or Prize Item room. You are not allowed to enter our Fantasy Cricket rooms using multiple accounts.",
                                  style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.grey,
                                      fontWeight: FontWeight.w500,
                                      height: 1.8),
                                ),
                              ),
                              Text(
                                "5.   Freight and shipping charges and customs duties on all prizes shall be borne by the winners.",
                                style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w500,
                                    height: 1.8),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 6, bottom: 6),
                                child: Text(
                                  "6.   All prizes shall be subject to tax deduction (TDS) as per the Income Tax Act 1961. Winners will be provided TDS certificates in respect of such tax deductions. Winners shall be responsible for payment of any other applicable taxes, including, but not limited to, the income tax and gift tax in respect of the prize money.",
                                  style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.grey,
                                      fontWeight: FontWeight.w500,
                                      height: 1.8),
                                ),
                              ),
                              Text(
                                "7.   By downloading and/or using the licensed balleballe11 application, you acknowledge and agree to the following:",
                                style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w500,
                                    height: 1.8),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 6, left: 17),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "•   balleballe11, its subsidiaries and all group companies that collectively come under the name balleballe11 are in no way responsible for the application and the content within. Also, your use of this application and Website is limited to a non-transferable personal use.",
                                      style: TextStyle(
                                          fontSize: 14,
                                          color: Colors.grey,
                                          fontWeight: FontWeight.w500,
                                          height: 1.8),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 6.0, bottom: 6),
                                      child: Text(
                                        "•   balleballe11 has no obligation of warranty with respect to the Website or Content on it. All claims, liabilities, losses, damages, costs and/or expenses that occur because of using balleballe11 Products, Services, Website or the Content on it are the sole responsibility of the User. balleballe11 is not responsible to address claims relating to the Website and/or your use of the Website or the Products and Services available on it.",
                                        style: TextStyle(
                                            fontSize: 14,
                                            color: Colors.grey,
                                            fontWeight: FontWeight.w500,
                                            height: 1.8),
                                      ),
                                    ),
                                    Text(
                                      "•   balleballe11 is not responsible for any third-party infringement claims that your possession and/or use of any third-party's intellectual property infringes intellectual property rights.",
                                      style: TextStyle(
                                          fontSize: 14,
                                          color: Colors.grey,
                                          fontWeight: FontWeight.w500,
                                          height: 1.8),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 6, bottom: 6),
                                child: Text(
                                  "8.   We allow people from all the states and union territories of India, except Assam, Andhra Pradesh, Tamil Nadu , Odisha, Telangana, Nagaland and Sikkim, to play Fantasy Cricket games on balleballe11.",
                                  style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.grey,
                                      fontWeight: FontWeight.w500,
                                      height: 1.8),
                                ),
                              ),
                              Text(
                                "9.   All the standard terms and conditions of balleballe11 apply.",
                                style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w500,
                                    height: 1.8),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 6, bottom: 12),
                                child: Text(
                                  "10.   The decision of balleballe11 Management shall be final and binding in case of any dispute.",
                                  style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.grey,
                                      fontWeight: FontWeight.w500,
                                      height: 1.8),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Footer(),
                ]),

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
                            "Terms and conditions",
                            style: TextStyle(
                                fontSize: 24,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(height: 25),
                          Text(
                            "Agreement",
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                                fontWeight: FontWeight.w700),
                          ),
                          const SizedBox(height: 10),
                          Text(
                            "We advise you to read our Terms of Service carefully and understand them well. All the clauses in the Terms of Service of balleballe11 are delineated below and included in the medium of reference that can be accessed by clicking on the related links. You should make sure that you have read and understood our Agreement, including our Terms of Service, well before becoming a member of balleballe11. By registering on balleballe11, you agree to follow our Terms of Service, Privacy Policy and Game Rules. You are completely bound by our Agreement in any instance when you choose to use our Services or Games or software. We reserve the right to modify and amend our Terms of Service at any time. When we make any changes to our Terms of Service, we shall inform you about the revisions by sending you a notice at your email address registered with us. We shall also update such changes on our Website. We may make changes to our Terms of Service in order to review or change any of our Policies and Game Rules. If you do not agree to the changes made, you may cease your use of our Services of online Fantasy Cricket games by informing us that you have deleted your account. If you continue to use our Services after any amendments or changes, it shall be assumed that you have accepted the changes made in the Agreement and you agree to our new Terms.",
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.grey,
                                fontWeight: FontWeight.w500,
                                height: 1.8),
                          ),
                          const SizedBox(height: 20),
                          Text(
                            "Warranty",
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                                fontWeight: FontWeight.w700),
                          ),
                          const SizedBox(height: 10),
                          Text(
                            'balleballe11 aims to provide information that is accurate, complete, and reliable at the time of publishing or posting it. However, balleballe11 makes no representations about the correctness, completeness or suitability of any information published on its Website or contained in its documents. All the information and related graphics are provided on an "as is" basis without warranty of any kind, express or implied. balleballe11 hereby disclaims all warranties with regard to such information, including all implied warranties and conditions of merchantability, fitness for a particular purpose, title and non-infringement. Regardless of balleballe11’s efforts to provide its Users with the Services of the highest quality, balleballe11 does not provide Users with any warranty or representation whatsoever regarding the quality, fitness for purpose, completeness, merchantability, non-infringement or accuracy of the Software, the Website and the Fantasy Cricket games. balleballe11 makes no warranty that its Software, Website, Games or Servers shall be uninterrupted, timely or error-free, that defects shall be corrected or that the features and Services provided therein shall be free from viruses or bugs of any kind. balleballe11 reserves the right to determine, at its sole discretion, whether it is responsible for any malfunction or disruption. balleballe11 reserves the right to limit your tournament/game participation or terminate your account in case it determines that you have intentionally caused such a malfunction or disruption. balleballe11 is not liable for any potential winnings from any unfinished tournaments or unfinished online Fantasy Cricket games.',
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.grey,
                                fontWeight: FontWeight.w500,
                                height: 1.8),
                          ),
                          const SizedBox(height: 20),
                          Text(
                            "Use of Software",
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                                fontWeight: FontWeight.w700),
                          ),
                          const SizedBox(height: 10),
                          Text(
                            'Commercial use of our Software is strictly forbidden. Users are only allowed to use the Software for their personal entertainment. Under no circumstances shall Users be permitted to use their accounts on balleballe11.com for any purpose other than playing the Games for entertainment. Users may not attempt to modify, decompile, reverse-engineer or disassemble the Software in any way. The use of artificial intelligence including, without limitation, robots is strictly forbidden in connection with the Software and the Games. All actions taken in relation to Fantasy Cricket games by Users must be executed personally by Users using the user interface accessible through the Software.',
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.grey,
                                fontWeight: FontWeight.w500,
                                height: 1.8),
                          ),
                          const SizedBox(height: 20),
                          Text(
                            "Your Password, Your Responsibility",
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                                fontWeight: FontWeight.w700),
                          ),
                          const SizedBox(height: 10),
                          Text(
                            "After you have registered on our Website, it is solely your responsibility to keep your password absolutely confidential. Make sure you do not share your password with anybody, be it your family, friends or anyone else. We are not responsible in any way if your user account is logged in or accessed by anybody else using your password.",
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.grey,
                                fontWeight: FontWeight.w500,
                                height: 1.8),
                          ),
                          const SizedBox(height: 20),
                          Text(
                            "Eligibility and Jurisdiction Policy",
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                                fontWeight: FontWeight.w700,
                                height: 1.8),
                          ),
                          const SizedBox(height: 10),
                          Text(
                            "•   Our Contests are open only to persons aged 18 or older.",
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.grey,
                                fontWeight: FontWeight.w500,
                                height: 1.8),
                          ),
                          const SizedBox(height: 6),
                          Text(
                            "•   The Contests are open only to persons residing in India at the time of participation.",
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.grey,
                                fontWeight: FontWeight.w500,
                                height: 1.8),
                          ),
                          const SizedBox(height: 6),
                          Text(
                            "•   balleballe11 may, in accordance with the laws prevailing in certain Indian states, bar people who reside in certain Indian states from participating in any Contests. Currently people who reside in the Indian states of Assam, Andhra Pradesh, Odisha, Telangana, Nagaland or Sikkim may not participate in any paid or cash Contests, as the laws of these states bar their residents from participating in any online games where participants are required to pay to enter contests like Fantasy Cricket rooms.",
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.grey,
                                fontWeight: FontWeight.w500,
                                height: 1.8),
                          ),
                          const SizedBox(height: 6),
                          Text(
                            "•   Every person who wishes to participate in the Contests must have a valid email address.",
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.grey,
                                fontWeight: FontWeight.w500,
                                height: 1.8),
                          ),
                          const SizedBox(height: 6),
                          Text(
                            "•   Only those participants who have successfully registered on balleballe11.com as well as registered for a Contest prior to its each round in accordance with the rules outlined above shall be eligible to participate in the Contest and win prizes.",
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.grey,
                                fontWeight: FontWeight.w500,
                                height: 1.8),
                          ),
                          const SizedBox(height: 20),
                          Text(
                            "Breach and Consequences",
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                                fontWeight: FontWeight.w700),
                          ),
                          const SizedBox(height: 10),
                          Text(
                            "In the event of breach of any of our Terms of Service, evidenced by our investigation, or if there is reasonable belief that your continued access to our Website is detrimental to the interests of balleballe11 Fantasy Cricket, our other Users or the general public, we may, at our sole discretion, take any or all of the following actions:",
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.grey,
                                fontWeight: FontWeight.w500,
                                height: 1.8),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                                left: 10, right: 10, top: 20, bottom: 16),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "1.  Restrict games between users suspected of colluding or cheating;",
                                  style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.grey,
                                      fontWeight: FontWeight.w500,
                                      height: 1.8),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 6.0, bottom: 6),
                                  child: Text(
                                    "2.  Permanently freeze your user account on the Website;",
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.grey,
                                        fontWeight: FontWeight.w500,
                                        height: 1.8),
                                  ),
                                ),
                                Text(
                                  "3.  Seize the money in your user account;",
                                  style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.grey,
                                      fontWeight: FontWeight.w500,
                                      height: 1.8),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 6.0, bottom: 6),
                                  child: Text(
                                    "4.  Demand damages for breach and take appropriate civil action to recover such damages, and/or initiate prosecution for violations that amount to offences in law.",
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.grey,
                                        fontWeight: FontWeight.w500,
                                        height: 1.8),
                                  ),
                                ),
                                Text(
                                  "5.  Additionally, in the event of a material breach thereof, we reserve the right to bar you from future registration on the Website.",
                                  style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.grey,
                                      fontWeight: FontWeight.w500,
                                      height: 1.8),
                                ),
                              ],
                            ),
                          ),

                          Text(
                            "The decision of balleballe11 Management on the action to be taken as a consequence of breach shall be final and binding on you. Any action taken by balleballe11 Fantasy Cricket platform shall be without prejudice to our other rights and remedies available in law or equity.",
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.grey,
                                fontWeight: FontWeight.w500,
                                height: 1.8),
                          ),
                          const SizedBox(height: 20),
                          Text(
                            "Governing Law, Dispute Resolution and Jurisdiction",
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                                fontWeight: FontWeight.w700,
                                height: 1.8),
                          ),
                          const SizedBox(height: 10),
                          Text(
                            "This Agreement shall in all respects be governed and interpreted and construed in accordance with the laws of India. All disputes, differences, complaints, etc. shall be subject to arbitration under the Indian Arbitration and Conciliation Act, 1996.",
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.grey,
                                fontWeight: FontWeight.w500,
                                height: 1.8),
                          ),
                          const SizedBox(height: 20),
                          Text(
                            "Content",
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                                fontWeight: FontWeight.w700,
                                height: 1.8),
                          ),
                          const SizedBox(height: 10),
                          Text(
                            'All content and material on the Website, including, but not limited to, information, images, marks, logos, designs, pictures, graphics, text content, hyperlinks, multimedia clips, animation, games and software (collectively referred to as "Content" hereinafter), whether or not belonging to balleballe11, are protected by applicable intellectual property laws. Additionally, all chat content, messages, images, recommendations, emails, images sent by any Users can be logged/recorded by us and shall form part of Content and balleballe11 Fantasy Cricket platform is free to use this material in any manner whatsoever.',
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.grey,
                                fontWeight: FontWeight.w500,
                                height: 1.8),
                          ),
                          const SizedBox(height: 10),
                          Text(
                            'Our Website may contain information about or hyperlinks to third parties. In such cases, we are not in any way responsible for the content on such websites, and we do not provide any express or implied warranty of the accuracy, completeness, suitability or quality of the content belonging to such third-party websites. You may choose to rely on any third-party content (content that does not belong to balleballe11) posted on our Website solely at your own risk and liability.',
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.grey,
                                fontWeight: FontWeight.w500,
                                height: 1.8),
                          ),
                          const SizedBox(height: 10),
                          Text(
                            'If you visit a third-party website through any third-party content posted on balleballe11.com, you will be subject to the terms and conditions applicable to that content. We neither control nor are we responsible for the content published on such third-party websites. The existence of a link to a third-party website on our Website is not in any way an endorsement of that website by us.',
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.grey,
                                fontWeight: FontWeight.w500,
                                height: 1.8),
                          ),
                          const SizedBox(height: 20),
                          Text(
                            "Contest Formats",
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                                fontWeight: FontWeight.w700,
                                height: 1.8),
                          ),
                          const SizedBox(height: 10),
                          Text(
                            "•   balleballe11 Fantasy Cricket platform provides Contests in two separate formats: (1) as Public Contests where Users can participate in a Contest with other Users without any restriction on participation, and (2) Private Contests where Users can invite specific Users to a Contest and restrict participation to such invited Users. All rules applicable to Contests as set out herein shall be applicable to both formats of the Contests.",
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.grey,
                                fontWeight: FontWeight.w500,
                                height: 1.8),
                          ),
                          const SizedBox(height: 10),
                          Text(
                            "•   Public Contests",
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.grey,
                                fontWeight: FontWeight.w500,
                                height: 1.8),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                                left: 12, right: 10, top: 10, bottom: 30),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "•   In the Public Contest format, balleballe11 may offer Contests comprising 2 Participants, 3 Participants, 5 Participants, 10 Participants, 100 Participants, or any other pre-designated number of Participants.",
                                  style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.grey,
                                      fontWeight: FontWeight.w500,
                                      height: 1.8),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 10.0, bottom: 20),
                                  child: Text(
                                    "•   balleballe11 may offer this format of Contests as a paid format and the winner will be determined at the end of the round.",
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.grey,
                                        fontWeight: FontWeight.w500,
                                        height: 1.8),
                                  ),
                                ),
                                Text(
                                  "•   The number of Participants required to make a Contest operational will be pre-specified and once the number of Participants in such Contests equals the pre-specified number required for that Contest, the Contest shall be operational. In case the number of Participants is less than the pre-specified number at the pre-decided time of commencement of the round, such Contests shall not be operational and the Participation Fee paid by each Participant shall be credited back to the account of each User without any charge or deduction.",
                                  style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.grey,
                                      fontWeight: FontWeight.w500,
                                      height: 1.8),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  '•   In certain Contests across balleballe11 Services, designated as "Confirmed Contests", the Contests shall become operational once the number of Participants in such Contests equals the pre-specified number of winners to be declared in such Contests, even if all the available Participant slots (as pre-specified in relation to the Contests) remain unfilled. It is clarified that notwithstanding the activation of such Contests, Participants can continue to join such Contests until (i) all the available Participant slots in such Contests are filled, or (ii) the rounds to which the Contests relate commence, whichever is earlier. In case such Contests are not operational by the time of the commencement of the round, the Participation Fee paid by each Participant shall be credited back to the account of such User(s) without any charge or deduction.',
                                  style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.grey,
                                      fontWeight: FontWeight.w500,
                                      height: 1.8),
                                ),
                              ],
                            ),
                          ),

                          Text(
                            "Private contest",
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                                fontWeight: FontWeight.w700,
                                height: 1.8),
                          ),
                          const SizedBox(height: 10),
                          Text(
                            '•   In the Private Contest format of the Contests, balleballe11 allows Users to create Fantasy Cricket contests ("Private Contests") and invite other users, whether existing Users or otherwise, ("Invited User") to create Teams and participate in the Contests. Users may create a Private Contest allowing the participation of a pre-specified number of Participants that is, 2 Participants, 3 Participants, 5 Participants or 10 Participants. The User creating a Private Contest shall submit the Participation Fee for the Private Contest, give a name to the Private Contest and join that Private Contest and be provided with a unique identification code (Fantasy League Code). The Fantasy League Code shall be issued to the account of the User creating the Contest. The User agrees that once a Private Contest is created, no change to the Terms or constitution of the Private Contest shall be permitted, except a change in the name of the Contest. The User creating the Private Contest shall provide balleballe11 with the email addresses or Facebook usernames of all the Invited Users to enable balleballe11 to send a message or email inviting such Invited Users to register on balleballe11.com (if necessary) and participate in the Private Contest to which they have been invited.',
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.grey,
                                fontWeight: FontWeight.w500,
                                height: 1.8),
                          ),
                          const SizedBox(height: 10),
                          Text(
                            '•   In order to participate in a Private Contest, an Invited User shall input the Contest Code of the Private Contest and submit the Participation Fee for the Private Contest. Once the number of Participants in a Private Contest equals the number of pre-specified Participants for that Private Contest, the Private contest shall be rendered operative and no other Invited Users or other Users shall be permitted to participate in that Private Contest. In the event that a Private Contest does not get the pre-specified number of Participants for that Private Contest until 1 hour prior to the commencement of the round/Contest, the Participants of such Private Contest shall be provided with the option to convert the Private Contest into a Public Contest, and permit the participation of Users without the Contest Code. It is clarified that balleballe11 undertakes such conversion in a serialized manner and cannot and does not warrant that any Private Contest shall be converted into a Public Contest prior to the commencement of the round/Contest, or that any Users shall join such Contest to make it operational. In case the number of Participants in any Private Contest (or converted Contest) is less than the pre-specified number at the time of commencement of the round, such Contest shall not be operational and the Participation Fee paid by each User shall be credited back to the account of each User without any charge or deduction.',
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.grey,
                                fontWeight: FontWeight.w500,
                                height: 1.8),
                          ),
                          const SizedBox(height: 10),
                          Text(
                            '•   It is clarified that the participation of Invited Users in any Private Contest is subject to the pre-specified number of Participants for that Private Contest, and balleballe11 Fantasy Cricket platform shall not be liable to anyone for the inability of any Invited User to participate in any Private Contest due to any reason whatsoever, including, without limitation, a hardware or technical malfunction or lack of eligibility of such Invited User to participate in the Contest.',
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.grey,
                                fontWeight: FontWeight.w500,
                                height: 1.8),
                          ),
                          const SizedBox(height: 20),
                          Text(
                            "Indemnity",
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                                fontWeight: FontWeight.w700),
                          ),
                          const SizedBox(height: 10),
                          Text(
                            "To the extent permitted by law, and in consideration for being allowed to use our Services and participate in our Contests, you hereby agree to indemnify, save and hold harmless and defend us (to the extent of all benefits and awards, cost of litigation, disbursements and reasonable attorney's fees that we may incur in connection therewith including any direct, indirect or consequential losses, any loss of profit and loss of reputation) from any claims, actions, suits, taxes, damages, injuries, causes of action, penalties, interest, demands, expenses and/or awards asserted or brought against us by any person in connection with:",
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.grey,
                                fontWeight: FontWeight.w500,
                                height: 1.8),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                                left: 10, right: 10, top: 20, bottom: 20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "1.  Infringement of their intellectual property rights by your publication of any Content on our Website;",
                                  style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.grey,
                                      fontWeight: FontWeight.w500,
                                      height: 1.8),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 6.0, bottom: 6),
                                  child: Text(
                                    "2.  defamatory, offensive or illegal conduct of any other player or for anything that turns out to be misleading, inaccurate, defamatory, threatening, obscene or otherwise illegal whether originating from another player or otherwise;",
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.grey,
                                        fontWeight: FontWeight.w500,
                                        height: 1.8),
                                  ),
                                ),
                                Text(
                                  "3.  Use, abuse or misuse of your user account on our online Fantasy Cricket Website in any manner whatsoever;",
                                  style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.grey,
                                      fontWeight: FontWeight.w500,
                                      height: 1.8),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 6.0, bottom: 6),
                                  child: Text(
                                    "4.  any disconnections, technical failures, system breakdowns, defects, delays, interruptions, manipulated or improper data transmission, loss or corruption of data or communication lines failure, distributed denial of service attacks, viruses or any other adverse technological occurrences arising in connection with your access to or use of our Website; and",
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.grey,
                                        fontWeight: FontWeight.w500,
                                        height: 1.8),
                                  ),
                                ),
                                Text(
                                  "5.  Access of your user account by any other person accessing the Services using your username or password, whether or not with your authorization.",
                                  style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.grey,
                                      fontWeight: FontWeight.w500,
                                      height: 1.8),
                                ),
                              ],
                            ),
                          ),
                          Text(
                            "Governing Law and Jurisdiction",
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                                fontWeight: FontWeight.w700,
                                height: 1.8),
                          ),
                          const SizedBox(height: 10),
                          Text(
                            "Our Terms of Service and Privacy Policy shall be interpreted in accordance with the laws of India. Any dispute, controversy or claim arising from our Terms of Service or Privacy Policy shall be subject to the exclusive jurisdiction of the civil courts at New Delhi.",
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.grey,
                                fontWeight: FontWeight.w500,
                                height: 1.8),
                          ),
                          const SizedBox(height: 20),
                          Text(
                            "Refund Policy",
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                                fontWeight: FontWeight.w700,
                                height: 1.8),
                          ),
                          const SizedBox(height: 10),
                          Text(
                            "All deposits and purchases made and fees paid on balleballe11.com to play or in connection with Fantasy Cricket are final. All transactions are final. We recognize that customer satisfaction is extremely important to us, so only error-oriented transaction cases shall be reviewed.",
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
                            "balleballe11 reserves the right to cancel any matches for any reason, with or without disclosure of the reason, and refund all fees paid for such matches immediately by any and all users.",
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
                          const SizedBox(height: 20),
                          Text(
                            "Legality",
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                                fontWeight: FontWeight.w700,
                                height: 1.8),
                          ),
                          const SizedBox(height: 10),
                          Text(
                            '•   Playing games of skill is legal as it is excluded from the ambit of Indian gambling legislations, including the Public Gambling Act of 1867.The Supreme Court of India, in the cases of State of Andhra Pradesh v. K Satyanarayana (AIR 1968 SC 825) and KR Lakshmanan v. State of Tamil Nadu (AIR 1996 SC 1153), has held that a game in which success depends predominantly upon the superior knowledge, training, attention, experience and adroitness of the player shall be classified as a game of skill.',
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.grey,
                                fontWeight: FontWeight.w500,
                                height: 1.8),
                          ),
                          const SizedBox(height: 10),
                          Text(
                            "•   The Contents provided by balleballe11, described above, are games of skill as Participants’ success in the games depends primarily on their superior knowledge of the games of cricket and/or football and/or kabaddi statistics, knowledge of players' relative form, players' performance in a particular territory, conditions and/or format (such as ODIs, Test Cricket and Twenty20 in the cricket fantasy game), attention and dedication to the Contests in which they are participating and adroitness in playing the Contests. The Contests also require Participants to field well-balanced sides with limited resources and make substitutions at appropriate times to gain the maximum points.",
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.grey,
                                fontWeight: FontWeight.w500,
                                height: 1.8),
                          ),
                          const SizedBox(height: 10),
                          Text(
                            '•   By participating in our Contests, each Participant acknowledges and agrees that he/she is participating in a game of skill, not chance.',
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.grey,
                                fontWeight: FontWeight.w500,
                                height: 1.8),
                          ),
                          const SizedBox(height: 20),
                          Text(
                            "Fantasy Score and Feeds",
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                                fontWeight: FontWeight.w700,
                                height: 1.8),
                          ),
                          const SizedBox(height: 10),
                          Text(
                            'balleballe11 Fantasy Cricket platform may obtain the score feed and other information required for the computation and tabulation of score points from third party service provider(s). In the rare event that any error in the computation or tabulation of score points, selection of winners, etc. as a result of inaccuracy or incompleteness of the feed provided by the third-party service provider comes to its attention, balleballe11.com shall make best efforts to rectify such error prior to the distribution of prizes. However, balleballe11.com hereby clarifies that it relies on the accuracy and completeness of such third party score/statistic feeds and does not itself warrant or make any representations concerning the accuracy thereof and, in any event, shall take no responsibility for inaccuracies in computation and tabulation of score points or the selection of winners as a result of any inaccurate or incomplete scores/statistics received from such third party service providers. Users and Participants agree not to make any claim or raise any complaint against balleballe11 in this respect.',
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.grey,
                                fontWeight: FontWeight.w500,
                                height: 1.8),
                          ),
                          const SizedBox(height: 10),
                          Text(
                            "In Starting Line-up Feature: Purpose of indicating a player's inclusion in final starting line-up is only to provide information and assist a user in selecting his/her team on balleballe11. While indicating a Player's inclusion in starting line-up is given by balleballe11 on the basis of information/data received through feed providers, publicly available information. Users are advised to do a thorough research of their own from official sources and/or other available sources of information. balleballe11, shall not take any liability, if a player earlier indicated as 'Playing' does not play or start for any reason whatsoever.",
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.grey,
                                fontWeight: FontWeight.w500,
                                height: 1.8),
                          ),
                          const SizedBox(height: 10),
                          Text(
                            'Bonuses: The following conditions apply to all the Fantasy Cricket Bonuses and Promotions/Offers (Instant Bonus, Friend Referral Bonus, Free Bonus, Earnings Bonus) on www.balleballe11.com and all Users who receive a Bonus or Promotion amount are bound by them:',
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.grey,
                                fontWeight: FontWeight.w500,
                                height: 1.8),
                          ),
                          const SizedBox(height: 10),
                          Text(
                            'Free Bonus: This is a bonus that first goes into your Bonus account and then gradually from your Bonus Account to your Balance Account as you join game rooms and pay the match fee. The bonus is released at 4% of the Match Fee for every Fantasy Cricket room you join, pay the match fee and stand a winner or loser in the game, i.e. the game finishes.',
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.grey,
                                fontWeight: FontWeight.w500,
                                height: 1.8),
                          ),
                          const SizedBox(height: 10),
                          Text(
                            "Instant/Deposit Bonus: This is a bonus you get instantly. On every deposit, the full bonus is added to your Account Balance right away and you can actually play with it all. In 'Slow Bonus' you only get the predefined % of your bonus on the match fee for every Fantasy Cricket game room you join, so its slower.",
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.grey,
                                fontWeight: FontWeight.w500,
                                height: 1.8),
                          ),
                          Text(
                            'Friend Referral Bonus: This bonus is like an instant bonus. For every friend you refer who plays a cash game on balleballe11.com (deposits money, joins and wins or loses in a cash game room), we give you an Instant Bonus for referring that friend.',
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.grey,
                                fontWeight: FontWeight.w500,
                                height: 1.8),
                          ),
                          Text(
                            'Free Money Prize: This is an offer that allows you to play a game without paying any entry fee at all but you can win a cash prize in this room. For example, you can join a Rs. 500 prize room with no entry fee and win the cash prize.',
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.grey,
                                fontWeight: FontWeight.w500,
                                height: 1.8),
                          ),
                          const SizedBox(height: 20),
                          Text(
                            "Bonuses & Terms and Conditions",
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                                fontWeight: FontWeight.w700,
                                height: 1.8),
                          ),
                          const SizedBox(height: 10),
                          Text(
                            "Deposit Bonuses are added to this bucket",
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.grey,
                                fontWeight: FontWeight.w500,
                                height: 1.8),
                          ),
                          const SizedBox(height: 10),
                          Text(
                            "Promotional winnings (Winnings at Freeroll contests) are added to this bucket",
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.grey,
                                fontWeight: FontWeight.w500,
                                height: 1.8),
                          ),
                          const SizedBox(height: 10),
                          Text(
                            "The Sign-up Bonus and Referral Bonuses, are added to this bucket once user makes a minimum deposit of Rs.100",
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.grey,
                                fontWeight: FontWeight.w500,
                                height: 1.8),
                          ),
                          const SizedBox(height: 10),
                          Text(
                            "The user cannot join Private Contests using this cash amount",
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.grey,
                                fontWeight: FontWeight.w500,
                                height: 1.8),
                          ),
                          const SizedBox(height: 10),
                          Text(
                            "The user cannot withdraw cash from this bucket",
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.grey,
                                fontWeight: FontWeight.w500,
                                height: 1.8),
                          ),
                          const SizedBox(height: 20),
                          Text(
                            "Score",
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                                fontWeight: FontWeight.w700,
                                height: 1.8),
                          ),
                          const SizedBox(height: 10),
                          Text(
                            "This is moved to Winnings/Withdrawable bucket only when the user converts to a cash player (Deposits cash & play a cash game)",
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.grey,
                                fontWeight: FontWeight.w500,
                                height: 1.8),
                          ),
                          const SizedBox(height: 10),
                          Text(
                            "Playable bonus and Locked bonus (If any) given to the user if not utilized within 15 days from the day of disbursement will be expired.",
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.grey,
                                fontWeight: FontWeight.w500,
                                height: 1.8),
                          ),
                          const SizedBox(height: 20),
                          Text(
                            "Prizes: Terms and Conditions",
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                                fontWeight: FontWeight.w700,
                                height: 1.8),
                          ),
                          const SizedBox(height: 10),
                          Padding(
                            padding: EdgeInsets.only(left: 12, right: 12),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "1.   A User can win only one prize in a day.",
                                  style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.grey,
                                      fontWeight: FontWeight.w500,
                                      height: 1.8),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: 6, bottom: 6),
                                  child: Text(
                                    "2.   balleballe11 will email all winners to notify them 24 hours after the match ends.",
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.grey,
                                        fontWeight: FontWeight.w500,
                                        height: 1.8),
                                  ),
                                ),
                                Text(
                                  "3.   In the scenario of a User winning multiple prize rooms in a day, the User will win the prize for the first room that he/she joined on that particular day. The Users with the second-highest points in the other game rooms will win the prizes.",
                                  style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.grey,
                                      fontWeight: FontWeight.w500,
                                      height: 1.8),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: 6, bottom: 6),
                                  child: Text(
                                    "4.   Every User is allowed only one entry in any Free Entry-based Prize Money or Prize Item room. You are not allowed to enter our Fantasy Cricket rooms using multiple accounts.",
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.grey,
                                        fontWeight: FontWeight.w500,
                                        height: 1.8),
                                  ),
                                ),
                                Text(
                                  "5.   Freight and shipping charges and customs duties on all prizes shall be borne by the winners.",
                                  style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.grey,
                                      fontWeight: FontWeight.w500,
                                      height: 1.8),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: 6, bottom: 6),
                                  child: Text(
                                    "6.   All prizes shall be subject to tax deduction (TDS) as per the Income Tax Act 1961. Winners will be provided TDS certificates in respect of such tax deductions. Winners shall be responsible for payment of any other applicable taxes, including, but not limited to, the income tax and gift tax in respect of the prize money.",
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.grey,
                                        fontWeight: FontWeight.w500,
                                        height: 1.8),
                                  ),
                                ),
                                Text(
                                  "7.   By downloading and/or using the licensed balleballe11 application, you acknowledge and agree to the following:",
                                  style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.grey,
                                      fontWeight: FontWeight.w500,
                                      height: 1.8),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: 6, left: 17),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "•   balleballe11, its subsidiaries and all group companies that collectively come under the name balleballe11 are in no way responsible for the application and the content within. Also, your use of this application and Website is limited to a non-transferable personal use.",
                                        style: TextStyle(
                                            fontSize: 14,
                                            color: Colors.grey,
                                            fontWeight: FontWeight.w500,
                                            height: 1.8),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            top: 6.0, bottom: 6),
                                        child: Text(
                                          "•   balleballe11 has no obligation of warranty with respect to the Website or Content on it. All claims, liabilities, losses, damages, costs and/or expenses that occur because of using balleballe11 Products, Services, Website or the Content on it are the sole responsibility of the User. balleballe11 is not responsible to address claims relating to the Website and/or your use of the Website or the Products and Services available on it.",
                                          style: TextStyle(
                                              fontSize: 14,
                                              color: Colors.grey,
                                              fontWeight: FontWeight.w500,
                                              height: 1.8),
                                        ),
                                      ),
                                      Text(
                                        "•   balleballe11 is not responsible for any third-party infringement claims that your possession and/or use of any third-party's intellectual property infringes intellectual property rights.",
                                        style: TextStyle(
                                            fontSize: 14,
                                            color: Colors.grey,
                                            fontWeight: FontWeight.w500,
                                            height: 1.8),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: 6, bottom: 6),
                                  child: Text(
                                    "8.   We allow people from all the states and union territories of India, except Assam, Andhra Pradesh, Tamil Nadu , Odisha, Telangana, Nagaland and Sikkim, to play Fantasy Cricket games on balleballe11.",
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.grey,
                                        fontWeight: FontWeight.w500,
                                        height: 1.8),
                                  ),
                                ),
                                Text(
                                  "9.   All the standard terms and conditions of balleballe11 apply.",
                                  style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.grey,
                                      fontWeight: FontWeight.w500,
                                      height: 1.8),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: 6, bottom: 12),
                                  child: Text(
                                    "10.   The decision of balleballe11 Management shall be final and binding in case of any dispute.",
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.grey,
                                        fontWeight: FontWeight.w500,
                                        height: 1.8),
                                  ),
                                ),
                              ],
                            ),
                          ),
//
//
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
