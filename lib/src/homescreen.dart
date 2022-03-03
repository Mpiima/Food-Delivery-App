import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:meridafoodcourt/src/widgets/bought_foods.dart';
import 'package:meridafoodcourt/src/widgets/food_category.dart';
import 'package:meridafoodcourt/src/widgets/home_top_info.dart';
import 'package:meridafoodcourt/src/widgets/search_field.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.only(top: 50.0,left: 20.0,right: 20.0),
        children: [
          HomeTopInfo(),
          FoodCategory(),
          SizedBox(height: 20.0),
          SearchField(),
          SizedBox(height: 20.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                  "Frequently Bought Foods",
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold
                ),
              ),
              GestureDetector(
                onTap: (){},
                child: Text(
                  "View All",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0,
                    color: Colors.orangeAccent,
                  ),
                ),
              )
            ],
          ),
          SizedBox(height: 20.0,),
          Container(
            child: BoughtFoods(),
          )
        ],
      ),
    );
  }
}
