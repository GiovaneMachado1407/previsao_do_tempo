import 'package:dio/dio.dart';

Future<Map> getData() async {
  var response =
      await Dio().get("https://api.hgbrasil.com/weather?ea57bfe5woeid=455823");

  return response.data;
}
