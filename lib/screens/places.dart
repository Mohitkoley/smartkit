import 'package:flutter/material.dart';
import 'package:smartkit/model/hospital.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';

class Places extends StatefulWidget {
  Places({Key? key}) : super(key: key);

  @override
  State<Places> createState() => _PlacesState();
}

class _PlacesState extends State<Places> {
  List<Hospital> hospitals = [
    Hospital(
        image: "assets/pics/hospitals/sterling.jpg",
        name: "Sterling Hospital",
        features:
            "1. Multi-specialty for 30+ services under one roof.\n2. First corporate hospital with NABH accreditation in South Gujarat.\n3. Recorded highest dialysis procedures in the region.\n4. 24x7 Emergency Cardiac and Stroke Helpline facilities.\n5. Advanced set-up for Bone Marrow Transplant (BMT) and government approved renal transplant unit.",
        address:
            "Sterling Addlife India Private Limited,\n Race Course Road,  Opposite INOX Cinema",
        map: "https://goo.gl/maps/UQaztT3VXDPeb4yT7"),
    Hospital(
        image: "assets/pics/hospitals/venus.png",
        name: "Venus Superspeciality Hospital",
        features:
            "1. Super specialty to 4 disciplines-Neurology, Urology, Vascular and Endovascular.\n2. Three modular operation theaters equipped with C-arm fluoroscopic operating. \n3. microscope, Laminar flow, and other advanced surgical and medical equipment.",
        address: "Office Number 6, Off Old Padra Road,\n Opposite Akota Ward.",
        map: "https://g.page/VenusHospitalVadodara?share")
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: ListView.separated(
          physics: BouncingScrollPhysics(),
          itemBuilder: (context, index) {
            Hospital hospital = hospitals[index];
            return Card(
              elevation: 5,
              margin: const EdgeInsets.all(10),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Expanded(
                  child: Padding(
                      padding: EdgeInsets.all(5.0),
                      child: Column(
                        children: [
                          Image.asset(hospital.image),
                          Align(
                            alignment: Alignment.bottomLeft,
                            child: Text(hospital.name,
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold)),
                          ),
                          SizedBox(height: 7),
                          Row(
                            children: [
                              const SizedBox(
                                width: 5,
                              ),
                              Expanded(
                                child: Text(
                                  hospital.features,
                                  style: const TextStyle(fontSize: 16),
                                  maxLines: 20,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 7),
                          Align(
                              alignment: Alignment.bottomLeft,
                              child: Text("Address: ${hospital.address}",
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.blueGrey,
                                      fontStyle: FontStyle.italic))),
                          SizedBox(height: 7),
                          GestureDetector(
                            onTap: () async {
                              await launchUrlString(hospital.map);
                            },
                            child: Align(
                              alignment: Alignment.bottomLeft,
                              child: Text(
                                hospital.map,
                                style: TextStyle(
                                    color: Colors.blue,
                                    fontSize: 15,
                                    decoration: TextDecoration.underline),
                              ),
                            ),
                          )
                        ],
                      ))),
            );
          },
          separatorBuilder: (context, index) => const SizedBox(height: 10),
          itemCount: hospitals.length),
    ));
  }
}
