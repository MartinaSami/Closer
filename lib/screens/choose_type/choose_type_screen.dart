import 'package:closer/file_export.dart';
import 'package:closer/screens/choose_type/widgets/single_car_type_button.dart';

class ChooseTypeScreen extends StatelessWidget {
  static const String routeName = "choose Type";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: Container(
        height: height(context),
        width: width(context),
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Center(
                    child: Stack(
                  children: [
                    Container(
                      child: Column(
                        children: [
                          Container(
                            height: height(context),
                            child: Stack(
                              children: [
                                Container(
                                    height: height(context),
                                    width: width(context),
                                    child: CustomGoogleMap())
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Column(
                      children: [
                        Container(
                          height: height(context),
                          child: Stack(
                            children: [
                              Container(
                                padding:
                                    EdgeInsets.only(top: height(context) * .1),
                                alignment: Alignment.topCenter,
                                height: height(context),
                                child: Column(
                                  children: [
                                    Expanded(
                                      child: SingleChildScrollView(
                                        child: Column(
                                          children: [
                                            Text(
                                              "Choose type,please !  ",
                                              style: TextStyles
                                                  .greenBoldTextStyle
                                                  .copyWith(fontSize: 30),
                                            ),
                                            SizedBox(
                                                height: isLandscape(context)
                                                    ? 2 * height(context) * .05
                                                    : height(context) * .4),
                                            Container(
                                              height: height(context) * .3,
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceAround,
                                                children: [
                                                  singleChooseTypeButton(
                                                      context: context,
                                                      carType: "Economy",
                                                      iconPath:
                                                          AppIcons.economy,
                                                      onTapCarType: () {}),
                                                  singleChooseTypeButton(
                                                      context: context,
                                                      carType: "Luxury",
                                                      iconPath: AppIcons.luxury,
                                                      onTapCarType: () {}),
                                                  singleChooseTypeButton(
                                                      context: context,
                                                      carType: "Family",
                                                      iconPath: AppIcons.family,
                                                      onTapCarType: () {}),
                                                ],
                                              ),
                                            ),
                                            SizedBox(
                                                height: isLandscape(context)
                                                    ? 2 * height(context) * .1
                                                    : height(context) * .0),
                                            customButton(
                                                context: context,
                                                buttonText: "Request",buttonWidth: .7,
                                                onTapButton: () {
                                                  Navigator.of(context)
                                                      .pushNamed(
                                                          CostAndTimeScreen
                                                              .routeName);
                                                })
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
