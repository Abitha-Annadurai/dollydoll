import 'package:flutter/material.dart';

class DollModel {
  final String url;
  final String name;
  final String description;
  final double price;

  DollModel({required this.url, required this.name, required this.description, required this.price});

  static List<DollModel> getProducts() {
    List<DollModel> items = <DollModel>[];
    items.add(
      DollModel(
        name: 'Organic Bananas',
        url: 'assets/doll1.jpg',
        description: '7pcs',
        price: 4.99,
      ),
    );
    items.add(
      DollModel(
        name: 'Red Apple',
        url: 'assets/doll2.jpg',
        description: '1kg',
        price: 5.99,
      ),
    );
    items.add(
      DollModel(
        name: 'Red Pepper',
        url: 'assets/doll3.jpg',
        description: '1kg',
        price: 3.99,
      ),
    );
    items.add(
      DollModel(
        name: 'Red Apple',
        url: 'assets/doll4.jpg',
        description: '1kg',
        price: 5.99,
      ),
    );
    return items;
  }

}
