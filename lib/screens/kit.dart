// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:smartkit/model/meds.dart';

class Kit extends StatefulWidget {
  List<Meds> meds;
  Kit({
    Key? key,
    required this.meds,
  }) : super(key: key);

  @override
  State<Kit> createState() => _KitState();
}

class _KitState extends State<Kit> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Medication List",
          style: TextStyle(fontSize: 25),
        ),
      ),
      body: ListView.separated(
        separatorBuilder: (context, index) => const SizedBox(height: 10),
        itemCount: widget.meds.length,
        itemBuilder: (context, index) {
          Meds med = widget.meds[index];
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                const SizedBox(width: 10),
                Expanded(
                  child: Text("${index + 1}. ${med.med}",
                      style: TextStyle(fontSize: 18)),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
