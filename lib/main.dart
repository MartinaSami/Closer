import 'package:closer/file_export.dart';
void main(){
  runApp(
      MaterialApp(debugShowCheckedModeBanner: false,
          home: SplashScreen(),
          theme: ThemeData(
              primaryColor: greenColor,
              accentColor: lightGreenColor,
              fontFamily: "Segoe UI"),
        routes: {
          Intro1Screen.routeName: (context) => Intro1Screen(),
          Intro2Screen.routeName: (context) => Intro2Screen(),
          SplashScreen.routeName: (context) => SplashScreen(),
          SignInScreen.routeName: (context) => SignInScreen(),
          SignUpScreen.routeName: (context) => SignUpScreen(),
          VerificationCodeScreen.routeName: (context) => VerificationCodeScreen(),
          SelectLocationScreen.routeName: (context) => SelectLocationScreen(),
          SubmitDestinationScreen.routeName: (context) => SubmitDestinationScreen(),
          ChooseTypeScreen.routeName: (context) => ChooseTypeScreen(),
          CostAndTimeScreen.routeName: (context) => CostAndTimeScreen(),
          RecommendedDriversScreen.routeName: (context) => RecommendedDriversScreen(),
          OnWayScreen.routeName: (context) => OnWayScreen(),
          YourRideScreen.routeName: (context) => YourRideScreen(),
          ProfileScreen.routeName: (context) => ProfileScreen(),
          ForgetPasswordScreen.routeName: (context) => ForgetPasswordScreen(),

        },)
    );

}






