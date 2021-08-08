import 'package:closer/file_export.dart';

class SplashScreen extends StatefulWidget {
  static const String routeName = "splash";
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState() {
    super.initState();
    Timer(
//      duration time
        Duration(seconds: 4),
        () => Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (BuildContext context) => Intro1Screen())));
  }
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: SingleChildScrollView(
        child: Center(
          child: Stack(
            children: [
              Container(
                height: height(context),
                width: width(context),
                child: Image.asset(
                  AppIcons.logo,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
