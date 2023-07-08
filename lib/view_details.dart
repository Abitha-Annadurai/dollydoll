import 'package:flutter/material.dart';

import 'model/doll_model.dart';

class ViewDetails extends StatelessWidget {
  final DollModel item;
  ViewDetails({Key? key,required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(automaticallyImplyLeading: false,
        title: Text(item.name),
      ),
      body: Center(
        child: Container(
          width: 500,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(item.url),
                Text(item.name),
                Text(item.description),
                Text(item.price.toString()),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
