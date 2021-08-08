import 'package:closer/file_export.dart';
switchButtonForIntroduction({BuildContext context, bool introOne: true}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Container(
        height: isLandscape(context)
            ? 2 * height(context) * .03
            : height(context) * .03,
        child: GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              PageRouteBuilder(
                pageBuilder: (context, animation1, animation2) {
                  return introOne == true
                      ? Intro2Screen()
                      : SignInScreen();
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
            child: Stack(
              children: [
                Container(
                  height: isLandscape(context)
                      ? 2 * height(context) * .03
                      : height(context) * .03,
                  width: width(context) * .3,
                  decoration: BoxDecoration(
                      color: greyColor,
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                ),
                Row(
                  children: [
                    SizedBox(
                        width: introOne == true ? 0 : width(context) * .15),
                    Container(
                      height: isLandscape(context)
                          ? 2 * height(context) * .03
                          : height(context) * .03,
                      width: width(context) * .15,
                      decoration: BoxDecoration(
                          color: greenColor,
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    ],
  );
}
