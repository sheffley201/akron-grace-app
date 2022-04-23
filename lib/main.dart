import 'package:akron_grace/widgets.dart';
import 'package:flutter/services.dart';
import 'package:flutter/material.dart';
import 'package:akron_grace/pages.dart';
import 'package:flutter_launcher_icons/android.dart';
import 'package:flutter_launcher_icons/constants.dart';
import 'package:flutter_launcher_icons/custom_exceptions.dart';
import 'package:flutter_launcher_icons/ios.dart';
import 'package:flutter_launcher_icons/main.dart';
import 'package:flutter_launcher_icons/utils.dart';
import 'package:flutter_launcher_icons/xml_templates.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget{

  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return MaterialApp(
      title: 'Akron Grace EC',
      theme: ThemeData(fontFamily: 'Rubik'),
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int pageIndex = 0;

  final pages = [
    Home(),
    Events(),
    Sermons(),
    Bulletin(),
    About(),
  ];

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ()=> FocusScope.of(context).unfocus(),
      child: Scaffold (
        backgroundColor: Colors.grey[200],
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              pinned: true,
              floating: true,
              snap: true,
              backgroundColor: const Color(0xFF011332),
              foregroundColor: Colors.white,
              expandedHeight: 170.0,
              centerTitle: true,
              flexibleSpace: FlexibleSpaceBar(
                title: const Text(
                  'Akron Grace EC Church',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                background: Image.asset(
                  'assets/church_outside.webp',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            pages[pageIndex],
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.shifting,
          unselectedItemColor: Colors.grey[400],
          selectedItemColor: Colors.black,
          selectedIconTheme: const IconThemeData(
            size: 30.0,
          ),
          unselectedIconTheme: const IconThemeData(
            size: 20.0,
          ),
          unselectedLabelStyle: const TextStyle(
            fontSize: 10.0,
          ),
          showUnselectedLabels: true,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.calendar_today),
              label: 'Events',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.surround_sound),
              label: 'Sermons',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.assignment),
              label: 'Bulletin',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.info),
              label: 'About',
            ),
          ],
          currentIndex: pageIndex,
          onTap: (index) {
            setState(() {
              pageIndex = index;
            });
          },
        ),
      ),
    );
  }
}

