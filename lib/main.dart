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
    return const MaterialApp(
        title: 'Akron Grace EC',//use MaterialApp() widget like this
        home: Home() //create new widget class for this 'home' to
      // escape 'No MediaQuery widget found' error
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ()=> FocusScope.of(context).unfocus(),
      child: Scaffold (
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          leading: Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Image.asset('assets/akron-icon.webp'),
          ),
          title: const Text(
              'Akron Grace EC Church',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
          ),
          actions: const <Widget>[
            Padding(
              padding: EdgeInsets.only(right: 10),
              child: Icon(Icons.menu),
            ),
          ],
        ),
        body: ListView(
          children: const <Widget>[
            WelcomeWidget(),
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
          ],
        ),
      ),
    );
  }
}
