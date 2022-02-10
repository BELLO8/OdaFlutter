class Cagnotte {
  final String matricule_id;
  final int montant;

  const Cagnotte({required this.matricule_id, required this.montant});

  factory Cagnotte.fromJson(Map<String, dynamic> json) {
    return Cagnotte(
      matricule_id: json['matricule_id'],
      montant: json['montant'],
    );
  }
}
