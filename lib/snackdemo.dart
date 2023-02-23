import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SnakBarDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   return Scaffold(
    body: Center(
      child: ElevatedButton(onPressed: (){
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text("Hello SnackBar"),
          action: SnackBarAction(
            label: "UNDO", 
            onPressed: (){}),
          ));
      }, child: Text("Show SnackBar")),
    ),
   );
  }
}