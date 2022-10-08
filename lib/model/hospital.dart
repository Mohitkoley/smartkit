// ignore_for_file: public_member_api_docs, sort_constructors_first
class Hospital {
  final String image;
  final String name;
  final String features;
  final String address;
  final String map;
  Hospital({
    required this.image,
    required this.name,
    required this.features,
    required this.address,
    required this.map,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'image': image,
      'name': name,
      'features': features,
      'address': address,
      'map': map,
    };
  }

  factory Hospital.fromMap(Map<String, dynamic> map) {
    return Hospital(
      image: map['image'] as String,
      name: map['name'] as String,
      features: map['features'] as String,
      address: map['address'] as String,
      map: map['map'] as String,
    );
  }
}
