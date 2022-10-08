import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:get/get.dart';
import 'package:smartkit/model/names.dart';

class DataController extends GetxController {
  var instance = FirebaseFirestore.instance;
  //final DataController controller = Get.put<DataController>(DataController());

  Stream<List<Names>> getHomeData() {
    // Get data from firebase
    Stream<List<Names>> data = instance.collection("Accidents").snapshots().map(
        (event) => event.docs.map((e) => Names.fromJson(e.data())).toList());

    return data;
  }
}
