import 'package:dio/dio.dart';
import 'package:doctrosso/pages/acceuil.dart';
import 'package:shared_preferences/shared_preferences.dart';

Dio dio = Dio();
Map<String, dynamic> data = Map();
String access = "";
String refresh = "";
int heureConnexionenMinutes = 0;

Future apiPostLogin(data) async {
  final SharedPreferences prefs = await SharedPreferences.getInstance();

  try {
    Response response = await dio
        .post("http://192.168.1.162:8000/users/v1/login_patients/", data: data);
    if (response.statusCode == 200) {
      print("Connexion reussi Token");
      //recupération des paramètre de connexion;

      //Recupération du token
      access = response.data["access"];
      refresh = response.data["refresh"];

      //Calcul de l'heure en minute
      DateTime now = DateTime.now();
      int heures = now.hour;
      heureConnexionenMinutes = now.minute + heures * 60;

      //parametre sauvegarde

      String username = data["username"];
      String password = data["password"];

      //sauvegarde du token en local
      await prefs.setStringList('items', <String>[
        access,
        refresh,
        heureConnexionenMinutes.toString(),
        username,
        password
      ]);
      print(prefs.getStringList('items'));
    } else {
      print("erreur: ${response.statusCode}");
    }
  } catch (e) {
    print("erreur : $e");
  }
}

Future getLocal() async {
  final SharedPreferences prefs = await SharedPreferences.getInstance();
  final List<String>? items = prefs.getStringList('items');
  return items;
}

Future apiGetLogin() async {
  final List<String>? items = await getLocal();

  if (items != null && items.isNotEmpty) {
    String tokenAccess = items[0];
    dio.options.headers['Authorization'] = 'Bearer $tokenAccess';
    try {
      Response response =
          await dio.get("http://192.168.1.162:8000/users/v1/users/get_users/");
      if (response.statusCode == 200) {
        print("Requete GET envoyé avec succès " +
            response.data['patients']['code_patient']);
        return response.data;
      } else {
        print("erreur statut = ${response.statusCode}");
      }
    } catch (e) {
      print('erreur: $e');
    }
  } else {
    print('La liste est vide ou null.');
  }
}
