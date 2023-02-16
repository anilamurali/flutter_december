import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Contact Book"),
      
      ),
      body: ListView(
        children: const[
          Center(child: Text("My Contacts", style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),),
          
          Card(color: Color.fromARGB(255, 133, 230, 137),child: ListTile(
            leading: CircleAvatar(backgroundImage:  AssetImage("assets/images/amal.JPG")),
            title: Text("Amal Vijay"),
            subtitle: Text("9207099797"),
            trailing: Icon(Icons.phone),
          ),),
          Card(color: Color.fromARGB(255, 133, 230, 137),child: ListTile(
            leading: CircleAvatar(backgroundImage: AssetImage("assets/images/anila.JPG")),
            title: Text("Anila Murali"),
            subtitle: Text("9207099797"),
            trailing: Icon(Icons.phone),
          ),),
          Card(color: Color.fromARGB(255, 133, 230, 137),child: ListTile(
            leading: CircleAvatar(backgroundImage: AssetImage("assets/images/anandu.jpeg")),
            title: Text("Anandu Krishnan"),
            subtitle: Text("9035938376"),
            trailing: Icon(Icons.phone),
          ),),
          Card(color: Color.fromARGB(255, 133, 230, 137),child: ListTile(
            leading: CircleAvatar(backgroundImage: AssetImage("assets/images/anju.jpg")),
            title: Text("Anju Lekshmi"),
            subtitle: Text("8921656557"),
            trailing: Icon(Icons.phone),
          ),),
          Card(color: Color.fromARGB(255, 133, 230, 137),child: ListTile(
            leading: CircleAvatar(backgroundImage: AssetImage("assets/images/background1.jpeg")),
            title: Text("Anandu Krishnan"),
            subtitle: Text("9035938376"),
            trailing: Icon(Icons.phone),
          ),),
          Card(color: Color.fromARGB(255, 133, 230, 137),child: ListTile(
            leading: CircleAvatar(backgroundImage: AssetImage("assets/images/lachu.jpg")),
            title: Text("Lakshmi S Nair"),
            subtitle: Text("9207600213"),
            trailing: Icon(Icons.phone),
          ),),
          
        ],
      ),
    );
  }

}