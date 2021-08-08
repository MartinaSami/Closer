import 'package:closer/file_export.dart';
class RecommendedDriversScreen extends StatelessWidget {
  static const String routeName = "recommended";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("recommended"),),
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
