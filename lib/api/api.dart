import 'package:dio/dio.dart';
import 'package:doctrosso/pages/acceuil.dart';
import 'package:shared_preferences/shared_preferences.dart';

Dio dio = Dio();
Map<String, dynamic> data = Map();
String access = "";
String refresh = "";
int heureConnexionenMinutes = 0;

Future apipost(data) async {
  final SharedPreferences prefs = await SharedPreferences.getInstance();

  try {
    Response response =
        await dio.post("http://192.168.1.162:8000/users/v1/login/", data: data);
    if (response.statusCode == 200) {
      print("Connexion reussi Token");

      //Recupération du token
      access = response.data['token']["access"];
      refresh = response.data['token']["refresh"];
      //Calcul de l'heure en minute
      DateTime now = DateTime.now();
      int heures = now.hour;
      heureConnexionenMinutes = now.minute + heures * 60;

      //sauvegarde du token en local
      await prefs.setStringList('items',
          <String>[access, refresh, heureConnexionenMinutes.toString()]);
      print(prefs.getStringList('items'));
      //return token;
      return prefs;
    } else {
      print("erreur: ${response.statusCode}");
    }
  } on DioException catch (e) {
    print("erreur : $e");
  }
}
