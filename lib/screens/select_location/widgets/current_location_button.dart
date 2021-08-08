import 'package:closer/file_export.dart';
useCurrentLocationButton({ BuildContext context  , Function onTapButton }){
  return  GestureDetector(onTap: onTapButton ,
    child: Container( height: isLandscape(context) ? 2*height(context)*.08 :height(context)*.08 ,
      width: width(context)*.9,
      decoration: BoxDecoration(color: whiteColor,border: Border.all(color: greenColor ,width: 2),
          borderRadius: BorderRadius.circular(height(context)*.015)),
      child: Center(child: Text("Use Current Location"
        ,style: TextStyles.buttonTextStyle.copyWith(color: greenColor , ),),),),
  );

}