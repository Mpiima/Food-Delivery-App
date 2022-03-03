import 'package:flutter/material.dart';

class FoodCard extends StatelessWidget {
final String categoryName;
final String imagePath;
final int numberOfItems;

FoodCard({required this.categoryName,required this.imagePath,required this.numberOfItems});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 20.0),
        child: Card(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0,vertical: 10.0),
          child: Row(
            children: [
              Image(
                image: AssetImage(imagePath),
                height: 65.0,
                width: 65.0,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(categoryName,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16.0),),
                  Text("$numberOfItems kinds")
                ],
              )
            ],
          ),
        ),
    ),
      );
  }
}
