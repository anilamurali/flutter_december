
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';



class GridViewExample extends StatelessWidget{
  var color=[Colors.blue,
            Colors.orange,
            Colors.green,
            Colors.blueAccent,
            Colors.purpleAccent,
            Color.fromARGB(255, 16, 131, 116),
            Colors.yellow,
            Colors.red,
            Colors.pink,
            Colors.greenAccent,
            Colors.deepPurpleAccent];
  var icon=[FontAwesomeIcons.house,
              FontAwesomeIcons.bell,
              FontAwesomeIcons.camera,
              FontAwesomeIcons.ticket,
              FontAwesomeIcons.bookBookmark,
              FontAwesomeIcons.phone,
              FontAwesomeIcons.solidEnvelope,
              FontAwesomeIcons.map,
              FontAwesomeIcons.microchip,
              FontAwesomeIcons.microphoneLines,
              FontAwesomeIcons.fileCirclePlus];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("GRID VIEW"),),
      body: GridView.builder(gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        childAspectRatio: 1.0),
          itemCount: 11,        
         itemBuilder: (context,index){
          return  Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 30,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),color: color[index]),
                child: Center(
                  child: ListTile(
                    
                    leading: FaIcon(icon[index]),
                    title: Text("Heart shaker"),
                  ),
                  
                ),
                    
            ),
          );

        }),
    );
  }

}