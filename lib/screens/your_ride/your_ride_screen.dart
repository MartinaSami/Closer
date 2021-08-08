import 'package:closer/file_export.dart';

import 'package:closer/screens/your_ride/reting_page.dart';


class YourRideScreen extends StatelessWidget {
  static const String routeName = "your ride ";


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
        appBarTheme: AppBarTheme(
          textTheme: TextTheme(
            headline6: Theme.of(context).textTheme.headline6.copyWith(
              color: Colors.white,
            ),
          ),
        ),
      ),
      home: Builder(
        builder: (context) => Scaffold(
          appBar: AppBar(
            title: Text('Ride Rating'),
            backgroundColor: Colors.green,
          ),
          body: Container(
              padding: EdgeInsets.only(top: 50),
              child: RatingPage()),
        ),
      ),
    );
  }


}
