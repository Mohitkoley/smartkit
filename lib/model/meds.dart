// ignore_for_file: public_member_api_docs, sort_constructors_first

class Meds {
  String med;
  Meds({
    required this.med,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'med': med,
    };
  }

  factory Meds.fromMap(Map<String, dynamic> map) {
    return Meds(
      med: map['med'] as String,
    );
  }
}
