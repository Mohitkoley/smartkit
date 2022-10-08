import 'package:flutter/material.dart';
import 'package:alan_voice/alan_voice.dart';

class OnlineHelp extends StatefulWidget {
  const OnlineHelp({super.key});

  @override
  State<OnlineHelp> createState() => _OnlineHelpState();
}

class _OnlineHelpState extends State<OnlineHelp> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    AlanVoice.addButton(
        "2a71fd909ae83317763e62e8d91df20e2e956eca572e1d8b807a3e2338fdd0dc/stage");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text("Say HI Alan", style: TextStyle(fontSize: 30))),
    );
  }
}
