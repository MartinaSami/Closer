import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class RatingPage extends StatefulWidget {
  @override
  _RatingPageState createState() => _RatingPageState();
}

class _RatingPageState extends State<RatingPage> {
  var _ratingController = TextEditingController();
  double _rating;
  int _ratingBarMode = 1;
  bool _isRTLMode = false;
  IconData _selectedIcon;

  @override
  void initState() {
    _ratingController.text = "3.0";
    super.initState();
  }
//test
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: _isRTLMode ? TextDirection.rtl : TextDirection.ltr,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            SizedBox(
              height: 40.0,
            ),
            Text(
              'Rating Bar',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
            SizedBox(
              height: 30.0,
            ),
            _ratingBar(_ratingBarMode),
            SizedBox(
              height: 30.0,
            ),
            _rating != null
                ? Text(
              "Rating: $_rating",
              style: TextStyle(fontWeight: FontWeight.bold),
            )
                : Container(),
            Row(
              children: [
                _radio(1),
                _radio(2),
                _radio(3),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Switch to RTL Mode',
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                  ),
                ),
                Switch(
                  value: _isRTLMode,
                  onChanged: (value) {
                    setState(() {
                      _isRTLMode = value;
                    });
                  },
                  activeColor: Colors.amber,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _radio(int value) {
    return Expanded(
      child: RadioListTile(
        value: value,
        groupValue: _ratingBarMode,
        dense: true,
        title: Text(
          'Mode $value',
          style: TextStyle(
            fontWeight: FontWeight.w300,
            fontSize: 12.0,
          ),
        ),
        onChanged: (value) {
          setState(() {
            _ratingBarMode = value;
          });
        },
      ),
    );
  }

  Widget _ratingBar(int mode) {
    switch (mode) {
      case 1:
        return RatingBar.builder(
          initialRating: 2,
          minRating: 1,
          allowHalfRating: true,
          unratedColor: Colors.amber.withAlpha(40),
          itemCount: 5,
          itemSize: 50.0,
          itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
          itemBuilder: (context, _) =>
              Icon(
                _selectedIcon ?? Icons.star,
                color: Colors.green,
              ),
          onRatingUpdate: (rating) {
            setState(() {
              _rating = rating;
            });
          },
        );

      case 2:
        return RatingBar.builder(
          initialRating: 2,
          minRating: 1,
          allowHalfRating: true,
          unratedColor: Colors.amber.withAlpha(40),
          itemCount: 5,
          itemSize: 50.0,
          itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
          itemBuilder: (context, _) =>
              Icon(
                _selectedIcon ?? Icons.favorite,
                color: Colors.red,
              ),
          onRatingUpdate: (rating) {
            setState(() {
              _rating = rating;
            });
          },
        );

      case 3:
        return RatingBar.builder(
          initialRating: 3,
          itemCount: 5,
          itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
          itemBuilder: (context, index) {
            switch (index) {
              case 0:
                return Icon(
                  Icons.sentiment_very_dissatisfied,
                  color: Colors.red,
                );
              case 1:
                return Icon(
                  Icons.sentiment_dissatisfied,
                  color: Colors.redAccent,
                );
              case 2:
                return Icon(
                  Icons.sentiment_neutral,
                  color: Colors.amber,
                );
              case 3:
                return Icon(
                  Icons.sentiment_satisfied,
                  color: Colors.lightGreen,
                );
              case 4:
                return Icon(
                  Icons.sentiment_very_satisfied,
                  color: Colors.green,
                );
              default:
                return Container();
            }
          },

          onRatingUpdate: (rating) {
            setState(() {
              _rating = rating;
            });
          },
        );
      default:
        return Container();
    }
  }
}