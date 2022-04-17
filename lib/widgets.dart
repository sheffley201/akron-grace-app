import 'package:flutter/material.dart';

class Verse extends StatelessWidget {
  final String verse;

  const Verse({Key? key, required this.verse}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(5),
      ),
      child: Text(
        verse,
        style: TextStyle(fontSize: 12),
      ),
    );
  }
}

class ServiceTime extends StatelessWidget {
  final String day;
  final String title;
  final String time;

  const ServiceTime({Key? key, required this.day, required this.title, required this.time}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
        children: [
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(50),
            ),
            child: Center(
              child: Text(
                day,
                style: const TextStyle(fontSize: 12),
              ),
            ),
          ),
          const SizedBox(width: 20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              Row(
                children: [
                  const Icon (
                    Icons.access_time,
                    color: Colors.white,
                    size: 16,
                  ),
                  const SizedBox(width: 5),
                  Text(
                    time,
                    style: const TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ]
    );
  }
}

class WelcomeWidget extends StatelessWidget {
  const WelcomeWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container (
      height: 170,
      width: double.infinity,
      margin: const EdgeInsets.all(20),
      padding: const EdgeInsets.only(left: 20),
      decoration: BoxDecoration(
        image: const DecorationImage(
          image: AssetImage('assets/church_outside.webp'),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const <Widget>[
          Padding(
            padding: EdgeInsets.only(bottom: 10),
            child: Text(
              'Welcome',
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          Text(
            'Akron Grace Evangelical Congregational Church',
            style: TextStyle(
              fontSize: 15,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}

class LatestSermonWidget extends StatelessWidget {
  const LatestSermonWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(20),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column (
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const Text(
            'Latest Sermon',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 10),
          Container (
              width: double.infinity,
              clipBehavior: Clip.hardEdge,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                  color: Colors.black,
                  width: 1,
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 20),
                  Image.asset('assets/sermon-image.webp'),
                  const SizedBox(height: 20),
                  Container (
                      padding: const EdgeInsets.all(10),
                      child: Column (
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Palm Sunday',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 10),
                          Row (
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                width: 0.2 * MediaQuery.of(context).size.width,
                                child: const Text(
                                  'Sunday, April 10, 2022',
                                  style: TextStyle(
                                    fontSize: 14,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 0.3 * MediaQuery.of(context).size.width,
                                child: const Text(
                                  'Series: Lent: Lament, Repent, Anticipate',
                                  style: TextStyle(
                                    fontSize: 14,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 0.2 * MediaQuery.of(context).size.width,
                                child: const Text(
                                  'Pastor Andrew Brubaker',
                                  style: TextStyle(
                                    fontSize: 14,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Wrap(
                              spacing: 10,
                              runSpacing: 10,
                              children: const [
                                Verse(verse: 'Zechariah 9:9'),
                                Verse(verse: 'Matthew 21:1-11'),
                                Verse(verse: 'Colossians 1:15-22'),
                              ]
                          )
                        ],
                      )
                  )
                ],
              )
          ),
        ],
      ),
    );
  }
}

class BulletinWidget extends StatelessWidget {
  const BulletinWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 50,
      margin: const EdgeInsets.all(20),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        gradient: const LinearGradient(
          colors: [
            Color(0xFF2F94B0),
            Color(0xFF31357B),
          ],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        ),
      ),
    );
  }
}

class ServiceTimesWidget extends StatelessWidget {
  const ServiceTimesWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(20),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: const AssetImage('assets/service-times.jpeg'),
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(
            Colors.black.withOpacity(0.5),
            BlendMode.darken,
          ),
        ),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
            'Service Times',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 30),
          ServiceTime(day: 'SUN', title: 'Sunday School', time: '10:30 am'),
          SizedBox(height: 30),
          ServiceTime(day: 'SUN', title: 'Sunday Worship', time: '10:30 am'),
          SizedBox(height: 30),
          ServiceTime(day: 'WED', title: 'Youth Group', time: '7:00 pm'),
          SizedBox(height: 30),
          ServiceTime(day: 'WED', title: 'Coffee Shop Theology', time: '7:00 pm'),
        ],
      ),
    );
  }
}



