import 'dart:convert';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:image_picker/image_picker.dart';
import 'package:oda_cagnotte/helpers/app_constant.dart';
import 'package:oda_cagnotte/models/academiciens.dart';
import 'package:oda_cagnotte/models/motif.dart';

Future<List<Academicien>> allAcademicien() async {
  List<Academicien> _list = [];
  final http.Response response = await http.get(
    Uri.parse("https://no-sir-apps.herokuapp.com/api/v1/view-all-academicien/"),
    headers: <String, String>{
      'Content-Type': 'application/json;charset=UTF-8',
    },
  );
  var data = jsonDecode(response.body);
  print(data['content'].length);
  if (response.statusCode == 200) {
    Iterable data = jsonDecode(response.body);
    _list = data.map((e) => Academicien.fromJson(e)).toList();
    return _list;
  } else {
    throw new Exception('Erreur de chargement des données');
  }
}

Future<String> countAcademicien() async {
  final http.Response response = await http.get(
    Uri.parse("https://no-sir-apps.herokuapp.com/api/v1/view-all-academicien/"),
    headers: <String, String>{
      'Content-Type': 'application/json;charset=UTF-8',
    },
  );
  var data = jsonDecode(response.body);

  if (response.statusCode == 200) {
    if (data['content'].isEmpty) {
      return "0";
    } else {
      var count = data['content'].length;
      print(count);
      return count.toString();
    }
  } else {
    throw new Exception('Erreur de chargement des données');
  }
}

Future<String> countMotif() async {
  final http.Response response = await http.get(
    Uri.parse("https://no-sir-apps.herokuapp.com/api/v1/list-of-motif/"),
    headers: <String, String>{
      'Content-Type': 'application/json;charset=UTF-8',
    },
  );
  var motif_data = jsonDecode(response.body);

  if (response.statusCode == 200) {
    if (motif_data['content'].isEmpty) {
      return "0";
    } else {
      var count_motif = motif_data['content'].length;
      print(count_motif);
      return count_motif.toString();
    }
  } else {
    throw new Exception('Erreur de chargement des données');
  }
}

Future<List<Motif>> fetchMotif() async {
  final response = await http
      .get(Uri.parse('http://no-sir-apps.herokuapp.com/api/v1/list-of-motif/'));
  if (response.statusCode == 200) {
    List jsonResponse = json.decode(response.body);
    return jsonResponse.map((data) => new Motif.fromJson(data)).toList();
  } else {
    throw Exception('Unexpected error occured!');
  }
}

Future<String> getSolde() async {
  final http.Response response = await http.get(
    Uri.parse("https://no-sir-apps.herokuapp.com/api/v1/get-solde-account/"),
    headers: <String, String>{
      'Content-Type': 'application/json;charset=UTF-8',
    },
  );
  var sold_data = jsonDecode(response.body);

  if (response.statusCode == 200) {
    var solde = sold_data['content'];
    print(solde);

    return solde.toString();
  } else {
    throw new Exception('Erreur de chargement des données');
  }
}

Future<String> countPay() async {
  final http.Response response = await http.get(
    Uri.parse("https://no-sir-apps.herokuapp.com/api/v1/all-payement/"),
    headers: <String, String>{
      'Content-Type': 'application/json;charset=UTF-8',
    },
  );
  var pay_data = jsonDecode(response.body);

  if (response.statusCode == 200) {
    if (pay_data['content'].isEmpty) {
      return "0";
    } else {
      var count_pay = pay_data['content'].length;
      print(count_pay);
      return count_pay.toString();
    }
  } else {
    throw new Exception('Erreur de chargement des données');
  }
}

Future<http.StreamedResponse> createAcademicien(
  Academicien academicien,
  XFile data,
) async {
  File _file = File(data.path);
  String fileName = _file.path.split('/').last;
  var request = http.MultipartRequest(
      'POST', Uri.parse('${AppConstants.URL_BASE}/create-academicien/'));
  request.files.add(await http.MultipartFile.fromPath('photo', _file.path,
      filename: fileName));
  // request.headers
  //     .addAll(<String, String>{'Authorization': 'Bearer ${customer.token}'});
  request.fields['nom'] = academicien.nom;
  request.fields["prenoms"] = academicien.prenoms.toString();
  request.fields["matricule"] = academicien.matricule.toString();
  // request.fields["shop_id"] = customer.shopper_id.toString();
  http.StreamedResponse response = await request.send();
  return response;
}
