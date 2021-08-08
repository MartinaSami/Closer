import 'package:closer/file_export.dart';
forgetPasswordButton( { BuildContext context , Function onPressForgetPassword }){
  return   Container(width: width(context)*.9,
      child: Row(mainAxisAlignment: MainAxisAlignment.end,
        children: [
          GestureDetector(onTap: onPressForgetPassword ,
            child: Text("forget password " , style:
            TextStyles.descriptionTextStyle.copyWith(color: greenColor ,fontSize: 12),),
          ),
        ],
      ));
}