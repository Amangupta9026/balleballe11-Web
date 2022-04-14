import 'dart:developer';

import 'package:balleballe11/WebPAge/responsive.dart';
import 'package:balleballe11/balance/addcash.dart';
import 'package:balleballe11/constance/packages.dart';
import 'package:balleballe11/model/contest_type_model.dart';
import 'package:balleballe11/model/get_mywallet_model.dart';
import 'package:balleballe11/model/matchesModel.dart';
import 'package:balleballe11/model/select_team_join_model.dart';
import 'package:balleballe11/widget/utils.dart';

import '../contest.dart';

class JoinContest extends StatefulWidget {
  final Upcomingmatch selectedMatchData;
  List<int> teamId;
  int teamCount;
  final int contestId;
  final Contest selectedContestData;
  final int maxTeamAllowed;

  JoinContest({
    Key key,
    this.selectedMatchData,
    this.teamId,
    this.teamCount,
    this.contestId,
    this.selectedContestData,
    this.maxTeamAllowed,
  }) : super(key: key);

  @override
  _JoinContestState createState() => _JoinContestState();
}

class _JoinContestState extends State<JoinContest> {
  bool isProgressRunning = true;
  SelectTeamJoinModel selectTeamJoinData = SelectTeamJoinModel();
  WalletInfo _myWalletData = WalletInfo();
  num totalAmount = 0;
  bool _isProgressRunning = true;
  double moneydeducted;
  double usableBonusMoneyDeducted;
//  int teamCount = 1;
  bool isTeamSelected = false, isSelectAll = false;

  var contestMatch;
  bool isloading = true;

  @override
  void initState() {
    super.initState();

    //  selectTeamJoinContest();
  }

  // Future<void> getWalletData() async {
  //   try {
  //     setState(() {
  //       _isProgressRunning = true;
  //     });
  //     GetWalletModel myWalletResp = await APIServices.getWallet();

  //     if (myWalletResp.status != null && myWalletResp.walletInfo != null) {
  //       setState(() {
  //         _myWalletData = myWalletResp.walletInfo;
  //         SharedPreference.setValue(
  //             PrefConstants.BONUS_AMOUNT, _myWalletData.bonusAmount);
  //         SharedPreference.setValue(
  //             PrefConstants.WINNING_AMOUNT, _myWalletData.prizeAmount);
  //         SharedPreference.setValue(
  //             PrefConstants.DEPOSIT_AMOUNT, _myWalletData.depositAmount);

  //         SharedPreference.setValue(
  //             PrefConstants.EXTRA_AMOUNT, _myWalletData.extraCash);
  //         SharedPreference.setValue(PrefConstants.VERIFY_EMAIL_ADDRESS,
  //             _myWalletData.isAccountVerified.emailVerified);

  //         // SharedPreference.setValue(PrefConstants.VERIFY_PAN_CARD,
  //         //     _myWalletData.userModel.verifyDocument);
  //         // if (_myWalletData.userModel.panDocumentUploaded != null) {
  //         //   Documents documents = _myWalletData.userModel.panDocumentUploaded;
  //         //
  //         //   SharedPreference.setValue(
  //         //       PrefConstants.PAN_CARD_DOCUMENT, jsonEncode(documents));
  //         //   SharedPreference.setValue(
  //         //       PrefConstants.PAN_CARD_DOCUMENT_REVIEW_STATUS,
  //         //       documents.status);
  //         // }

  //         // SharedPreference.setValue(PrefConstants.VERIFY_BANK_ACCOUNT,
  //         //     _myWalletData.userModel.verifyBankAccounts);
  //         // if (_myWalletData.userModel.bankDocumentUploaded != null) {
  //         //   bankAccountDocuments = _myWalletData.userModel.bankDocumentUploaded;
  //         //
  //         //   SharedPreference.setValue(PrefConstants.BANK_ACCOUNT_DOCUMENT,
  //         //       jsonEncode(bankAccountDocuments));
  //         //   SharedPreference.setValue(
  //         //       PrefConstants.BANK_ACCOUNT_DOCUMENT_REVIEW_STATUS,
  //         //       bankAccountDocuments.status);
  //         // }
  //         // totalAmount = _getTotalBalance();
  //         if (_myWalletData != null &&
  //             _myWalletData.bonusAmount != null &&
  //             _myWalletData.prizeAmount != null &&
  //             _myWalletData.depositAmount != null) {
  //           totalAmount = (_myWalletData.prizeAmount +
  //               _myWalletData.depositAmount +
  //               _myWalletData.bonusAmount);
  //           SharedPreference.setValue(PrefConstants.TOTAL_AMOUNT, totalAmount);
  //         }
  //       });
  //     }
  //   } catch (error) {
  //     log("$error", name: "error");
  //     showErrorDialog(context, error);
  //   } finally {
  //     setState(() {
  //       _isProgressRunning = false;
  //     });
  //   }
  // }

