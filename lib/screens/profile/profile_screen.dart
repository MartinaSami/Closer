import 'package:closer/file_export.dart';
class ProfileScreen extends StatelessWidget {
  static const String routeName = "profile ";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("profile"),),
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
