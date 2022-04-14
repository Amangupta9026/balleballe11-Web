import 'dart:developer';
import 'dart:ui';

import 'package:balleballe11/Language/appLocalizations.dart';
import 'package:balleballe11/WebPAge/responsive.dart';
import 'package:balleballe11/apiService/apiServices.dart';
import 'package:balleballe11/apiService/dioClient.dart';
import 'package:balleballe11/constance/color_constant.dart';
import 'package:balleballe11/constance/icon_constants.dart';
import 'package:balleballe11/model/matchesModel.dart';
import 'package:balleballe11/model/my_completed_matches_model.dart';
import 'package:balleballe11/model/my_contest_model.dart';
import 'package:balleballe11/model/myjoined_live_matches_model.dart';
import 'package:balleballe11/widget/shimmerProgressWidget.dart';
import 'package:balleballe11/widget/utils.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

import '../mycontest_live_page.dart';
import 'live_match_contest_page.dart';

class LiveMatchDetailPage extends StatefulWidget {
  Live selectedMatchData;
  bool isFromView = false;
  String pageFromMatch = "";
  VoidCallback onClickJoinContest;

  LiveMatchDetailPage(
    Live selectedMatchData, {
    bool isFromView,
    String pageFromMatch,
    onClickJoinContest,
  }) {
    this.selectedMatchData = selectedMatchData;
    this.isFromView = isFromView;
    this.pageFromMatch = pageFromMatch;
    this.onClickJoinContest = onClickJoinContest;
  }

  @override
  _LiveMatchDetailPageState createState() => _LiveMatchDetailPageState();
}

class _LiveMatchDetailPageState extends State<LiveMatchDetailPage> {
  bool isProgressRunning = true;

  RefreshController _refreshController =
      RefreshController(initialRefresh: false);
  MyContestModel myContestModel = MyContestModel();
  List<MyJoinedContest> getMyContestList = <MyJoinedContest>[];

  @override
  void initState() {
    super.initState();
    getMyContest();
  }

  Future<void> getMyContest() async {
    try {
      setState(() {
        isProgressRunning = true;
      });
      myContestModel =
          await APIServices.getMyContestData(widget.selectedMatchData?.matchId);

      if (myContestModel != null &&
          myContestModel.response.myJoinedContest != null &&
          myContestModel.response.myJoinedContest.length > 0) {
        setState(() {
          getMyContestList.addAll(myContestModel.response.myJoinedContest);
        });
      }
    } catch (error) {
      log("$error", name: "error");
      showErrorDialog(context, error);
    } finally {
      setState(() {
        isProgressRunning = false;
      });
    }
  }

