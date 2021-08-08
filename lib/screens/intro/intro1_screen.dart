import 'package:closer/file_export.dart';
import 'package:closer/screens/intro/widgets/description_text.dart';
import 'package:closer/screens/intro/widgets/switch_button.dart';
class Intro1Screen extends StatelessWidget {
  static const String routeName = "intro1";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body:
      Container(height: height(context),width: width(context),
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Center(child: Stack(children: [
                  Container(
                    child:
                    Column(
                      children: [
                        SizedBox(height: isLandscape(context) ? .3*height(context)*.3 :height(context)*.3 ),
                        Image.asset(AppImages.intro1,),
                        SizedBox(height: isLandscape(context) ? 2*height(context)*.05 :height(context)*.05 ),
                        descriptionTextForIntro(context),
                        SizedBox(height: isLandscape(context) ? 2*height(context)*.05 :height(context)*.2 ),
                        switchButtonForIntroduction(context : context)
                      ],
                    ),),
                ],),),
              ),
            ),
          ],
        ),
      ),


    );
  }
}
