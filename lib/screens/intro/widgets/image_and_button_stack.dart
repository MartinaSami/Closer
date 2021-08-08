import 'package:closer/file_export.dart';
import 'package:closer/screens/intro/widgets/switch_button.dart';
imageAndButtonStackForIntro(BuildContext context ){
  return Stack(
    children: [
      Container(
        child: Column(
          children: [
            Container(
              height: height(context),
              child: Stack(
                children: [
                  Container(
                      height: height(context),
                      width: width(context),
                      child: Image.asset(
                        AppImages.intro2,
                      )),
                ],
              ),
            ),
          ],
        ),
      ),
      Column(
        children: [
          Container(
            height: height(context),
            child: Stack(
              children: [
                Container(
                  padding: EdgeInsets.only(
                      bottom: height(context) * .05),
                  alignment: Alignment.bottomCenter,
                  height: height(context),
                  child: switchButtonForIntroduction(
                      context: context, introOne: false),
                )
              ],
            ),
          ),
        ],
      ),
    ],
  );
}