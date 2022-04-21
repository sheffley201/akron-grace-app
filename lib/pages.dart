import 'package:akron_grace/widgets.dart';
import 'package:flutter/material.dart';

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
        email: 'daycarehelpinghands@hotmail.com',
        phone: '717-859-2032 x223',
        color: Colors.black,
        textColor: Colors.white
    ),
    //Footer(),
  ];

  Home({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildListDelegate(widgets),
    );
  }
}

class Events extends StatelessWidget {
  List <Widget> widgets = const [
    //WelcomeWidget(),
    ServiceTimesWidget(),
    EventsWidget(),
    //Footer(),
  ];

  Events({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildListDelegate(widgets),
    );
  }
}

class Sermons extends StatelessWidget {
  List <Widget> widgets = const [
    //WelcomeWidget(),
    LatestSermonWidget(),
    //Footer(),
  ];

  Sermons({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildListDelegate(widgets),
    );
  }
}

class Bulletin extends StatelessWidget {
  List <Widget> widgets = const [
    //WelcomeWidget(),
    BulletinWidget(),
    //Footer(),
  ];

  Bulletin({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildListDelegate(widgets),
    );
  }
}

class About extends StatelessWidget {
  List <Widget> widgets = const [
    //WelcomeWidget(),
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
        email: 'daycarehelpinghands@hotmail.com',
        phone: '717-859-2032 x223',
        color: Colors.black,
        textColor: Colors.white
    ),
    //Footer(),
  ];

  About({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildListDelegate(widgets),
    );
  }
}