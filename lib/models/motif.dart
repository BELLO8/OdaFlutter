import 'dart:convert';

Motif motifFromJson(String str) => Motif.fromJson(json.decode(str));

String motifToJson(Motif data) => json.encode(data.toJson());

class Motif {
  Motif({
    required this.id,
    required this.motif,
    required this.date,
  });

  int id;
  String motif;
  DateTime date;

  factory Motif.fromJson(Map<String, dynamic> json) => Motif(
        id: json["id"],
        motif: json["motif"],
        date: DateTime.parse(json["date"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "motif": motif,
        "date":
            "${date.year.toString().padLeft(4, '0')}-${date.month.toString().padLeft(2, '0')}-${date.day.toString().padLeft(2, '0')}",
      };
}
