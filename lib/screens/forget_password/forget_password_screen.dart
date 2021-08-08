import 'package:closer/file_export.dart';
class ForgetPasswordScreen extends StatelessWidget {
  static const String routeName = "recommended";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Forget Password"),),
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
