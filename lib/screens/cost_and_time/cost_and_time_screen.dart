import 'package:closer/file_export.dart';
import 'package:closer/screens/cost_and_time/widgets/cost_and_time_card.dart';
class CostAndTimeScreen extends StatelessWidget {
  static const String routeName = "cost and time ";
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
                                              "",
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
                                              child: costAndTimeCard(
                                                  context: context,
                                                  cost: "10",
                                                  time: "3"),
                                            ),
                                            SizedBox(
                                                height: isLandscape(context)
                                                    ? 2 * height(context) * .1
                                                    : height(context) * .0),
                                            customButton(
                                                buttonWidth: .7,
                                                context: context,
                                                buttonText: "Confirm",
                                                onTapButton: () {
                                                  Navigator.of(context)
                                                      .pushNamed(
                                                          RecommendedDriversScreen
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
