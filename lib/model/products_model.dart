import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Product {
  final String icon;
  final String title;
  final String subtitle;
  final String quantity;
  final String time;

  Product(
      {@required this.icon,
      @required this.time,
      @required this.title,
      @required this.subtitle,
      @required this.quantity});
}

List<Product> products = [
  Product(
    icon: 'assets/images/1.jpg',
    quantity: 'TZS 2000',
    subtitle: 'black and white',
    title: 'Dell Deskjet Printer',
    time: '11:24',
  ),
  Product(
    icon: 'Icon',
    time: '12:14',
    quantity: 'TZS 5000',
    subtitle: 'black and white',
    title: 'Hp Deskjet Printer',
  ),
  Product(
      icon: 'Icon',
      quantity: 'TZS 6000',
      subtitle: 'black and white',
      title: 'Hp Deskjet Printer',
      time: '00:24'),
  Product(
      icon: 'Icon',
      quantity: 'TZS 3000',
      subtitle: 'black and white',
      title: 'Hp Deskjet Printer',
      time: '13:26'),
  Product(
      icon: 'Icon',
      quantity: 'TZS 3000',
      subtitle: 'black and white',
      title: 'Hp Deskjet Printer',
      time: '03:17'),
  Product(
      icon: 'Icon',
      quantity: 'TZS 3000',
      subtitle: 'black and white',
      title: 'Hp Deskjet Printer',
      time: '12:23'),
  Product(
      icon: 'Icon',
      quantity: 'TZS 3000',
      subtitle: 'black and white',
      title: 'Hp Deskjet Printer',
      time: '11:24')
];
