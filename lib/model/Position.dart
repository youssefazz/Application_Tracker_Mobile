class Position {
  int id = 0;
  String longitude;
  String latitude;
  String date = '';

  Position({required this.longitude, required this.latitude});

  factory Position.fromJson(Map<String, dynamic> json) {
    return Position(
      longitude: json['longitude'],
      latitude: json['latitude'],
    );
  }
}
