import 'package:statemanagement_2/enum&switch/weather.dart';

void main() {
  getWeather(Weather.Snowy);
}

getWeather(Weather weather) {
  switch (weather) {
    case Weather.Cloudy:
      print("Weather is cloudy");
      break;
    case Weather.Sunny:
      print("Weather is sunny");
      break;
    case Weather.Rainy:
      print("Weather is rainy");
      break;
    case Weather.Snowy:
      print("Weather is snowy");
      break;
    default:
      print("I don't know");
  }
}
