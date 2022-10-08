import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smartkit/model/enums.dart';
import 'package:smartkit/model/guide_logo.dart';
import 'package:smartkit/model/meds.dart';
import 'package:smartkit/screens/kit.dart';

class Guide extends StatefulWidget {
  Guide({Key? key}) : super(key: key);

  @override
  State<Guide> createState() => _GuideState();
}

class _GuideState extends State<Guide> {
  List<GuideLogo> guidelogos = [
    GuideLogo(
        name: "Forest",
        screen: screens.forest,
        logo: "assets/pics/guide_logos/forest.png"),
    GuideLogo(
        name: "Mountain",
        screen: screens.mountain,
        logo: "assets/pics/guide_logos/mountain.png"),
    GuideLogo(
        name: "Travelling",
        screen: screens.travelling,
        logo: "assets/pics/guide_logos/travelling.png"),
    GuideLogo(
        name: "Herb",
        screen: screens.travelling,
        logo: "assets/pics/guide_logos/book.jpg"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: GridView.builder(
                itemCount: guidelogos.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 5,
                    childAspectRatio: 0.8,
                    crossAxisSpacing: 5),
                itemBuilder: (context, index) {
                  GuideLogo logo = guidelogos[index];
                  return Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    elevation: 5,
                    child: GestureDetector(
                      onTap: () async {
                        return subScreens(logo.screen);
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Column(children: [
                          Image.asset(logo.logo),
                          SizedBox(height: 5),
                          Text(logo.name,
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold)),
                        ]),
                      ),
                    ),
                  );
                })));
  }

  void subScreens(screens screen) {
    late List<Meds> meds;
    if (screens.forest == screen) {
      meds = [
        Meds(med: "Antiseptic gel for cuts "),
        Meds(med: "Balm for burns and damaged skin: "),
        Meds(med: "Wad of cotton and 5 q-tips"),
        Meds(med: "30 Band-Aids"),
        Meds(med: "Itch cream for insect bites"),
        Meds(med: "20 capsules of anti-diarrhea medication"),
      ];
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => Kit(
                    meds: meds,
                  )));
    } else if (screens.mountain == screen) {
      meds = [
        Meds(med: "Dettol ( to clean the wound )"),
        Meds(med: "Thermometer"),
        Meds(med: "Painkiller"),
        Meds(med: "Aspirin"),
      ];
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => Kit(
                    meds: meds,
                  )));
    } else {
      meds = [
        Meds(
            med:
                "Diamox (125 mg to 500 mg a day depending on severity. 12 or 24 hourly until return to safe altitude) "),
        Meds(med: "Dettol ( to clean the wound )"),
        Meds(med: "Water Proof Bandaids ( to cover cuts )"),
        Meds(med: "Brufen 600 ( pain killer)"),
      ];
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => Kit(
                    meds: meds,
                  )));
    }
  }
}
