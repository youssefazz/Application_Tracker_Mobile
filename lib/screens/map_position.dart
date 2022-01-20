import 'package:app_tracker/model/Position.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
// ignore: library_prefixes
import 'package:latlong2/latlong.dart' as latLng;

class MapPosition extends StatefulWidget {
  late Position position = Position(latitude: '', longitude: '');
  @override
  State<StatefulWidget> createState() => MapPositionState(position);
}

class MapPositionState extends State {
  MapPositionState(Position position);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: FlutterMap(
      options: MapOptions(
        center: latLng.LatLng(31.6534, -8.0212),
        zoom: 16.0,
      ),
      layers: [
        TileLayerOptions(
            urlTemplate:
                "https://api.mapbox.com/styles/v1/azzouz11/ckym705fl0v9314pe8ej5j9wp/tiles/256/{z}/{x}/{y}@2x?access_token=pk.eyJ1IjoiYXp6b3V6MTEiLCJhIjoiY2t4cGR1ZGQ5MDhxYjJwcHRpYzlqc3dobSJ9.QTdsKQ3up-yilnCVRb4s0A",
            additionalOptions: {
              'accessToken':
                  'pk.eyJ1IjoiYXp6b3V6MTEiLCJhIjoiY2t4cGR1ZGQ5MDhxYjJwcHRpYzlqc3dobSJ9.QTdsKQ3up-yilnCVRb4s0A',
              'id': 'mapbox.mapbox-streets-v8'
            }),
        MarkerLayerOptions(
          markers: [
            Marker(
              width: 80.0,
              height: 80.0,
              point: latLng.LatLng(31.6534, -8.0212),
              builder: (ctx) => Container(
                child: FlutterLogo(),
              ),
            ),
          ],
        ),
      ],
    ));
  }
}
