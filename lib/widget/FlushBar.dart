import 'package:balleballe11/WebPAge/responsive.dart';
import 'package:balleballe11/constance/packages.dart';

class UtilsFlushBar {
  static void showDefaultSnackbar(BuildContext context, content) {
    Row(
      children: [
        if (Responsive.isDesktop(context))
          Row(
            children: [
              Flushbar(
                maxWidth: MediaQuery.of(context).size.width / 2.4,
                message: content,
                flushbarPosition: FlushbarPosition.TOP,
                backgroundColor: ColorConstant.COLOR_RED,
                //  backgroundColor: Colors.purple,
                duration: Duration(seconds: 2),
              )..show(context),
            ],
          ),
        if (Responsive.isTablet(context) || Responsive.isMobile(context))
          Flushbar(
            message: content,
            flushbarPosition: FlushbarPosition.TOP,
            backgroundColor: ColorConstant.COLOR_RED,
            //  backgroundColor: Colors.purple,
            duration: Duration(seconds: 2),
          )..show(context),
      ],
    );
  }
}
