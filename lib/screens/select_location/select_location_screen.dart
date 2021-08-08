import 'package:closer/file_export.dart';
import 'package:closer/screens/select_location/widgets/current_location_button.dart';
import 'package:closer/screens/select_location/widgets/manual_selection_button.dart';
class SelectLocationScreen extends StatelessWidget {
  static const String routeName = "select location ";
  final String userNumber = "0102324564742";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
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
                            Image.asset(
                              AppImages.yourLocation,
                              height: isLandscape(context)
                                  ? 3 * height(context) * .4
                                  : height(context) * .35,
                              fit: BoxFit.fill,
                              width: width(context),
                            ),
                            SizedBox(
                                height: isLandscape(context)
                                    ? 2 * height(context) * .01
                                    : height(context) * .0 ),
                            Text(
                              "Hi  , Nice to meet you ! ",
                              style: TextStyles.greenBoldTextStyle.copyWith(
                                  fontSize: isLandscape(context)
                                      ? 2 * height(context) * .032
                                      : height(context) * .032),
                            ),
                            SizedBox(
                                height: isLandscape(context)
                                    ? 2 * height(context) * .01
                                    : height(context) * .01),
                            Text(
                              "Choose your location to start ",
                              style: TextStyles.descriptionTextStyle.copyWith(
                                  fontSize: isLandscape(context)
                                      ? 2 * height(context) * .032
                                      : height(context) * .02,
                                  color: greyColor),
                            ),
                            SizedBox(
                                height: isLandscape(context)
                                    ? 2 * height(context) * .01
                                    : height(context) * .01),
                            Text(
                              "Please ${userNumber}",
                              style: TextStyles.descriptionTextStyle.copyWith(
                                  fontSize: isLandscape(context)
                                      ? 2 * height(context) * .032
                                      : height(context) * .02,
                                  color: greyColor),
                            ),
                            SizedBox(
                                height: isLandscape(context)
                                    ? 2 * height(context) * .01
                                    : height(context) * .1),
                            useCurrentLocationButton(
                              context: context,
                              onTapButton: () {
                                Navigator.of(context).pushNamed(
                                    SubmitDestinationScreen.routeName);
                              },
                            ),
                            SizedBox(
                                height: isLandscape(context)
                                    ? 2 * height(context) * .01
                                    : height(context) * .2),
                            manualSelectionButton(
                              context: context,
                              onTapButton: () {},
                            ),
                            SizedBox(
                                height: isLandscape(context)
                                    ? 2 * height(context) * .05
                                    : 0),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
