import 'package:fluter_december/placelist.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TabInFlutter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("WhatsApp"),
          actions: const [
            Icon(Icons.camera_alt_sharp),
            SizedBox(width: 20,),
            Icon(Icons.search),
            SizedBox(width: 20,),
            Icon(Icons.more_vert)
          ],
          bottom: const TabBar(tabs: [
            Tab(icon: Icon(Icons.people),),
            Tab(text: "Chats",),
            Tab(text: "Status",),
            Tab(text: "Call")
          ]),
        ),
        body:  TabBarView(children:[
          PlaceList(),
           const Center(child: Text(" Chats"),),
            const Center(child: Text(" Status"),),
             const Center(child: Text(" Call"),)
          
        ] 
        ),
        floatingActionButton: FloatingActionButton(onPressed: (){},
        child: const Icon(Icons.message),backgroundColor: Color.fromARGB(255, 17, 70, 19),),
        
      ),
    );
  }

}