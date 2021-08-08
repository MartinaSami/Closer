import 'package:closer/file_export.dart';
  havingAccountStatus({BuildContext context  , bool isSignInScreen : true }){
  return   Container(width: width(context)*.9,
      child: Row(mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text( isSignInScreen == true ? "Don\'t have an account !" : "Already have an account !" , style:
          TextStyles.descriptionTextStyle.copyWith(color: greenColor , fontSize: 14),),
          GestureDetector(onTap:(){ Navigator.pushReplacement(
            context,
            PageRouteBuilder(
              pageBuilder: (context, animation1, animation2) {
                return  isSignInScreen ?  SignUpScreen() : SignInScreen() ;
              },
              transitionsBuilder: (context, animation8, animation15, child) {
                return FadeTransition(
                  opacity: animation8,
                  child: child,
                );
              },
              transitionDuration: Duration(milliseconds: 50),
            ),
          );} ,
            child: Text( isSignInScreen == true ? "Sign up": "Sign in" , style:
            TextStyles.descriptionTextStyle.copyWith(color: greenColor , fontSize: 17,fontWeight: FontWeight.bold),),
          ),
        ],
      ));
}