import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class GridView_Costom extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Grid View With Costom"),),
      body: GridView.custom(
        gridDelegate:const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ) ,
         childrenDelegate: SliverChildBuilderDelegate((context, index) {
          return const Image(image: AssetImage("assets/images/anila.JPG")) ;
         }
         ,childCount: 20)
         ),
    );
  }

}