  Future<void> selectTeamJoinContest() async {
    try {
      setState(() {
        isProgressRunning = true;
      });
      selectTeamJoinData = await APIServices.selectTeamJoinContest(
          widget.contestId, widget.teamId, widget.selectedMatchData?.matchId);
    } catch (error) {
      log("$error", name: "error");
      showErrorDialog(context, error);
    } finally {
      setState(() {
        isProgressRunning = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        if (Responsive.isDesktop(context))
          DecoratedBox(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(Utils.matchbackground), fit: BoxFit.cover),
            ),
            child: Row(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width / 2.4,
                  child: Scaffold(
                      backgroundColor: ColorConstant.COLOR_TEXT,
                      body: Center(
                        child: SingleChildScrollView(
                          child: Padding(
                            padding:
                                const EdgeInsets.only(left: 15.0, right: 15),
                            child: Container(
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: ColorConstant.COLOR_WHITE,
                              ),
                              child: Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(15.0, 15, 15, 15),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "Confirmation",
                                          style: Theme.of(context)
                                              .textTheme
                                              .headline5
                                              .copyWith(
                                                color: ColorConstant.COLOR_TEXT,
                                                fontWeight: FontWeight.w500,
                                              ),
                                        ),
                                        // data print {contest_id: 324248, created_team_id: 4613161, match_id: 52220, user_id: YZ1GRCTE}

                                        InkWell(
                                          onTap: () {
                                            Navigator.pop(context);
                                          },
                                          child: Icon(
                                            Icons.close,
                                            size: 30,
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    if (widget
                                            .selectedContestData.usableBonus !=
                                        100)
                                      Text(
                                        "Amount Added + Bonus = ₹${SharedPreference.getValue(PrefConstants.TOTAL_AMOUNT ?? "0")}",
                                        style: Theme.of(context)
                                            .textTheme
                                            .subtitle1
                                            .copyWith(
                                              color: ColorConstant.COLOR_TEXT,
                                              fontWeight: FontWeight.w400,
                                            ),
                                      )
                                    else
                                      Text(
                                        "Bonus Amount = ₹${SharedPreference.getValue(PrefConstants.BONUS_AMOUNT ?? "0")}",
                                        style: Theme.of(context)
                                            .textTheme
                                            .subtitle1
                                            .copyWith(
                                              color: ColorConstant.COLOR_TEXT,
                                              fontWeight: FontWeight.w400,
                                            ),
                                      ),
                                    const SizedBox(
                                      height: 15,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "Entry",
                                          style: Theme.of(context)
                                              .textTheme
                                              .subtitle1
                                              .copyWith(
                                                color: ColorConstant.COLOR_TEXT,
                                                fontWeight: FontWeight.bold,
                                              ),
                                        ),
                                        if (widget.selectedContestData
                                                .usableBonus !=
                                            100)
                                          Text(
                                            "₹${moneydeducted = ((widget.selectedContestData.entryFees) * (widget.teamCount)).toDouble()}",
                                            style: Theme.of(context)
                                                .textTheme
                                                .subtitle1
                                                .copyWith(
                                                  color:
                                                      ColorConstant.COLOR_TEXT,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                          )
                                        else
                                          Text(
                                            "₹0",
                                            //"₹${usableBonusMoneyDeducted = ((widget.selectedContestData.entryFees) - (widget.selectedContestData.usableBonus)).toDouble()}",
                                            style: Theme.of(context)
                                                .textTheme
                                                .subtitle1
                                                .copyWith(
                                                  color:
                                                      ColorConstant.COLOR_TEXT,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                          )
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 15,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "Usable Cash Bonus",
                                          style: Theme.of(context)
                                              .textTheme
                                              .subtitle1
                                              .copyWith(
                                                color: ColorConstant.COLOR_TEXT,
                                                fontWeight: FontWeight.bold,
                                              ),
                                        ),
                                        if (widget.selectedContestData
                                                .usableBonus !=
                                            100)
                                          Text(
                                            "₹${moneydeducted = ((widget.selectedContestData.entryFees * widget.selectedContestData.usableBonus) / 100 * (widget.teamCount)).toDouble()}",
                                            // "₹${widget.selectedContestData.usableBonus ?? "0"}",
                                            style: Theme.of(context)
                                                .textTheme
                                                .subtitle1
                                                .copyWith(
                                                  color:
                                                      ColorConstant.COLOR_TEXT,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                          )
                                        else
                                          Text(
                                            "₹${usableBonusMoneyDeducted = ((widget.selectedContestData.entryFees) * (widget.teamCount)).toDouble()}",
                                            // "₹${widget.selectedContestData.usableBonus ?? "0"}",
                                            style: Theme.of(context)
                                                .textTheme
                                                .subtitle1
                                                .copyWith(
                                                  color:
                                                      ColorConstant.COLOR_TEXT,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                          )
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 15,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "Extra Cash(%)",
                                          style: Theme.of(context)
                                              .textTheme
                                              .subtitle1
                                              .copyWith(
                                                color: ColorConstant.COLOR_TEXT,
                                                fontWeight: FontWeight.bold,
                                              ),
                                        ),
                                        Text(
                                          "₹${SharedPreference.getValue(PrefConstants.EXTRA_AMOUNT ?? 0).toString()}",
                                          style: Theme.of(context)
                                              .textTheme
                                              .subtitle1
                                              .copyWith(
                                                color: ColorConstant.COLOR_TEXT,
                                                fontWeight: FontWeight.bold,
                                              ),
                                        ),
                                      ],
                                    ),
                                    Divider(
                                      color: ColorConstant.COLOR_TEXT,
                                    ),
                                    const SizedBox(
                                      height: 15,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "To Pay",
                                          style: Theme.of(context)
                                              .textTheme
                                              .subtitle1
                                              .copyWith(
                                                color: ColorConstant.COLOR_TEXT,
                                                fontWeight: FontWeight.bold,
                                              ),
                                        ),
                                        Text(
                                          "${moneydeducted = ((widget.selectedContestData.entryFees - (widget.selectedContestData.entryFees * widget.selectedContestData.usableBonus) / 100)) * widget.teamCount}",

                                          //  "₹",
                                          style: Theme.of(context)
                                              .textTheme
                                              .subtitle1
                                              .copyWith(
                                                color: ColorConstant.COLOR_TEXT,
                                                fontWeight: FontWeight.bold,
                                              ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 15,
                                    ),
                                    Center(
                                        child: RichText(
                                      text: TextSpan(
                                        text:
                                            'By joining this, you accept balleballe11 ',
                                        style: Theme.of(context)
                                            .textTheme
                                            .caption
                                            .copyWith(
                                                color: ColorConstant.COLOR_TEXT,
                                                fontWeight: FontWeight.w400),
                                        children: <TextSpan>[
                                          TextSpan(
                                            text: 'T&C',
                                            style: Theme.of(context)
                                                .textTheme
                                                .caption
                                                .copyWith(
                                                    color: ColorConstant
                                                        .COLOR_BLUE,
                                                    fontWeight:
                                                        FontWeight.w400),
                                          ),
                                          TextSpan(
                                            text:
                                                ' and confirm that you are not a resident of Assam, Odisha, Andhra, Telangana, Nagaland and Sikkim. I also agree to be contancted by balleballe11 and their partner',
                                            style: Theme.of(context)
                                                .textTheme
                                                .caption
                                                .copyWith(
                                                    color: ColorConstant
                                                        .COLOR_TEXT,
                                                    fontWeight:
                                                        FontWeight.w400),
                                          ),
                                        ],
                                      ),
                                    )),
                                    const SizedBox(
                                      height: 15,
                                    ),
                                    if (widget
                                            .selectedContestData.usableBonus !=
                                        100)
                                      Center(
                                        child: Container(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.4,
                                          child: ElevatedButton(
                                              style: ElevatedButton.styleFrom(
                                                primary: ColorConstant
                                                    .COLOR_TEXT, // background
                                              ),
                                              onPressed: () async {
                                                // if (widget.maxTeamAllowed < widget.teamCount) {
                                                // Fluttertoast.showToast(
                                                //     msg:
                                                //         "You can't join more than ${widget.maxTeamAllowed} teams",
                                                //     toastLength: Toast.LENGTH_SHORT,
                                                //     gravity: ToastGravity.CENTER,
                                                //     timeInSecForIosWeb: 1);
                                                // } else
                                                //
                                                // if (((_myWalletData?.depositAmount ?? 0) +
                                                //         (_myWalletData?.walletAmount ??
                                                //             0) +
                                                //         (_myWalletData?.prizeAmount ??
                                                //             0)) >=
                                                //     moneydeducted) {
                                                if ((SharedPreference.getValue(
                                                        PrefConstants
                                                            .TOTAL_AMOUNT)) >=
                                                    moneydeducted) {
                                                  await selectTeamJoinContest();
                                                  Navigator.of(context)
                                                    ..pop()
                                                    ..pop();
                                                  Navigator.pushReplacement(
                                                    context,
                                                    MaterialPageRoute<dynamic>(
                                                      builder: (BuildContext
                                                              context) =>
                                                          ContestPage(
                                                        selectedMatchData: widget
                                                            .selectedMatchData,
                                                      ),
                                                    ),
                                                  );
                                                } else {
                                                  Navigator.pop(context);

                                                  Navigator.push(context,
                                                      MaterialPageRoute(
                                                          builder: (context) {
                                                    return AddCash(
                                                      walletbalance: SharedPreference
                                                          .getValue(PrefConstants
                                                                  .WALLET_AMOUNT ??
                                                              0),
                                                      prizeAmount: SharedPreference
                                                          .getValue(PrefConstants
                                                                  .PRIZE_AMOUNT ??
                                                              0),
                                                    );
                                                  }));
                                                }
                                              },
                                              child: Text("Pay Now")),
                                        ),
                                      )
                                    else
                                      Center(
                                        child: Container(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.4,
                                          child: ElevatedButton(
                                              style: ElevatedButton.styleFrom(
                                                primary: ColorConstant
                                                    .COLOR_TEXT, // background
                                              ),
                                              onPressed: () async {
                                                if ((widget.selectedContestData
                                                        .usableBonus) >=
                                                    usableBonusMoneyDeducted) {
                                                  await selectTeamJoinContest();
                                                  Navigator.pop(context);
                                                  Navigator.pop(context);
                                                } else {
                                                  Fluttertoast.showToast(
                                                      msg:
                                                          "You don't have sufficient bonus balance",
                                                      toastLength:
                                                          Toast.LENGTH_SHORT,
                                                      gravity:
                                                          ToastGravity.CENTER,
                                                      timeInSecForIosWeb: 1);
                                                }
                                              },
                                              child: Text("JOIN CONTEST")),
                                        ),
                                      )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      )),
                ),
              ],
            ),
          ),
        if (Responsive.isTablet(context) || Responsive.isMobile(context))
          Scaffold(
              backgroundColor: ColorConstant.COLOR_TEXT,
              body: Center(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15.0, right: 15),
                    child: Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: ColorConstant.COLOR_WHITE,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(15.0, 15, 15, 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Confirmation",
                                  style: Theme.of(context)
                                      .textTheme
                                      .headline5
                                      .copyWith(
                                        color: ColorConstant.COLOR_TEXT,
                                        fontWeight: FontWeight.w500,
                                      ),
                                ),
                                // data print {contest_id: 324248, created_team_id: 4613161, match_id: 52220, user_id: YZ1GRCTE}

                                InkWell(
                                  onTap: () {
                                    Navigator.pop(context);
                                  },
                                  child: Icon(
                                    Icons.close,
                                    size: 30,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            if (widget.selectedContestData.usableBonus != 100)
                              Text(
                                "Amount Added + Bonus = ₹${SharedPreference.getValue(PrefConstants.TOTAL_AMOUNT ?? "0")}",
                                style: Theme.of(context)
                                    .textTheme
                                    .subtitle1
                                    .copyWith(
                                      color: ColorConstant.COLOR_TEXT,
                                      fontWeight: FontWeight.w400,
                                    ),
                              )
                            else
                              Text(
                                "Bonus Amount = ₹${SharedPreference.getValue(PrefConstants.BONUS_AMOUNT ?? "0")}",
                                style: Theme.of(context)
                                    .textTheme
                                    .subtitle1
                                    .copyWith(
                                      color: ColorConstant.COLOR_TEXT,
                                      fontWeight: FontWeight.w400,
                                    ),
                              ),
                            const SizedBox(
                              height: 15,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Entry",
                                  style: Theme.of(context)
                                      .textTheme
                                      .subtitle1
                                      .copyWith(
                                        color: ColorConstant.COLOR_TEXT,
                                        fontWeight: FontWeight.bold,
                                      ),
                                ),
                                if (widget.selectedContestData.usableBonus !=
                                    100)
                                  Text(
                                    "₹${moneydeducted = ((widget.selectedContestData.entryFees) * (widget.teamCount)).toDouble()}",
                                    style: Theme.of(context)
                                        .textTheme
                                        .subtitle1
                                        .copyWith(
                                          color: ColorConstant.COLOR_TEXT,
                                          fontWeight: FontWeight.bold,
                                        ),
                                  )
                                else
                                  Text(
                                    "₹0",
                                    //"₹${usableBonusMoneyDeducted = ((widget.selectedContestData.entryFees) - (widget.selectedContestData.usableBonus)).toDouble()}",
                                    style: Theme.of(context)
                                        .textTheme
                                        .subtitle1
                                        .copyWith(
                                          color: ColorConstant.COLOR_TEXT,
                                          fontWeight: FontWeight.bold,
                                        ),
                                  )
                              ],
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Usable Cash Bonus",
                                  style: Theme.of(context)
                                      .textTheme
                                      .subtitle1
                                      .copyWith(
                                        color: ColorConstant.COLOR_TEXT,
                                        fontWeight: FontWeight.bold,
                                      ),
                                ),
                                if (widget.selectedContestData.usableBonus !=
                                    100)
                                  Text(
                                    "₹${moneydeducted = ((widget.selectedContestData.entryFees * widget.selectedContestData.usableBonus) / 100 * (widget.teamCount)).toDouble()}",
                                    // "₹${widget.selectedContestData.usableBonus ?? "0"}",
                                    style: Theme.of(context)
                                        .textTheme
                                        .subtitle1
                                        .copyWith(
                                          color: ColorConstant.COLOR_TEXT,
                                          fontWeight: FontWeight.bold,
                                        ),
                                  )
                                else
                                  Text(
                                    "₹${usableBonusMoneyDeducted = ((widget.selectedContestData.entryFees) * (widget.teamCount)).toDouble()}",
                                    // "₹${widget.selectedContestData.usableBonus ?? "0"}",
                                    style: Theme.of(context)
                                        .textTheme
                                        .subtitle1
                                        .copyWith(
                                          color: ColorConstant.COLOR_TEXT,
                                          fontWeight: FontWeight.bold,
                                        ),
                                  )
                              ],
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Extra Cash(%)",
                                  style: Theme.of(context)
                                      .textTheme
                                      .subtitle1
                                      .copyWith(
                                        color: ColorConstant.COLOR_TEXT,
                                        fontWeight: FontWeight.bold,
                                      ),
                                ),
                                Text(
                                  "₹${SharedPreference.getValue(PrefConstants.EXTRA_AMOUNT ?? 0).toString()}",
                                  style: Theme.of(context)
                                      .textTheme
                                      .subtitle1
                                      .copyWith(
                                        color: ColorConstant.COLOR_TEXT,
                                        fontWeight: FontWeight.bold,
                                      ),
                                ),
                              ],
                            ),
                            Divider(
                              color: ColorConstant.COLOR_TEXT,
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "To Pay",
                                  style: Theme.of(context)
                                      .textTheme
                                      .subtitle1
                                      .copyWith(
                                        color: ColorConstant.COLOR_TEXT,
                                        fontWeight: FontWeight.bold,
                                      ),
                                ),
                                Text(
                                  "${moneydeducted = ((widget.selectedContestData.entryFees - (widget.selectedContestData.entryFees * widget.selectedContestData.usableBonus) / 100)) * widget.teamCount}",

                                  //  "₹",
                                  style: Theme.of(context)
                                      .textTheme
                                      .subtitle1
                                      .copyWith(
                                        color: ColorConstant.COLOR_TEXT,
                                        fontWeight: FontWeight.bold,
                                      ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            Center(
                                child: RichText(
                              text: TextSpan(
                                text:
                                    'By joining this, you accept balleballe11 ',
                                style: Theme.of(context)
                                    .textTheme
                                    .caption
                                    .copyWith(
                                        color: ColorConstant.COLOR_TEXT,
                                        fontWeight: FontWeight.w400),
                                children: <TextSpan>[
                                  TextSpan(
                                    text: 'T&C',
                                    style: Theme.of(context)
                                        .textTheme
                                        .caption
                                        .copyWith(
                                            color: ColorConstant.COLOR_BLUE,
                                            fontWeight: FontWeight.w400),
                                  ),
                                  TextSpan(
                                    text:
                                        ' and confirm that you are not a resident of Assam, Odisha, Andhra, Telangana, Nagaland and Sikkim. I also agree to be contancted by balleballe11 and their partner',
                                    style: Theme.of(context)
                                        .textTheme
                                        .caption
                                        .copyWith(
                                            color: ColorConstant.COLOR_TEXT,
                                            fontWeight: FontWeight.w400),
                                  ),
                                ],
                              ),
                            )),
                            const SizedBox(
                              height: 15,
                            ),
                            if (widget.selectedContestData.usableBonus != 100)
                              Center(
                                child: Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.4,
                                  child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        primary: ColorConstant
                                            .COLOR_TEXT, // background
                                      ),
                                      onPressed: () async {
                                        // if (widget.maxTeamAllowed < widget.teamCount) {
                                        // Fluttertoast.showToast(
                                        //     msg:
                                        //         "You can't join more than ${widget.maxTeamAllowed} teams",
                                        //     toastLength: Toast.LENGTH_SHORT,
                                        //     gravity: ToastGravity.CENTER,
                                        //     timeInSecForIosWeb: 1);
                                        // } else
                                        //
                                        // if (((_myWalletData?.depositAmount ?? 0) +
                                        //         (_myWalletData?.walletAmount ??
                                        //             0) +
                                        //         (_myWalletData?.prizeAmount ??
                                        //             0)) >=
                                        //     moneydeducted) {
                                        if ((SharedPreference.getValue(
                                                PrefConstants.TOTAL_AMOUNT)) >=
                                            moneydeducted) {
                                          await selectTeamJoinContest();
                                          Navigator.of(context)
                                            ..pop()
                                            ..pop();
                                          Navigator.pushReplacement(
                                            context,
                                            MaterialPageRoute<dynamic>(
                                              builder: (BuildContext context) =>
                                                  ContestPage(
                                                selectedMatchData:
                                                    widget.selectedMatchData,
                                              ),
                                            ),
                                          );
                                        } else {
                                          Navigator.pop(context);

                                          Navigator.push(context,
                                              MaterialPageRoute(
                                                  builder: (context) {
                                            return AddCash(
                                              walletbalance:
                                                  SharedPreference.getValue(
                                                      PrefConstants
                                                              .WALLET_AMOUNT ??
                                                          0),
                                              prizeAmount:
                                                  SharedPreference.getValue(
                                                      PrefConstants
                                                              .PRIZE_AMOUNT ??
                                                          0),
                                            );
                                          }));
                                        }
                                      },
                                      child: Text("Pay Now")),
                                ),
                              )
                            else
                              Center(
                                child: Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.4,
                                  child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        primary: ColorConstant
                                            .COLOR_TEXT, // background
                                      ),
                                      onPressed: () async {
                                        if ((widget.selectedContestData
                                                .usableBonus) >=
                                            usableBonusMoneyDeducted) {
                                          await selectTeamJoinContest();
                                          Navigator.pop(context);
                                          Navigator.pop(context);
                                        } else {
                                          Fluttertoast.showToast(
                                              msg:
                                                  "You don't have sufficient bonus balance",
                                              toastLength: Toast.LENGTH_SHORT,
                                              gravity: ToastGravity.CENTER,
                                              timeInSecForIosWeb: 1);
                                        }
                                      },
                                      child: Text("JOIN CONTEST")),
                                ),
                              )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              )),
      ],
    );
  }
}
