import 'package:flutter/material.dart';

class DummyData {
  final List<PersonData> persons = [
    PersonData(
        name: 'John Doe',
        subtitle: 'Send Money',
        color: Colors.red,
        price: '\$100.00',
        date: '27-04-2024 08:30'),
    PersonData(
        name: 'Jane ',
        subtitle: 'Receive Money',
        color: Colors.blue,
        price: '\$200.00',
        date: '7-04-2024 22:30'),
    PersonData(
        name: 'Bob Smith',
        subtitle: 'Cashout',
        color: Colors.green,
        price: '\$300.00',
        date: '27-03-2024 18:30'),
    PersonData(
        name: 'Sarah ',
        subtitle: 'Cashout',
        color: Colors.green,
        price: '\$142.00',
        date: '17-03-2024 10:30'),
    PersonData(
      name: 'Alex Johnson',
      subtitle: 'Cashout',
      color: Colors.green,
      price: '\$240.00',
      date: '10-02-2024 09:30',
    ),

    // Add more dummy objects as needed
  ];
  List<CatData> cats = [
    CatData(
      imgAsset: 'assets/cat.jpg',
    )
  ];
}

class PersonData {
  final String name;
  final String subtitle;
  final Color color;
  final String price;
  final String date;

  PersonData(
      {required this.name,
      required this.subtitle,
      required this.color,
      required this.price,
      required this.date});
}

class CatData {
  final String imgAsset;
  CatData({required this.imgAsset});
}
