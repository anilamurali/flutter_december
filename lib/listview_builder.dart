import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListBuilder extends StatelessWidget{
  var datas=<String>["data 1","data 2","data 3","data 4","data 5"];
  var color=<int>[800,700,500,300,100];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Listview with Builder"),),
      body: ListView.builder(
        itemCount: datas.length,
        itemBuilder: (BuildContext,index){
        return Container(
          height: 100,
          color: Colors.red[color[index]],
          child: Text(datas[index]),
          
        );

      }),
    );
    
  }

}