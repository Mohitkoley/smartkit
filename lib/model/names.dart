// ignore_for_file: public_member_api_docs, sort_constructors_first
class Names {
  String name;
  String logo;
  Names({
    required this.name,
    required this.logo,
  });

  factory Names.fromJson(Map<String, dynamic> json) => Names(
        name: json["name"],
        logo: json["logo"],
      );

  Map<String, dynamic> toMap() => {
        "name": name,
        "logo": logo,
      };
}
