import 'package:closer/file_export.dart';
class OnWayScreen extends StatelessWidget {
  static const String routeName = "on way ";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("on way "),),
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
