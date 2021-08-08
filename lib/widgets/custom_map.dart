import 'package:closer/file_export.dart';
class CustomGoogleMap extends StatefulWidget {
  static const LatLng _center =
  const LatLng(24.723201041398024, 46.67196272469909);

// second _ on map created
final String map ;
  CustomGoogleMap({
  this.map

  });

  @override
  _CustomGoogleMapState createState() => _CustomGoogleMapState();
}

class _CustomGoogleMapState extends State<CustomGoogleMap> {
  Completer<GoogleMapController> _controller = Completer();

  void _onMapCreated(GoogleMapController controller) {
    _controller.complete(controller);
    setState(() {
      markers.add(
        Marker(
            markerId: MarkerId("1"),
            position: LatLng(24.723201041398024, 46.67196272469909),
            infoWindow: InfoWindow(
              title: "Riyadh",
            )),
      );
    });
  }

  var markers = HashSet<Marker>();

  BitmapDescriptor customMarkerImage;

  getCustomMarker() async {
    customMarkerImage = await BitmapDescriptor.fromAssetImage(
      ImageConfiguration.empty,
      'assets/images/cart.png',
    );
  }

  Set<Circle> circles = Set.from([
    Circle(
        circleId: CircleId("1"),
        center: LatLng(24.723201041398024, 46.67196272469909),
        radius: 5000,
        fillColor: greenColor.withOpacity(.4),
        strokeWidth: 0,
        visible: true)
  ]);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: width(context),
          height: height(context),
          child: GoogleMap(
            onMapCreated: _onMapCreated,
            markers: markers,
            circles: circles,
            initialCameraPosition: CameraPosition(
              target: CustomGoogleMap._center,
              zoom: 11.0,
            ),
          ),
        ),
      ],
    );
  }
}
