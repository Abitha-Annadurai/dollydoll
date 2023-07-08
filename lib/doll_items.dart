import 'package:dollydoll/view_details.dart';
import 'package:flutter/material.dart';
import 'color_height/constants.dart';
import 'model/doll_model.dart';

class DollItems extends StatelessWidget {
  final DollModel item;
  const DollItems({Key? key, required this.item,}) : super(key: key);

  void onTap(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(builder: (_) => ViewDetails(item: item)));
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onTap(context),
      child: Card(
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
          // width: MQuery.width * 0.4,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
          ),
          child: LayoutBuilder(
            builder: (_, constraints) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Hero(
                    tag: item.hashCode,
                    child: Image.asset(
                      item.url,
                      height: constraints.maxHeight * 0.4,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(item.name, style: kTitleStyle),
                  Text(item.description, style: kDescriptionStyle),
                  Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '\₹${item.price}',
                        style: kTitleStyle.copyWith(fontWeight: FontWeight.w700),
                      ),
                      Container(

                        child: Icon(
                          Icons.add,
                          size: 20,
                          color: Colors.purpleAccent,
                        ),
                      ),
                    ],
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
