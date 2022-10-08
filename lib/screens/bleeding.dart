// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:smartkit/model/enums.dart';
import 'package:smartkit/model/guidlines.dart';

class Bleeding extends StatefulWidget {
  Bleeding({Key? key}) : super(key: key);

  @override
  State<Bleeding> createState() => _BleedingState();
}

class _BleedingState extends State<Bleeding> {
  //fake data
  final List<Guidlines> bleedingData = [
    Guidlines(
      header: "Treatment 🧑‍⚕️",
      steps: [
        Steps(
            step: "1. During severe bleeding ,allow the patient to lie down",
            type: data.text),
        Steps(step: "assets/pics/steps_bleeding/step1.jpg", type: data.image),
        Steps(step: "2. Remove any waste from the wound ", type: data.text),
        Steps(step: "assets/pics/steps_bleeding/step2.jpg", type: data.image),
        Steps(
            step:
                "3. Apply hard pressure directly to the wound untill bleeding stop ",
            type: data.text),
        Steps(step: "assets/pics/steps_bleeding/step3.jpg", type: data.image),
        Steps(step: "4. Look for leak from wound.,", type: data.text),
        Steps(step: "5. Monitor the breathing ", type: data.text),
        Steps(step: "assets/pics/steps_bleeding/step5.jpg", type: data.image),
        Steps(
            step:
                "6. In case of bleeding of head,neck, or arm affected part should be eleveted at 45 angle to reduse blood loss.",
            type: data.text),
        Steps(step: "assets/pics/steps_bleeding/step6.jpg", type: data.image),
      ],
    ),
    Guidlines(header: "Medicine 💊", steps: [
      Steps(step: "1. Home remedies- turmeric paste", type: data.text),
      Steps(step: "2. Pain - paracetamol,ibuprofen", type: data.text)
    ]),
    Guidlines(header: "Dont's 🚫", steps: [
      Steps(step: "1. do not let the person eat", type: data.text),
    ])
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Bleeding"),
        ),
        body: ListView(
          children: bleedingData.map(buildTile).toList(),
        ));
  }

  Widget buildTile(Guidlines guidlines) => ExpansionTile(
        title: Text(guidlines.header),
        children: guidlines.steps
            .map((steps) => TextOrImageData(steps: steps))
            .toList(),
      );
}

class TextOrImageData extends StatelessWidget {
  final Steps steps;
  const TextOrImageData({
    Key? key,
    required this.steps,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 10,
        ),
        Expanded(
          child: Align(
            alignment: Alignment.centerLeft,
            child: steps.type == data.text
                ? Text(
                    "${steps.step}\n",
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                    maxLines: 4,
                  )
                : Image.asset(
                    steps.step,
                    height: 200,
                    width: 200,
                  ),
          ),
        ),
      ],
    );
  }
}
