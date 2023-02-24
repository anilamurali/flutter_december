import 'package:flutter/material.dart';

class List_with_Coustom extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.custom(
        childrenDelegate: SliverChildBuilderDelegate((context, index) {
          return const Card(
            color: Colors.amberAccent,
            child: Text("Cards"),
          );
        }),
        // list with List.Generate
        // childrenDelegate: SliverChildListDelegate(
        // List.generate(20, (index)  {
        //   return Card(
        //     color: Colors.deepPurpleAccent,
        //     child: Text("Cards"),
        //   );
        // })

        //Way 2
        // [
        //   Card(
        //     child: Text("Card1"),color: Colors.amber,
        //   ),
        //   Card(
        //     child: Text("Card2"),color: Colors.greenAccent,
        //   ),
        //   Card(
        //     child: Text("Card13"),color: Colors.redAccent,
        //   ),
        //   Card(
        //     child: Text("Card4"),color: Colors.blueAccent,
        //   ),
        //   Card(
        //     child: Text("Card5"),color: Colors.lightBlueAccent,
        //   )
        // ]
      ),
    );
  }

}