  Widget _noAnyJoinContest() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 100,
          ),
          Text(
            AppLocalizations.of("You haven't join any contest yet!"),
            style: Theme.of(context).textTheme.caption.copyWith(
                  color: ColorConstant.COLOR_TEXT,
                  fontWeight: FontWeight.w600,
                  fontSize: 18.0,
                ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Visibility(
            visible: widget.isFromView != null && !widget.isFromView,
            child: Column(
              children: [
                Text(
                  AppLocalizations.of('What are you waiting for?'),
                  style: Theme.of(context).textTheme.caption.copyWith(
                        color: ColorConstant.COLOR_TEXT,
                        fontSize: 14.0,
                      ),
                ),
                SizedBox(
                  height: 20,
                ),
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6.0),
                  ),
                  child: InkWell(
                    onTap: widget.onClickJoinContest,
                    child: Container(
                      height: 40,
                      width: 140,
                      decoration: BoxDecoration(
                        color: ColorConstant.COLOR_RED,
                        borderRadius: BorderRadius.circular(6.0),
                      ),
                      child: Center(
                        child: Text(
                          AppLocalizations.of('Join Contest'),
                          style: Theme.of(context).textTheme.caption.copyWith(
                                color: Colors.white,
                                letterSpacing: 0.6,
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _getLeaguesList() {
    return ListView.builder(
      padding: EdgeInsets.zero,
      itemBuilder: (context, index) {
        return _getLeaguesItem(context, index);
      },
      itemCount: getMyContestList?.length,
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
    );
  }

  Widget _getLeaguesItem(BuildContext context, int contestindex) {
    return Padding(
      padding: EdgeInsets.only(left: 10.0, top: 10.0, right: 10.0),
      child: InkWell(
        onTap: () async {
          // Defaultcontest myContestData = Defaultcontest();
          // myContestData = myContestData.clone(
          //     getMyContestList[index],
          //     getMyContestList[index].prizeBreakup,
          //     getMyContestList[index].myJoinedTeams);

          //

          if (!getMyContestList[contestindex].isCancelled)
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => LiveMatchContestPage(
                    contestDetails: getMyContestList[contestindex],
                    selectedMatchData: widget.selectedMatchData,
                    isFromView: widget.isFromView,
                    pageFromMatch: widget.pageFromMatch),
              ),
            );
        },
        child: Card(
          elevation: 2.0,
          color: ColorConstant.COLOR_WHITE,
          shape: RoundedRectangleBorder(
            side: BorderSide(color: ColorConstant.COLOR_GREY, width: 0.8),
            borderRadius: BorderRadius.circular(8.0),
          ),
          child: Container(
            decoration: BoxDecoration(
              border: Border(
                right: BorderSide(color: ColorConstant.COLOR_GREY, width: 0.8),
              ),
            ),
            child: Flex(
              direction: Axis.vertical,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Flex(
                  direction: Axis.horizontal,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 3,
                      child: Container(
                        padding: EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 10.0),
                        child: Flex(
                          direction: Axis.vertical,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Flex(
                              direction: Axis.horizontal,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Flex(
                                  direction: Axis.vertical,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Prize Pool",
                                      style: Theme.of(context)
                                          .textTheme
                                          .subtitle2
                                          .copyWith(
                                            color: ColorConstant.COLOR_TEXT,
                                            fontWeight: FontWeight.w500,
                                          ),
                                    ),
                                    SizedBox(height: 5.0),
                                    Text(
                                      "₹${getMyContestList[contestindex].totalWinningPrize ?? ""}",
                                      style: TextStyle(
                                          color: ColorConstant.COLOR_TEXT,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 14.0),
                                    ),
                                  ],
                                ),
                                Flex(
                                  direction: Axis.vertical,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Flex(
                                      direction: Axis.vertical,
                                      children: [
                                        if (getMyContestList[contestindex]
                                                .isCancelled ==
                                            false)
                                          Text(
                                            "Entry",
                                            style: TextStyle(
                                              color: ColorConstant.COLOR_GREY,
                                              fontSize: 12.0,
                                            ),
                                          )
                                        else
                                          Text(
                                            "Cancelled",
                                            style: TextStyle(
                                              color: ColorConstant.COLOR_RED,
                                              fontSize: 16.0,
                                            ),
                                          ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        Container(
                                          height: 25,
                                          child: ElevatedButton(
                                            style: ElevatedButton.styleFrom(
                                              primary: ColorConstant
                                                  .COLOR_GREY, // background
                                              onPrimary: ColorConstant
                                                  .COLOR_WHITE, // foreground
                                            ),
                                            onPressed: () {},
                                            child: Text(
                                              '₹${getMyContestList[contestindex].entryFees ?? ""}',
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .bodyText2
                                                  .copyWith(
                                                    color: ColorConstant
                                                        .COLOR_WHITE,
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ],
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Container(
                              color: ColorConstant.COLOR_LIGHT_PINK2,
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    top: 8.0, bottom: 8, left: 10, right: 10),
                                child: Row(
                                  children: [
                                    Image.asset(
                                      ImgConstants.CUP,
                                      height: 17,
                                      width: 17,
                                      color: ColorConstant.COLOR_BLACK,
                                    ),
                                    const SizedBox(
                                      width: 8,
                                    ),
                                    Text(
                                        "₹${getMyContestList[contestindex].firstPrice ?? ""}"),
                                  ],
                                ),
                              ),
                            ),
                            ListView.builder(
                              padding: EdgeInsets.zero,
                              itemBuilder: (context, index) {
                                return teamjoin(contestindex, index);
                              },
                              itemCount: getMyContestList[contestindex]
                                  .joinedTeams
                                  ?.length,
                              // getMyContestList?.length,
                              //   getMyContestList[index].joinedTeams?.length,
                              shrinkWrap: true,
                              physics: NeverScrollableScrollPhysics(),
                            ),

                            // Container(
                            //   color: ColorConstant.COLOR_LIGHT_BLUE2,
                            //   child: Padding(
                            //     padding: const EdgeInsets.only(
                            //         top: 8.0, bottom: 8, left: 10, right: 10),
                            //     child: Column(
                            //       children: [
                            //         Row(
                            //           mainAxisAlignment:
                            //               MainAxisAlignment.spaceBetween,
                            //           children: [
                            //             Text(
                            //                 "${getMyContestList[index].joinedTeams[0].teamName ?? ""}"),
                            //             Text(
                            //                 "${getMyContestList[index].joinedTeams[0].points ?? ""}"),
                            //             Text(
                            //                 "#${getMyContestList[index].joinedTeams[0].rank ?? ""}")
                            //           ],
                            //         ),
                            //         const SizedBox(
                            //           height: 5,
                            //         ),
                            //         Visibility(
                            //           visible: getMyContestList[index]
                            //                   .joinedTeams[0]
                            //                   .prizeAmount >
                            //               0,
                            //           child: Row(
                            //             children: [
                            //               Text(
                            //                 "Winning ₹${getMyContestList[index].joinedTeams[0].prizeAmount ?? ""}",
                            //                 textAlign: TextAlign.start,
                            //                 style: Theme.of(context)
                            //                     .textTheme
                            //                     .subtitle2
                            //                     .copyWith(
                            //                       color: ColorConstant
                            //                           .COLOR_GREEN,
                            //                       fontWeight: FontWeight.w500,
                            //                     ),
                            //               ),
                            //             ],
                            //           ),
                            //         ),
                            //       ],
                            //     ),
                            //   ),
                            // ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  height: 1.0,
                  color: ColorConstant.COLOR_LIGHT_GREY,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget teamjoin(int contestindex, int index) {
    return Column(
      children: [
        Container(
          color: ColorConstant.COLOR_LIGHT_BLUE2,
          child: Padding(
            padding: const EdgeInsets.only(
                top: 10.0, bottom: 10, left: 10, right: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "${getMyContestList[contestindex].joinedTeams[index].teamName ?? ""}",
                  style: Theme.of(context).textTheme.bodyText2.copyWith(
                        color: ColorConstant.COLOR_TEXT,
                        fontWeight: FontWeight.w400,
                      ),
                ),
                Text(
                  "${getMyContestList[contestindex].joinedTeams[index].points ?? ""}",
                  style: Theme.of(context).textTheme.bodyText2.copyWith(
                        color: ColorConstant.COLOR_TEXT,
                        fontWeight: FontWeight.w400,
                      ),
                ),
                Text(
                  "#${getMyContestList[contestindex].joinedTeams[index].rank ?? ""}",
                  style: Theme.of(context).textTheme.bodyText2.copyWith(
                        color: ColorConstant.COLOR_TEXT,
                        fontWeight: FontWeight.w400,
                      ),
                ),
              ],
            ),
          ),
        ),
        Divider(
          color: ColorConstant.COLOR_BLACK,
          height: 0,
        )
      ],
    );
  }

  void _onRefresh() async {
    setState(() {
      myContestModel = null;
      getMyContestList.clear();
    });
    await getMyContest();
    _refreshController.refreshCompleted();
  }

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
      child: Stack(
        children: [
          if (Responsive.isDesktop(context))
            DecoratedBox(
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(Utils.matchbackground),
                    fit: BoxFit.cover),
              ),
              child: Row(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width / 2.4,
                    child: Scaffold(
                      backgroundColor: isProgressRunning
                          ? ColorConstant.COLOR_WHITE
                          : ColorConstant.BACKGROUND_COLOR,
                      body: isProgressRunning
                          ? ShimmerProgressWidget(
                              count: 8, isProgressRunning: isProgressRunning)
                          : getMyContestList != null &&
                                  getMyContestList.length > 0
                              ? SmartRefresher(
                                  enablePullDown: true,
                                  enablePullUp: false,
                                  onRefresh: _onRefresh,
                                  controller: _refreshController,
                                  header: MaterialClassicHeader(
                                      color: ColorConstant.COLOR_TEXT,
                                      backgroundColor:
                                          ColorConstant.COLOR_WHITE),
                                  child: ListView(
                                    padding: EdgeInsets.zero,
                                    scrollDirection: Axis.vertical,
                                    children: [_getLeaguesList()],
                                  ),
                                )
                              : _noAnyJoinContest(),
                    ),
                  ),
                ],
              ),
            ),
          if (Responsive.isTablet(context) || Responsive.isMobile(context))
            Scaffold(
              backgroundColor: isProgressRunning
                  ? ColorConstant.COLOR_WHITE
                  : ColorConstant.BACKGROUND_COLOR,
              body: isProgressRunning
                  ? ShimmerProgressWidget(
                      count: 8, isProgressRunning: isProgressRunning)
                  : getMyContestList != null && getMyContestList.length > 0
                      ? SmartRefresher(
                          enablePullDown: true,
                          enablePullUp: false,
                          onRefresh: _onRefresh,
                          controller: _refreshController,
                          header: MaterialClassicHeader(
                              color: ColorConstant.COLOR_TEXT,
                              backgroundColor: ColorConstant.COLOR_WHITE),
                          child: ListView(
                            padding: EdgeInsets.zero,
                            scrollDirection: Axis.vertical,
                            children: [_getLeaguesList()],
                          ),
                        )
                      : _noAnyJoinContest(),
            ),
        ],
      ),
    );
  }
}
