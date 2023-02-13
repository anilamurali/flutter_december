import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Login Page")),
      body: Column(
        children: [
          const Text("Login Page"),
          Padding(
            padding: const EdgeInsets.only(left: 20,right: 20,top: 20),
            child: TextField(
              decoration: InputDecoration(
                prefixIcon:const Icon(Icons.perm_contact_cal_rounded),
                hintText: "User",
                labelText: "Username",
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(100))),
            ),
          ),
          Padding(
            padding:const  EdgeInsets.only(left: 20,right: 20,top: 20),
            child: TextField(
              decoration: InputDecoration(
                prefixIcon:const Icon(Icons.remove_red_eye_rounded) ,
                
                hintText: "Password",
                labelText: "Password",
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(100))),
            
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: ElevatedButton(onPressed: (){}, child: const Text("Sign In")
            ),
          ),
         const Padding(
           padding:  EdgeInsets.only(top: 20),
           child:  Text("Not a user ? Register Here"),
         ),
        ],
      ),
    );
    
  }

}