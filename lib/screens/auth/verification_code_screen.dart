import 'package:closer/file_export.dart';
class VerificationCodeScreen extends StatelessWidget {
  static const String routeName = "verification code ";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("verification code "),),
      backgroundColor: Colors.white,
      body: Container(height: height(context),width:width(context),
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child:
                Column(mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                  ],),
              ),
            ),
          ],
        ),
      ),

    );
  }
}
