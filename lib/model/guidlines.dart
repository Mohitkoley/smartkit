// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:smartkit/model/enums.dart';

class Guidlines {
  String header;
  List<Steps> steps;

  Guidlines({
    required this.header,
    required this.steps,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'header': header,
      'steps': steps.map((x) => x.toMap()).toList(),
    };
  }

  factory Guidlines.fromMap(Map<String, dynamic> map) {
    return Guidlines(
      header: map['header'] as String,
      steps: List<Steps>.from(
        (map['steps'] as List<int>).map<Steps>(
          (x) => Steps.fromMap(x as Map<String, dynamic>),
        ),
      ),
    );
  }
}

class Steps {
  String step;
  data type;
  Steps({
    required this.type,
    required this.step,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'step': step,
      'type': type,
    };
  }

  factory Steps.fromMap(Map<String, dynamic> map) {
    return Steps(
      step: map['step'] as String,
      type: map['type'] as data,
    );
  }
}
