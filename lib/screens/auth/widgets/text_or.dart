import 'package:closer/file_export.dart';
textOr({BuildContext context}){
  return   Container(width: width(context)*.9,
      child: Row(mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Or" , style:
          TextStyles.descriptionTextStyle.copyWith(color: greenColor),),
        ],
      ));
}