import 'package:flutter/material.dart';
import 'color_height/mq.dart';
import 'doll_page.dart';
import 'model/doll_model.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final items = DollModel.getProducts();

  @override
  Widget build(BuildContext context) {
    MQuery().init(context);
    return SafeArea(
      child: Scaffold(
        body: Container(
          child: SingleChildScrollView(
           // padding: const EdgeInsets.only(top: 20, bottom: 10),
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.only(left: 8),
                  color: Colors.pink,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Shop', style: TextStyle(color: Colors.white, fontSize: 23, fontWeight: FontWeight.bold),),
                      Row(
                        children: [
                          IconButton(onPressed: (){}, icon: Icon(Icons.account_balance_wallet, color: Colors.white)),
                          IconButton(onPressed: (){}, icon: Icon(Icons.add_shopping_cart, color: Colors.white)),
                          IconButton(onPressed: (){}, icon: Icon(Icons.person, color: Colors.white)),
                        ],
                      )
                    ],
                  ),
                ),

                DollPage(),
                SizedBox(height: 30,)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
