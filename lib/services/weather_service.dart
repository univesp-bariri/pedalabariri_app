import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/weather.dart';

class WeatherService {
  Future<Weather> getWeatherData(String place) async {
    try {
      final queryParameters = {
        'key': '3864a41a98d347d3a24132840222711',
        'q': place,
        'lang': 'pt',
      };
      final uri = Uri.http('api.weatherapi.com', '/v1/current.json', queryParameters);
      final response = await http.get(uri);
      if(response.statusCode == 200) {
        return Weather.fromJson(jsonDecode(response.body));
      } else {
        throw Exception("Can not get weather");
      }
    } catch(e) {
      rethrow;
    }
  }
}