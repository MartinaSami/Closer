import 'package:closer/file_export.dart';
import 'package:closer/screens/intro/widgets/image_and_button_stack.dart';
class Intro2Screen extends StatelessWidget {
  static const String routeName = "intro2";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: Container(
        height: height(context),
        width: width(context),
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Center(
                  child: imageAndButtonStackForIntro(context)
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
