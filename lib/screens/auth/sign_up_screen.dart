import 'package:closer/file_export.dart';
import 'package:closer/screens/auth/widgets/conct_with_facebook_widget.dart';
import 'package:closer/screens/auth/widgets/having_account_status_widget.dart';
import 'package:closer/screens/auth/widgets/switch_top_button.dart';
import 'package:closer/screens/auth/widgets/text_login_with_mobile_number.dart';
import 'package:closer/screens/auth/widgets/text_or.dart';
class SignUpScreen extends StatelessWidget {
  static const String routeName = "Sign up";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        height: height(context),
        width: width(context),
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      customHeader(
                          context: context,
                          prevPageRoutName: Intro2Screen.routeName),
                      topSwitchButton(context: context ,isSignIn: false),
                      SizedBox(
                          height: isLandscape(context)
                              ? 2 * height(context) * .1
                              : height(context) * .1),
                      textLoginWithMobileNumber(context: context),
                      SizedBox(
                          height: isLandscape(context)
                              ? 2 * height(context) * .03
                              : height(context) * .03),
                      CustomTextFromField(
                        hintText: "Name",
                      ),
                      SizedBox(
                          height: isLandscape(context)
                              ? 2 * height(context) * .01
                              : height(context) * .01),
                      CustomTextFromField(
                        hintText: "Mobile Number ",
                      ),
                      SizedBox(
                          height: isLandscape(context)
                              ? 2 * height(context) * .01
                              : height(context) * .01),
                      CustomTextFromField(
                        hintText: "Password",
                      ),

                      SizedBox(
                          height: isLandscape(context)
                              ? 2 * height(context) * .04
                              : height(context) * .04),
                      SizedBox(
                          height: isLandscape(context)
                              ? 2 * height(context) * .01
                              : height(context) * .01),
                      customButton(
                          context: context,
                          buttonText: "Sign up ",
                          onTapButton: () {Navigator.of(context).pushReplacementNamed(VerificationCodeScreen.routeName);}),
                      SizedBox(
                          height: isLandscape(context)
                              ? 2 * height(context) * .01
                              : height(context) * .01),
                      havingAccountStatus(context: context, isSignInScreen: false),
                      SizedBox(
                          height: isLandscape(context)
                              ? 2 * height(context) * .1
                              : height(context) * .1),
                      textOr(context: context),
                      SizedBox(
                          height: isLandscape(context)
                              ? 2 * height(context) * .01
                              : height(context) * .01),
                      connectWithFacebookWidget(
                          context: context, onTapConnectWithFaceBook: () {}),
                      SizedBox(
                          height: isLandscape(context)
                              ? 2 * height(context) * .05
                              : height(context) * .01),
                    ],
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
