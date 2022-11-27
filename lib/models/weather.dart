class Weather {
  final double temperatureC;
  final String condition;
  final String icon;

  Weather({
    this.temperatureC = 0,
    this.condition = "Sunny",
    this.icon = ""
  });

  factory Weather.fromJson(Map<String, dynamic> json) {
    return Weather(
      temperatureC: json['current']['temp_c'],
      condition: json['current']['condition']['text'],
      icon: json['current']['condition']['icon'],
    );
  }
}