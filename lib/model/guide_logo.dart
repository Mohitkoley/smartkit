// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:smartkit/model/enums.dart';

class GuideLogo {
  String logo;
  String name;
  screens screen;
  GuideLogo({
    required this.logo,
    required this.name,
    required this.screen,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'logo': logo,
      'name': name,
      'screen': screen,
    };
  }

  factory GuideLogo.fromMap(Map<String, dynamic> map) {
    return GuideLogo(
      logo: map['logo'] as String,
      name: map['name'] as String,
      screen: map['screen'] as screens,
    );
  }
}
