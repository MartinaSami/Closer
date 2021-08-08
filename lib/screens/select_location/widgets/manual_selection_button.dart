import 'package:closer/file_export.dart';
manualSelectionButton({ BuildContext context  , Function onTapButton }){
  return  GestureDetector(onTap: onTapButton ,
      child: Center(child: Text("Select it manually "
        ,style: TextStyles.buttonTextStyle.copyWith(color:
         redColor ,decoration: TextDecoration.underline,
        ),),),);

}