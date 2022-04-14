import 'dart:ui';

import 'package:balleballe11/WebPAge/responsive.dart';
import 'package:balleballe11/constance/packages.dart';
import 'package:balleballe11/widget/utils.dart';

class LiveMatchNoContestPage extends StatelessWidget {
  const LiveMatchNoContestPage({Key key}) : super(key: key);

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
                      body: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: 100,
                            ),
                            Text(
                              AppLocalizations.of(
                                  "You haven't join any contest yet!"),
                              style:
                                  Theme.of(context).textTheme.caption.copyWith(
                                        color: ColorConstant.COLOR_TEXT,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 18.0,
                                      ),
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            Visibility(
                              visible: true,
                              //widget.isFromView != null && !widget.isFromView,
                              child: Column(
                                children: [
                                  Text(
                                    AppLocalizations.of(
                                        'What are you waiting for?'),
                                    style: Theme.of(context)
                                        .textTheme
                                        .caption
                                        .copyWith(
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
                                      //  onTap: widget.onClickJoinContest,
                                      child: Container(
                                        height: 40,
                                        width: 140,
                                        decoration: BoxDecoration(
                                          color: ColorConstant.COLOR_RED,
                                          borderRadius:
                                              BorderRadius.circular(6.0),
                                        ),
                                        child: Center(
                                          child: Text(
                                            AppLocalizations.of('Join Contest'),
                                            style: Theme.of(context)
                                                .textTheme
                                                .caption
                                                .copyWith(
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
                      ),
                    ),
                  ),
                ],
              ),
            ),
          if (Responsive.isTablet(context) || Responsive.isMobile(context))
            Scaffold(
              body: Center(
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
                      visible: true,
                      //widget.isFromView != null && !widget.isFromView,
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
                              //  onTap: widget.onClickJoinContest,
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
                                    style: Theme.of(context)
                                        .textTheme
                                        .caption
                                        .copyWith(
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
              ),
            ),
        ],
      ),
    );
  }
}
