import 'package:closer/file_export.dart';

costAndTimeCard( {BuildContext context  , String cost , String time }){
  return Row(
    mainAxisAlignment:
    MainAxisAlignment
        .center ,
    children: [
      Container
        (width: width(context)*.9,height:isLandscape(context) ? 2* height(context)*.08 : height(context)*.08,
        decoration: BoxDecoration(color: whiteColor ,borderRadius:
        BorderRadius.all(
            Radius.circular(5)),),alignment: Alignment.center,
        child: Center(
          child: Column(

            children: [
              SizedBox(height:isLandscape(context) ?  2*height(context)*.02 :  height(context)*.02),
              Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    child: Row(mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("cost : "
                          , style: TextStyles.greenBoldTextStyle,),
                        Text("${cost} \$"
                          ,style: TextStyles.greenBoldTextStyle.copyWith(color:
                          redColor ,fontSize: 20),
                        )
                      ],),
                  ),
                  Container(
                    child: Row(mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Time : "
                          , style: TextStyles.greenBoldTextStyle,),
                        Text("${time} m "
                          ,style: TextStyles.greenBoldTextStyle.copyWith(color: redColor ,fontSize: 20), )
                      ],),
                  ),
                ],
              ),



            ],
          ),
        ),)
    ],
  );
}