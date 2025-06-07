class Weather {
  final String CityName;
  final double Temperature;
  final String MainCondition;

  Weather({
    required this.CityName,
    required this.Temperature,
    required this.MainCondition,
  });

  factory Weather.fromJson(
    Map<String , dynamic> json
  ){
      return Weather(
        CityName: json['name'] ,
        Temperature: json['main']['temp'].toDouble() ,
        MainCondition: json['weather'][0]['main'] ,
        );
  } 
}