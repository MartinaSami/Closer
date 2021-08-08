import 'package:closer/file_export.dart';
topSwitchButton({BuildContext context, bool isSignIn: true}) {
  return Row(
    children: [
      Container(
          child: Row(
        children: [
          GestureDetector(
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  PageRouteBuilder(
                    pageBuilder: (context, animation1, animation2) {
                      return  SignInScreen();
                    },
                    transitionsBuilder: (context, animation8, animation15, child) {
                      return FadeTransition(
                        opacity: animation8,
                        child: child,
                      );
                    },
                    transitionDuration: Duration(milliseconds: 50),
                  ),
                );
              },
              child: Container(
                width: width(context) * .5,
                height: isLandscape(context)
                    ? 2 * height(context) * .08
                    : height(context) * .08,
                color:
                    isSignIn == true ? greenColor.withOpacity(.5) : whiteColor,
                child: Center(
                  child: Text("Sign in ",
                      style: TextStyles.greenBoldTextStyle.copyWith(
                          color: isSignIn == true ? whiteColor : greenColor)),
                ),
              )),
          GestureDetector(
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  PageRouteBuilder(
                    pageBuilder: (context, animation1, animation2) {
                      return  SignUpScreen();
                    },
                    transitionsBuilder: (context, animation8, animation15, child) {
                      return FadeTransition(
                        opacity: animation8,
                        child: child,
                      );
                    },
                    transitionDuration: Duration(milliseconds: 50),
                  ),
                );
              },
              child: Container(
                width: width(context) * .5,
                height: isLandscape(context)
                    ? 2 * height(context) * .08
                    : height(context) * .08,
                color:
                    isSignIn == false  ? greenColor.withOpacity(.5) : whiteColor,
                child: Center(
                  child: Text(
                    "Sign up ",
                    style: TextStyles.greenBoldTextStyle.copyWith(color: isSignIn == false  ? whiteColor : greenColor),
                  ),
                ),
              ))
        ],
      ))
    ],
  );
}
