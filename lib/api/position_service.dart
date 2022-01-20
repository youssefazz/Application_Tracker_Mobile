import 'dart:convert';

import 'package:app_tracker/model/Position.dart';
import 'package:http/http.dart' as http;

class PositionService {
  Future<Position> getPosition() async {
    final response=await http
        .get(Uri.parse('http://localhost:8080/App_Tracking_web/positions'));
        
    if (response.statusCode == 200) {
      return Position.fromJson(jsonDecode(response.body));
    }else{
      throw Exception('Failed to load album');
    }
  }
}
