import 'dart:convert';

class Academicien {
  final String matricule;
  final String nom;
  final String prenoms;

  const Academicien({
    required this.matricule,
    required this.nom,
    required this.prenoms,
  });

  factory Academicien.fromJson(Map<String, dynamic> json) {
    return Academicien(
      matricule: json['matricule'],
      nom: json['nom'],
      prenoms: json['prenoms'],
    );
  }
}
