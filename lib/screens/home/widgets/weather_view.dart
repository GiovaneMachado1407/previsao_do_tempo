import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/parser.dart';
import 'package:previsao_do_tempo/models/weather.dart';

class WeatherView extends StatelessWidget {
  final Weather weather;

  const WeatherView(this.weather);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 5,
      ),
      child: Column(
        children: [
          Text(
            this.weather.dayOfWeek,
          ),
          SvgPicture.asset(
            this.weather.icon,
          ),
          Text("${this.weather.temperature}°"),
        ],
      ),
    );
  }
}
