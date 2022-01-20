import 'package:app_tracker/api/position_service.dart';
import 'package:app_tracker/model/Position.dart';
import 'package:app_tracker/screens/map_position.dart';
import 'package:flutter/material.dart';

class PositionList extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => PositionListState();
}

class PositionListState extends State {
  PositionService service = PositionService();
  int count = 1;
  List<Position> positionList = [Position(latitude: '', longitude: '')];
  @override
  Widget build(BuildContext context) {
    // ignore: unnecessary_null_comparison
    if (positionList == null) {
      getData();
    }
    return Scaffold(body: positionListItems());
  }

  ListView positionListItems() {
    return ListView.builder(
      itemBuilder: (BuildContext context, int position) {
        return Card(
          color: Colors.white,
          elevation: 3.0,
          child: ListTile(
            title: Text("Longitude : "),
            subtitle: Text("Latitude : "),
            onTap: () {
              navigateToPositionMap(Position(latitude: '', longitude: ''));
            },
          ),
        );
      },
    );
  }

  Future<void> navigateToPositionMap(Position position) async {
    bool result = await Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => MapPosition()),
    );
    if (result == true) {
      getData();
    }
  }

  void getData() {
    /*final positionFuture = service.getPosition();
    positionFuture.then((value) {
      // ignore: deprecated_member_use
      List<Position> positions = List<Position>();
      count = value.id;
      for (int i = 0; i < count; i++) {
        positions.add(Position.fromJson(value[i]));
      }
    });*/
  }
}
