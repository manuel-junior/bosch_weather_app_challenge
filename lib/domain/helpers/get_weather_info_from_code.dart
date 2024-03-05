// TODO: Improve this code to load from  a file https://gist.github.com/stellasphere/9490c195ed2b53c707087c8c2db4ec0c
Map getWeatherInfoFromCode(int code) {
  switch (code) {
    case 1:
      return _weatherDescription(
          code, "Mainly Sunny", "Mainly Clear", "sun.svg");
    case 2:
      return _weatherDescription(code, "Partly Cloudy", "Partly Cloudy");
    case 45:
      return _weatherDescription(code, "Foggy", "Foggy");
    case 48:
      return _weatherDescription(code, "Rime Fog", "Rime Fog");
    case 51:
      return _weatherDescription(code, "Light Drizzle", "Light Drizzle");
    case 53:
      return _weatherDescription(code, "Drizzle", "Drizzle");
    case 55:
      return _weatherDescription(code, "Heavy Drizzle", "Heavy Drizzle");
    case 56:
      return _weatherDescription(
          code, "Light Freezing Drizzle", "Light Freezing Drizzle");
    case 57:
      return _weatherDescription(code, "Freezing Drizzle", "Freezing Drizzle");
    case 61:
      return _weatherDescription(
          code, "Light Rain", "Light Rain", "weather-rain.svg");
    case 63:
      return _weatherDescription(code, "Rain", "Rain", "weather-rain.svg");
    case 65:
      return _weatherDescription(
          code, "Heavy Rain", "Heavy Rain", "weather-rain.svg");
    case 66:
      return _weatherDescription(code, "Light Freezing Rain",
          "Light Freezing Rain", "weather-rain.svg");
    case 67:
      return _weatherDescription(
          code, "Freezing Rain", "Freezing Rain", "weather-rain.svg");
    case 71:
      return _weatherDescription(code, "Light Snow", "Light Snow");
    case 73:
      return _weatherDescription(code, "Snow", "Snow");
    case 75:
      return _weatherDescription(code, "Heavy Snow", "Heavy Snow");
    case 77:
      return _weatherDescription(code, "Snow Grains", "Snow Grains");
    case 80:
      return _weatherDescription(code, "Light Showers", "Light Showers");
    case 81:
      return _weatherDescription(
          code, "Showers", "Showers", "weather-rain.svg");
    case 82:
      return _weatherDescription(
          code, "Heavy Showers", "Heavy Showers", "weather-rain.svg");
    case 85:
      return _weatherDescription(
          code, "Light Snow Showers", "Light Snow Showers");
    case 86:
      return _weatherDescription(code, "Snow Showers", "Snow Showers");
    case 95:
      return _weatherDescription(code, "Thunderstorm", "Thunderstorm");
    case 96:
      return _weatherDescription(code, "Light Thunderstorms With Hail",
          "Light Thunderstorms With Hail");
    case 99:
      return _weatherDescription(
          code, "Thunderstorm With Hail", "Thunderstorm With Hail");
    default:
      return _weatherDescription(code, "Sunny", "Clear", "sun.svg");
  }
}

_weatherDescription(int code, String day, String night, [String? icon]) {
  return {
    "code": code,
    "descriptionDay": day,
    "descriptionNight": night,
    "icon": "assets/icons/${icon ?? "cloud.svg"}"
  };
}
