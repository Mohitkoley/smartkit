import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smartkit/controllers/datacontroller.dart';
import 'package:smartkit/model/names.dart';
import 'package:smartkit/screens/bleeding.dart';

class Accidents extends StatefulWidget {
  const Accidents({Key? key}) : super(key: key);

  @override
  State<Accidents> createState() => _AccidentsState();
}

class _AccidentsState extends State<Accidents> {
  FirebaseFirestore instance = FirebaseFirestore.instance;
  DataController controller = Get.put(DataController());

  @override
  void initState() {
    super.initState();
  }

  // List<Names> names = [
  //   Names(name: "Bleeding", logo: "assets/pics/homelogo/bleeding.png"),
  //   Names(name: "burning", logo: "assets/pics/homelogo/burning.jpg"),
  //   Names(name: "Choking", logo: "assets/pics/homelogo/choking.jpg"),
  //   Names(name: "Snake Bite", logo: "assets/pics/homelogo/snake_bite.png"),
  // ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: StreamBuilder<List<Names>>(
            stream: controller.getHomeData(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return GridView.builder(
                    padding: const EdgeInsets.all(8.0),
                    shrinkWrap: true,
                    physics: const BouncingScrollPhysics(),
                    itemCount: snapshot.data!.length,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            childAspectRatio: 0.8,
                            mainAxisSpacing: 5,
                            crossAxisSpacing: 5,
                            crossAxisCount: 2),
                    itemBuilder: (context, index) {
                      Names name = snapshot.data![index];
                      return GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Bleeding()));
                        },
                        child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          elevation: 5,
                          child: Container(
                            child: Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Column(children: [
                                Image.network(name.logo),
                                // 1.treatment , 2.Medicine ,3. Do not
                                SizedBox(height: 5),
                                Text(name.name,
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold)),
                              ]),
                            ),
                          ),
                        ),
                      );
                    });
              } else {
                return Center(child: CircularProgressIndicator());
              }
            }));
  }
}
