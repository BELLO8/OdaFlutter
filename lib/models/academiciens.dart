import 'dart:convert';

Academicien academicienFromJson(String str) =>
    Academicien.fromJson(json.decode(str));

String academicienToJson(Academicien data) => json.encode(data.toJson());

class Academicien {
  Academicien({
    required this.nom,
    required this.matricule,
    required this.prenoms,
    required this.id,
    required this.date,
    required this.photo,
  });

  String nom;
  String matricule;
  String prenoms;
  int id;
  DateTime date;
  String photo;

  factory Academicien.fromJson(Map<String, dynamic> json) => Academicien(
        nom: json["nom"],
        matricule: json["matricule"],
        prenoms: json["prenoms"],
        id: json["id"],
        date: DateTime.parse(json["date"]),
        photo: json["photo"],
      );

  Map<String, dynamic> toJson() => {
        "nom": nom,
        "matricule": matricule,
        "prenoms": prenoms,
        "id": id,
        "date":
            "${date.year.toString().padLeft(4, '0')}-${date.month.toString().padLeft(2, '0')}-${date.day.toString().padLeft(2, '0')}",
        "photo": photo,
      };
}
