import 'package:flutter/material.dart';

class BoughtFoods extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10.0),
      child: Stack(
         children: [
           Container(
             height: 200.0,
             width: 340.0,
             child: Image.asset("assets/images/breakfast.jpeg",fit: BoxFit.cover,),
           ),
           Positioned(
             left: 0.0,
             bottom: 0.0,
             child: Container(
               height: 60.0,
               width: 340,
               decoration: BoxDecoration(
                 gradient: LinearGradient(
                   colors: [
                     Colors.black,Colors.black12
                   ],
                   begin: Alignment.bottomCenter,
                   end: Alignment.topCenter
                 )
               ),
             ),
           ),
           Positioned(
             left: 10.0,
           bottom: 10.0,
           right: 10.0,
           child: Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: [
               Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   Text(
                     "Hot Coffee",
                     style: TextStyle(
                       color: Colors.white,
                       fontSize: 18.0,
                       fontWeight: FontWeight.bold,
                     ),
                   ),
                   Row(
                     children: [
                       Icon(Icons.star,color: Theme.of(context).primaryColor,size: 16.0),
                       Icon(Icons.star,color: Theme.of(context).primaryColor,size: 16.0),
                       Icon(Icons.star,color: Theme.of(context).primaryColor,size: 16.0),
                       Icon(Icons.star,color: Theme.of(context).primaryColor,size: 16.0),
                       Icon(Icons.star,color: Theme.of(context).primaryColor,size: 16.0),
                       SizedBox(width: 20.0),
                       Text(
                         "(22.0 Reviews)",
                         style: TextStyle(
                             color:Colors.grey
                         ),
                       )
                     ],
                   )

                 ],
               ),
               Column(
                 children: [
                   Text(
                       "10000",
                       style: TextStyle(
                         color: Colors.orangeAccent,
                         fontSize: 18.0,
                         fontWeight: FontWeight.bold,
                       ),
                   ),
                   Text(
                       "Coffee",
                   style: TextStyle(
                     color: Colors.grey,
                   ),
                   )
                 ],
               )
             ],
           ),
           )
         ],
      ),
    );
  }
}
