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
        style: const TextStyle(
          fontSize: 12,
          fontFamily: 'Karla',
        ),
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
                      fontFamily: 'Karla',
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
                                    fontFamily: 'Karla',
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 0.3 * MediaQuery.of(context).size.width,
                                child: const Text(
                                  'Series: Lent: Lament, Repent, Anticipate',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontFamily: 'Karla',
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 0.2 * MediaQuery.of(context).size.width,
                                child: const Text(
                                  'Pastor Andrew Brubaker',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontFamily: 'Karla',
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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Latest Bulletin',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 20),
          Row(
            children: [
              Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  color: Colors.grey[100],
                  borderRadius: BorderRadius.circular(30),
                ),
                child: const Icon(
                  Icons.assignment,
                  color: Colors.black,
                ),
              ),
              const SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'April 14, 2022',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.white,
                      fontFamily: 'Karla',
                    ),
                  ),
                  Text(
                    'Akron Grace EC Church',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              )
            ],
          ),
          const SizedBox(height: 40),
          const Text(
            'Maundy Thursday',
            style: TextStyle(
              fontSize: 14,
              color: Colors.white,
              fontFamily: 'Karla',
            ),
          ),
          const SizedBox(height: 20),
          Container(
            width: 50,
            decoration: const BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: Colors.white,
                  width: 1,
                ),
              ),
            ),
            child: Row(
              children: const [
                Text(
                  'View',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Karla',
                  ),
                ),
                Icon(
                  Icons.link,
                  color: Colors.white,
                  size: 14,
                ),
              ],
            ),
          ),
        ]
      )
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
            Colors.black.withOpacity(0.7),
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
          ServiceTime(
              day: 'WED', title: 'Coffee Shop Theology', time: '7:00 pm'),
        ],
      ),
    );
  }
}

class AmountButton extends StatelessWidget {
  const AmountButton({Key? key, required this.amount}) : super(key: key);

  final String amount;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        primary: Colors.black,
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        side: const BorderSide(
          color: Colors.black12,
          width: 1,
        ),
      ),
      onPressed: () {},
      child: Text(
        '\$' + amount,
        style: const TextStyle(
          fontSize: 16,
          color: Colors.black,
          fontFamily: 'Karla',
        ),
      ),
    );
  }
}


