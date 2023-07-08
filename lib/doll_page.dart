import 'package:flutter/material.dart';
import 'color_height/mq.dart';
import 'doll_items.dart';
import 'model/doll_model.dart';

class DollPage extends StatelessWidget {
  DollPage({Key? key,}) : super(key: key);

  final List<DollModel> _items = [
    DollModel(
      name: 'Doll 1',
      url: 'assets/doll1.jpg',
      description: 'Barbie Girl',
      price: 259,
    ),
    DollModel(
      name: 'Doll 2',
      url: 'assets/doll2.jpg',
      description: 'Barbie Girl',
      price: 567,
    ),
    DollModel(
      name: 'Doll 3',
      url: 'assets/doll3.jpg',
      description: 'Barbie Girl',
      price: 489,
    ),
    DollModel(
      name: 'Doll 4',
      url: 'assets/doll4.jpg',
      description: 'Barbie Girl',
      price: 345,
    ),
    DollModel(
      name: 'Doll 5',
      url: 'assets/doll5.jpg',
      description: 'Barbie Girl',
      price: 345,
    ),
    DollModel(
      name: 'Doll 6',
      url: 'assets/doll6.jpg',
      description: 'Barbie Girl',
      price: 345,
    ),
    DollModel(
      name: 'Doll 7',
      url: 'assets/doll7.jpg',
      description: 'Barbie Girl',
      price: 345,
    ),
    DollModel(
      name: 'Doll 8',
      url: 'assets/doll8.jpg',
      description: 'Barbie Girl',
      price: 345,
    ),
    DollModel(
      name: 'Doll 9',
      url: 'assets/doll9.jpg',
      description: 'Barbie Girl',
      price: 345,
    ),
    DollModel(
      name: 'Doll 10',
      url: 'assets/doll10.jpg',
      description: 'Barbie Girl',
      price: 345,
    ),

  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.all(8),
        height: MQuery.height * 0.9,
        child: GridView.builder(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          // scrollDirection: Axis.horizontal,
          itemCount: _items.length,
          itemBuilder: (_, i) => DollItems(item: _items[i]),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2
          ),
        ),
      ),
    );
  }
}
