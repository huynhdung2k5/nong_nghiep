class Weather {
  final LocationWeather location;
  final CurrentWeather current;
  final List<ForecastDate> forecast;

  Weather(this.location, this.current, this.forecast);

  Weather.from(Map<String, dynamic> json)
      : location = LocationWeather.from(json['location']),
        current = CurrentWeather.from(json['current']),
        forecast = (json['forecast']['forecastday'] as List)
            .map((e) => ForecastDate.from(e))
            .toList();
  static final na = Weather(LocationWeather.na, CurrentWeather.na, [ForecastDate.na]);
}

class LocationWeather {
  final String name;
  final String country;
  final double lat;
  final double lng;
  final int timeEpoch;
  final String time;

  LocationWeather(this.name, this.country, this.lat, this.lng, this.timeEpoch, this.time);

  LocationWeather.from(Map<String, dynamic> json)
      : name = json['name'],
        country = json['country'],
        lat = json['lat'].toDouble(),
        lng = json['lon'].toDouble(),
        timeEpoch = json['localtime_epoch'],
        time = json['localtime'];

  static final na = LocationWeather('Cần Thơ', 'Vietnam', 0, 0, 0, '');
}

class CurrentWeather {
  final int temp;
  final WeatherCondition condition;
  final int wind;
  final String windDir;
  final int precip;
  final int humidity;
  final int cloud;
  final int vis;
  final int uv;

  CurrentWeather(this.temp, this.condition, this.wind, this.windDir, this.precip, this.humidity, this.cloud, this.vis, this.uv);

  CurrentWeather.from(Map<String, dynamic> json)
      : temp = json['temp_c'].round(),
        condition = WeatherCondition.from(json['condition']),
        wind = json['wind_kph'].round(),
        windDir = json['wind_dir']
            .toString()
            .replaceAll('N', ' Bắc')
            .replaceAll('S', ' Nam')
            .replaceAll('E', ' Đông')
            .replaceAll('W', ' Tây'),
        precip = json['precip_mm'].round(),
        humidity = json['humidity'],
        cloud = json['cloud'],
        vis = json['vis_km'].round(),
        uv = json['uv'].round();

  static final na = CurrentWeather(0, WeatherCondition.na, 0, '', 0, 0, 0, 0, 0);
}

class WeatherCondition {
  final String text;
  final String icon;
  final int code;

  WeatherCondition(this.text, this.icon, this.code);

  WeatherCondition.from(Map<String, dynamic> json)
      : text = json['text'],
        icon = 'http:' + json['icon'],
        code = json['code'];
  
  static final na = WeatherCondition('NA', 'http://cdn.weatherapi.com/weather/64x64/day/116.png', 0);
}

class ForecastDate {
  final String date;
  final int dateEpoch;
  final WeatherDate day;
  final List<WeatherHours> hours;

  ForecastDate(this.date, this.dateEpoch, this.day, this.hours);

  ForecastDate.from(Map<String, dynamic> json)
      : date = json['date'],
        dateEpoch = json['date_epoch'],
        day = WeatherDate.from(json['day']),
        hours = (json["hour"] as List).map((e) => WeatherHours.from(e)).toList();

  static final na = ForecastDate('', 0, WeatherDate.na, []);
}

class WeatherDate {
  final int maxTemp;
  final int minTemp;
  final int avgTemp;
  final int maxWind;
  final int totalPrecip;
  final int avgVis;
  final int avgHumidity;
  final WeatherCondition condition;
  final int uv;

  WeatherDate(this.maxTemp, this.minTemp, this.avgTemp, this.maxWind, this.totalPrecip, this.avgVis, this.avgHumidity, this.condition, this.uv);
  WeatherDate.from(Map<String, dynamic> json)
      : maxTemp = json['maxtemp_c'].round(),
        minTemp = json['mintemp_c'].round(),
        avgTemp = json['avgtemp_c'].round(),
        maxWind = json['maxwind_kph'].round(),
        totalPrecip = json['totalprecip_mm'].round(),
        avgVis = json['avgvis_km'].round(),
        avgHumidity = json['avghumidity'].round(),
        condition = WeatherCondition.from(json['condition']),
        uv = json['uv'].round();

  static final na = WeatherDate(0, 0, 0, 0, 0, 0, 0, WeatherCondition.na, 0);
}

class WeatherHours {
  final int timeEpoch;
  final String time;
  final int temp;
  final WeatherCondition condition;
  final int wind;
  final String windDir;
  final int precip;
  final int humidity;
  final int cloud;
  final int vis;
  final int uv;

  WeatherHours(this.timeEpoch, this.time, this.temp, this.condition, this.wind, this.windDir, this.precip, this.humidity, this.cloud, this.vis, this.uv);

  WeatherHours.from(Map<String, dynamic> json)
      : timeEpoch = json['time_epoch'],
        time = json['time'],
        temp = json['temp_c'].round(),
        condition = WeatherCondition.from(json['condition']),
        wind = json['wind_kph'].round(),
        windDir = json['wind_dir'],
        precip = json['precip_mm'].round(),
        humidity = json['humidity'],
        cloud = json['cloud'],
        vis = json['vis_km'].round(),
        uv = json['uv'].round();
}