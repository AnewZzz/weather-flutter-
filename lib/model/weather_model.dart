class WeatherModel {
  final String temperature;
  final DateTime dateTime;
  final String networkImage;
  final String weatherType;

  WeatherModel(
      {required this.temperature,
      required this.dateTime,
      required this.networkImage,
      required this.weatherType});
}

List<WeatherModel> weatherList = [
  WeatherModel(
      temperature: '20 \u2103',
      dateTime: DateTime(DateTime.now().year, DateTime.now().month,
          DateTime.now().day, 12, 45),
      networkImage:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTtLVyuZjyvYjumLJLSLVeCuQf0uxiAjbNX5c-JGr10dA&s%27',
      weatherType: 'Colud'),
  WeatherModel(
      temperature: '47 \u2103',
      dateTime: DateTime(DateTime.now().year, DateTime.now().month,
          DateTime.now().day + 1, 11, 33),
      networkImage:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTFBDhvq6beDSOg19H8UQV2l30Im9_OE6y--59EuEeb6Q&s%27',
      weatherType: 'Rain'),
  WeatherModel(
      temperature: '-5 \u2103',
      dateTime: DateTime(DateTime.now().year, DateTime.now().month,
          DateTime.now().day + 2, 12, 45),
      networkImage:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTtLVyuZjyvYjumLJLSLVeCuQf0uxiAjbNX5c-JGr10dA&s%27',
      weatherType: 'Colud'),
  WeatherModel(
      temperature: '7 \u2103',
      dateTime: DateTime(DateTime.now().year, DateTime.now().month,
          DateTime.now().day + 3, 5, 05),
      networkImage:
          'https://freepngimg.com/thumb/weather/23648-2-weather-picture-thumb.png',
      weatherType: 'Rainny'),
  WeatherModel(
      temperature: '22 \u2103',
      dateTime: DateTime(DateTime.now().year, DateTime.now().month,
          DateTime.now().day + 4, 15, 85),
      networkImage: 'https://freepngimg.com/thumb/categories/2275.png',
      weatherType: 'Rainny'),
  WeatherModel(
      temperature: '67 \u2103',
      dateTime: DateTime(DateTime.now().year, DateTime.now().month,
          DateTime.now().day + 5, 13, 34),
      networkImage: 'https://freepngimg.com/thumb/categories/2275.png',
      weatherType: 'Rainny'),
  WeatherModel(
      temperature: '9 \u2103',
      dateTime: DateTime(DateTime.now().year, DateTime.now().month,
          DateTime.now().day + 6, 8, 25),
      networkImage: 'https://freepngimg.com/thumb/categories/2275.png',
      weatherType: 'hot'),
];
