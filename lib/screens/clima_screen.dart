import 'package:flutter/material.dart';
import 'package:pedala_bariri/mycolors/mycolors.dart';
import '../services/weather_service.dart';
import '../models/weather.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  WeatherService weatherService = WeatherService();
  Weather weather = Weather();

  String currentWeather = "";
  double tempC = 0;
  double tempF = 0;
  String iconImg = "img/weather/64x64/day/113.png";

  @override
  void initState() {
    super.initState();
    getWeather();
  }

  void getWeather() async {
    weather = await weatherService.getWeatherData("Bariri");

    setState(() {
      currentWeather = weather.condition;
      tempC = weather.temperatureC;
      iconImg = weather.icon.replaceAll('//cdn.weatherapi.com', 'img');
    });
    print(weather.temperatureC);
    print(weather.condition);
    print(weather.icon);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.topCenter,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("img/weather/day.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        height: MediaQuery.of(context).size.height,
        child: Column (
        children: [
          Container(
            color: const Color.fromRGBO(50, 120, 255, 0.5),
            padding: const EdgeInsets.only(bottom: 20),
            height: 400,
            alignment: Alignment.topCenter,
            child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 50),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  Text(
                    "Tempo agora em Bariri" ,
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 15),
              Container(
                padding: const EdgeInsets.only(right: 35),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image(
                    image: AssetImage(iconImg),
                    ),
                  Text(
                      '$tempCºC',
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                      ),
                  ),
                ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(currentWeather,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                  ),
                  ),
                ],
            ),
          ],
        ),
      ),
          Container(
            color: Colors.white,
            height: 200,
            alignment: Alignment.center,
            padding: EdgeInsets.all(20),
            child: const Text(
              "Programa-se para aproveitar ao máximo seu passeio, e explorar toda experiência que o cicloturismo baririense tem a orefecer.",
              style: TextStyle(
                fontSize: 22,
                color: const Color.fromRGBO(50, 120, 255, 1),
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
        ),
      ),
    );
  }
}
