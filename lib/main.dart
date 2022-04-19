import 'package:akron_grace/widgets.dart';
import 'package:flutter/material.dart';
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
    return MaterialApp(
        title: 'Akron Grace EC',//use MaterialApp() widget like this
        home: Home() //create new widget class for this 'home' to
      // escape 'No MediaQuery widget found' error
    );
  }
}

class Home extends StatelessWidget {
  List <Widget> widgets = const [
    //WelcomeWidget(),
    LatestSermonWidget(),
    BulletinWidget(),
    ServiceTimesWidget(),
    GivingWidget(),
    EventsWidget(),
    ContactCard(
        title: 'Contact Grace Church',
        address: '101 N 7th St\nAkron, PA 17501',
        email: 'akrongrace@gmail.com',
        phone: '717-859-2700',
        color: Colors.white,
        textColor: Colors.black
    ),
    ContactCard(
        title: 'Contact Helping Hands Daycare',
        address: '101 N 7th St\nAkron, PA 17501',
        email: 'daycarehelpinghands@hotmal.com',
        phone: '717-859-2032 x223',
        color: Colors.black,
        textColor: Colors.white
    ),
  ];

  Home({Key? key}) : super(key: key);

  // This widget is the root of your application.
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
              backgroundColor: const Color(0xFF011332),
              foregroundColor: Colors.white,
              expandedHeight: 170.0,
              leading: Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Image.asset('assets/akron-icon.webp'),
              ),
              actions: const <Widget>[
                Padding(
                  padding: EdgeInsets.only(right: 10),
                  child: Icon(Icons.menu),
                ),
              ],
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
            SliverList(
              delegate: SliverChildListDelegate(widgets),
            ),
          ],
        ),
      ),
    );
  }
}
