import 'package:closer/file_export.dart';
import 'package:closer/utils/text_styles.dart';

singleChooseTypeButton({BuildContext context ,String carType , String iconPath , Function onTapCarType  }){
  return  Column(
    children: [
      Container(
        child: GestureDetector(onTap:onTapCarType ,
          child: Container(child: Image.asset(iconPath),
            width: width(context)*.32,height: height(context)*.15,decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(5) ),border:
            Border.all(color: greenColor ,width: 3)
            ),),
        ),
      ),
      Text(carType , style: TextStyles.descriptionTextStyle.copyWith(color: greenColor),)
    ],
  );
}