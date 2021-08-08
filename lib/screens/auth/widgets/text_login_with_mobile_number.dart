import 'package:closer/file_export.dart';
textLoginWithMobileNumber({BuildContext context}){
  return   Container(width: width(context)*.9,
      child: Row(
        children: [
          Text("Login with your mobile number" , style:
          TextStyles.descriptionTextStyle.copyWith(color: greenColor),),
        ],
      ));
}