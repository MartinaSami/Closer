import 'package:closer/file_export.dart';
connectWithFacebookWidget({BuildContext context, Function onTapConnectWithFaceBook }){
  return   Container(width: width(context)*.9,
      child: Row(mainAxisAlignment: MainAxisAlignment.center,
        children: [
           Image.asset(AppIcons.facebook , height: height(context)*.03,),
          SizedBox(width: width(context)*.03,),
          GestureDetector(onTap: onTapConnectWithFaceBook ,
            child: Text("Connect with facebook" , style:
            TextStyles.descriptionTextStyle.copyWith(color: greenColor , fontSize: 12),),
          ),],
      ));
}