import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class GridView_UI extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
    appBar: AppBar(
      title: Text("SHRINE"),
      leading: Icon(Icons.menu),
      actions: [Icon(Icons.search),
      Icon(Icons.dashboard_outlined)],
    ),
   );
  }

}