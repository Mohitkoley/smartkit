import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:smartkit/firebase_options.dart';
import 'package:smartkit/screens/accidents.dart';
import 'package:smartkit/screens/guide.dart';
import 'package:smartkit/screens/online_help.dart';
import 'package:smartkit/screens/places.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedindex = 0;
  List<Widget> screens = [Accidents(), Places(), Guide(), OnlineHelp()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: title(_selectedindex),
      ),
      body: screens[_selectedindex],
      bottomNavigationBar: CurvedNavigationBar(
        index: _selectedindex,
        height: 50,
        animationCurve: Curves.easeInOut,
        onTap: (index) {
          setState(() {
            _selectedindex = index;
          });
        },
        color: Colors.blue,
        backgroundColor: Colors.white,
        items: [
          Icon(Icons.home, size: 30),
          Icon(Icons.location_on, size: 30),
          Icon(Icons.menu_book, size: 30),
          Icon(Icons.help, size: 30),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        tooltip: "Emergency Call",
        onPressed: () async {
          await launchUrlString("tel://108");
        },
        backgroundColor: Colors.red,
        child: const Icon(Icons.phone),
      ),
    );
  }

  Widget title(int index) {
    if (index == 0) {
      return Text("Emergency Tools");
    } else if (index == 1) {
      return Text("Places");
    } else if (index == 2) {
      return Text("Guide");
    } else {
      return Text("Help");
    }
  }
}