class GivingWidget extends StatelessWidget {
  const GivingWidget({Key? key}) : super(key: key);

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
      child: Column(
        children: [
          const SizedBox(height: 20),
          const Text(
            'Give to',
            style: TextStyle(
              fontSize: 20,
              color: Colors.black,
              fontStyle: FontStyle.italic,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  image: const DecorationImage(
                    image: AssetImage('assets/church_outside.webp'),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(4),
                ),
              ),
              const SizedBox(
                width: 200,
                child: Text(
                  'Akron Grace EC Church',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              AmountButton(amount: '25'),
              AmountButton(amount: '50'),
              AmountButton(amount: '100'),
            ],
          ),
          const SizedBox(height: 20),
          const Text(
            'to Tithe & Offering',
            style: TextStyle(
              fontSize: 14,
              color: Colors.black,
              fontFamily: 'Karla',
            ),
          ),
          const SizedBox(height: 15),
          const TextField(
            keyboardType: TextInputType.number,
            style: TextStyle(
              fontSize: 50,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.right,
            decoration: InputDecoration(
              prefixText: '\$',
              hintText: '0',
              helperText: 'General donation',
              helperStyle: TextStyle(
                fontSize: 12,
                color: Colors.black,
                fontFamily: 'Karla',
              ),
              hintStyle: TextStyle(
                fontSize: 50,
                color: Colors.black,
                fontFamily: 'Karla',
              ),
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(height: 20),
          TextButton(
            style: TextButton.styleFrom(
              primary: Colors.black,
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(4),
              ),
              side: const BorderSide(
                color: Colors.grey,
                width: 1,
              ),
            ),
            onPressed: () {},
            child: SizedBox(
              width: 200,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(
                    Icons.add_circle,
                    color: Colors.black,
                  ),
                  Text(
                    'Add or change funds',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.black,
                      fontFamily: 'Karla',
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Colors.black,
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(4),
              ),
            ),
            onPressed: () {},
            child: const SizedBox(
              width: double.infinity,
              child: Text(
                'Next',
                style: TextStyle(
                  fontSize: 18,
                  fontFamily: 'Karla',
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          const SizedBox(height: 20),
          Row (
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text(
                'Secure online giving powered by',
                style: TextStyle(
                  fontSize: 10,
                  color: Colors.black,
                  fontStyle: FontStyle.italic,
                  fontFamily: 'Karla',
                ),
              ),
              Icon(
                Icons.whatshot,
                color: Colors.green,
                size: 12,
              ),
              Text(
                'Faithlife',
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.black,
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
        ],
      )
    );
  }
}

class Event extends StatelessWidget {
  final String month;
  final String day;
  final String title;
  final String location;
  final String time;

  const Event(
      {
        Key? key,
        required this.month,
        required this.day,
        required this.title,
        required this.location,
        required this.time
      }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.circular(5),
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  month,
                  style: const TextStyle(
                    fontSize: 10,
                    color: Colors.black,
                  ),
                ),
                Text(
                  day,
                  style: const TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(width: 20),
        SizedBox(
          width: MediaQuery.of(context).size.width - 150,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 5),
              Text(
                location,
                style: const TextStyle(
                  fontSize: 14,
                  color: Colors.white,
                  fontFamily: 'Karla',
                ),
              ),
              const SizedBox(height: 5),
              Text(
                time,
                style: const TextStyle(
                  fontSize: 14,
                  color: Colors.white,
                  fontFamily: 'Karla',
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                'See Details >',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.underline,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}


class EventsWidget extends StatelessWidget {
  const EventsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        margin: const EdgeInsets.all(20),
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.black87,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                'Events',
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20),
              Event(month: 'Apr',
                  day: '18',
                  title: 'AGEC Office Open',
                  location: 'Akron Grace EC Church',
                  time: 'Monday, 11:00 AM - 3:00 PM'),
              SizedBox(height: 20),
              Event(month: 'Apr',
                  day: '18',
                  title: 'Daycare Meeting',
                  location: 'Akron Grace EC Church',
                  time: 'Monday, 7:00 PM'),
              SizedBox(height: 20),
              Event(month: 'Apr',
                  day: '19',
                  title: 'Discipleship Commission Meeting',
                  location: 'Akron Grace EC Church',
                  time: 'Tuesday, 7:00 PM'),
              SizedBox(height: 20),
              Event(month: 'Apr',
                  day: '20',
                  title: 'AGEC Office Open',
                  location: 'Akron Grace EC Church',
                  time: 'Wednesday, 11:00 AM - 3:00 PM'),
              SizedBox(height: 20),
              Event(month: 'Apr',
                  day: '20',
                  title: 'Ablaze',
                  location: 'Akron Grace EC Church',
                  time: 'Wednesday, 7:00 PM'),
            ]
        )
    );
  }
}

class ContactItem extends StatelessWidget {
  final String text;
  final IconData icon;
  final Color color;
  final Color textColor;

  const ContactItem(
      {
        Key? key,
        required this.text,
        required this.icon,
        required this.color,
        required this.textColor
      }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(
            color: textColor,
            borderRadius: BorderRadius.circular(50),
          ),
          child: Icon(
            icon,
            color: color,
          ),
        ),
        const SizedBox(width: 20),
        Text(
          text,
          style: TextStyle(
            fontSize: 14,
            color: textColor,
            fontFamily: 'Karla',
          ),
        ),
      ],
    );
  }
}


class ContactCard extends StatelessWidget {
  final String title;
  final String address;
  final String email;
  final String phone;
  final Color color;
  final Color textColor;

  const ContactCard(
      {
        Key? key,
        required this.title,
        required this.address,
        required this.email,
        required this.phone,
        required this.color,
        required this.textColor
      }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(20),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 30,
              color: textColor,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 20),
          ContactItem(
            text: address,
            icon: Icons.location_on,
            color: color,
            textColor: textColor,
          ),
          const SizedBox(height: 20),
          ContactItem(
            text: email,
            icon: Icons.email,
            color: color,
            textColor: textColor,
          ),
          const SizedBox(height: 20),
          ContactItem(
            text: phone,
            icon: Icons.phone,
            color: color,
            textColor: textColor,
          ),
        ],
      )
    );
  }
}

class Footer extends StatelessWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.black,
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Icon(
                Icons.whatshot,
                color: Colors.white,
              ),
              SizedBox(width: 10),
              Icon(
                Icons.public,
                color: Colors.white,
              ),
            ],
          ),
          const SizedBox(height: 20),
          const Text(
            'Service Times',
            style: TextStyle(
              fontSize: 16,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'Sunday School',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Sunday 9:00 am',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'Sunday Worship',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Sunday 10:30 am',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'Youth Group',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Wednesday 7:00 pm',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'Coffee Shop Theology',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Wednesday 9:00 pm',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
              ]
            )
          ),
          const SizedBox(height: 40),
          const Text(
            'Contact',
            style: TextStyle(
              fontSize: 16,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  '101 N 7th St\nAkron, PA 17501',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'akrongrace@gmail.com',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  '717-859-2700',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 40),
          const Text(
            'Helping Hands Daycare',
            style: TextStyle(
              fontSize: 16,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'P.O Box 235\nAkron, PA 17501',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'daycarehelpinghands@hotmail.com',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  '717-859-2032 x233',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
              ],
            )
          ),
          const SizedBox(height: 40),
          Center(
            child: Wrap(
              alignment: WrapAlignment.center,
              spacing: 25,
              runSpacing: 25,
              children: const [
                Text(
                  'Home',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white70,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Sermons',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white70,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Events',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white70,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Contact',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white70,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Community',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white70,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'About us',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white70,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 40),
          const Center(
            child: Text(
              'Copyright 2022 Akron Grace EC Church. App by Spencer Heffley.',
              style: TextStyle(
                fontSize: 14,
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            )
          )
        ],
      ),
    );
  }
}







