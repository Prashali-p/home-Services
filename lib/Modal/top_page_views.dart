import 'package:flutter/material.dart';

class Product {
  String image;
  String title;

  Product({required this.title, required this.image});


 static List<Product> product1 = [
    Product(title: 'Renovation', image: 'images/sofa.png'),
    Product(title: 'Handyman', image: 'images/sofa.png'),
    Product(title: 'Home Shifting', image: 'images/sofa.png'),
    Product(title: 'Gardening', image: 'images/sofa.png'),
    Product(title: 'Declutter', image: 'images/sofa.png'),
    Product(title: 'Painting', image: 'images/sofa.png'),
  ];

  static List<Product> product2 = [
    Product(title: 'Kitchen Cleaning', image: 'images/home.png'),
    Product(title: 'Sofa Cleaning', image: 'images/home.png'),
    Product(title: 'Full House Cleaning', image: 'images/home.png'),
  ];

  static List<Image> productImage = [
    Image(image: AssetImage('images/man.png')),
    Image(image: AssetImage('images/man.png')),
    Image(image: AssetImage('images/man.png')),
    Image(image: AssetImage('images/man.png')),
  ];
}