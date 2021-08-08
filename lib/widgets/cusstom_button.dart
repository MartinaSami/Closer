import 'package:closer/file_export.dart';
Widget customButton({BuildContext context  ,String routName , String buttonText : "button text " ,Function onTapButton
  ,double buttonWidth : .9}){
  return   GestureDetector(onTap: onTapButton ,
    child: Container( height: isLandscape(context) ? 2*height(context)*.07 :height(context)*.08 ,
      width: width(context)*buttonWidth,
      decoration: BoxDecoration(color: greenColor ,
          borderRadius: BorderRadius.circular(height(context)*.015)),
      child: Center(child: Text(buttonText ,style: TextStyles.buttonTextStyle,),),),
  );
}
