import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:oda_cagnotte/models/academiciens.dart';
import 'package:oda_cagnotte/models/cagnotte.dart';

const String _baseUrl = "https://bitter-wolverine-5.loca.lt/academicien/";

Future<Academicien> getAcademicien() async {
  final response = await http.get(Uri.parse(_baseUrl));

  if (response.statusCode == 200) {
    return Academicien.fromJson(jsonDecode(response.body));
  } else {
    throw new Exception('Erreur de chargement des données');
  }
}

Future<Academicien> AddAcademicien(
  String matricule,
  String nom,
  String prenoms,
) async {
  final http.Response response = await http.post(
    Uri.parse('https://bitter-wolverine-5.loca.lt/academicien/'),
    headers: <String, String>{
      'Content-Type': 'application/json;charset=UTF-8',
    },
    body: jsonEncode(<String, String>{
      'matricule': matricule,
      'nom': nom,
      'prenoms': prenoms,
    }),
  );
  if (response.statusCode == 200) {
    print("${response.body.toString()}");
    return Academicien.fromJson(jsonDecode(response.body));
  } else {
    throw new Exception('Erreur de chargement des données');
  }
}

Future<Cagnotte> AddCagnotte(
  String matricule_id,
  int montant,
) async {
  final http.Response response = await http.post(
    Uri.parse('https://bitter-wolverine-5.loca.lt/add-cagnotte/'),
    headers: <String, String>{
      'Content-Type': 'application/json;charset=UTF-8',
    },
    body: jsonEncode(<String, String>{
      'matricule_id': matricule_id,
      'montant': "100",
    }),
  );
  if (response.statusCode == 200) {
    return Cagnotte.fromJson(jsonDecode(response.body));
  } else {
    throw new Exception('Erreur de chargement des données');
  }
}