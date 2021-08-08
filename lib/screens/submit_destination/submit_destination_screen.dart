import 'package:closer/file_export.dart';

class SubmitDestinationScreen extends StatelessWidget {
  static const String routeName = "submit destination ";

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

                           SingleChildScrollView(
                            child: Column(
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
                                            CustomTextFromField(
                                              hintText: " What is your destination ! ",
                                            ),
                                            SizedBox(
                                                height: isLandscape(context)
                                                    ? 2 * height(context) * .25
                                                    : height(context) * .7),
                                            customButton(
                                                context: context,
                                                buttonText: "Apply",buttonWidth: .7,
                                                onTapButton: () {
                                                  Navigator.of(context).pushNamed(
                                                      ChooseTypeScreen.routeName);
                                                })
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
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
