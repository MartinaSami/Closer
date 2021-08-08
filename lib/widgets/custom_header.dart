import 'package:closer/file_export.dart';
import 'package:closer/utils/icons.dart';
  customHeader({BuildContext context ,String prevPageRoutName  }){
    return Container(color: greenColor,
      width:width(context),height:isLandscape(context)? 2*height(context)*.12 : height(context)*.12,
    child: Row(mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Column(
          children: [
            SizedBox(height:isLandscape(context)? 2*height(context)*.02 : height(context)*.03,),
            GestureDetector( onTap: (){Navigator.of(context).pushReplacementNamed(prevPageRoutName);},
              child: Image.asset(AppIcons.prevpage ,width:isLandscape(context)?
              .5*width(context)*.2:width(context)*.15),
            ),
          ],
        )

    ],),);
  }