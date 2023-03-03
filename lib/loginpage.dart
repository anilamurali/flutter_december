import 'dart:html';

import 'package:flutter/material.dart';

import 'homepage.dart';



class LoginPage extends StatefulWidget{
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  var formkey = GlobalKey<FormState>();
  var showpass=true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login with validation"),
      ),
      body: Form(
        key: formkey,
        child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10,right: 10,top: 20),
            child: TextFormField(
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.perm_contact_cal_rounded),
                labelText: "User",
                hintText: "Username",
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(100)),
                
              ),
              validator: (username){
                if(username !.isEmpty || !username.contains("@")){
                  return "Enter a valid Email ";
                }
                else{
                 return null;
                }
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10,right: 10,top: 20),
            child: TextFormField(
              obscureText: showpass,
              obscuringCharacter: "*",
              decoration: InputDecoration(
                suffixIcon: IconButton(onPressed: (){
                  setState(() {
                    if (showpass) {
                      showpass=false;
                      
                    }
                    else{
                      showpass=true;
                    }
                  });
                }, icon: Icon(showpass == true ? Icons.visibility_off : Icons.visibility)),
                prefixIcon: Icon(Icons.password),
                hintText: "Password",
                labelText: "password",
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(100))
              ),
              validator: (password){
                if(password!.isEmpty || password.length <6){
                  return "Not a Valid Password";

                }
                else{
                  return null;
                }
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: ElevatedButton(onPressed: () {
              final valid = formkey.currentState!.validate();
              if(valid){
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>HomePage()));
              }
              else{
                
                return null;
                        } 
            }, child: Text("Login")),
          ),
        const  Padding(
            padding:  EdgeInsets.only(left: 20),
            child:  Text("Not a user ? Register Here"),
          ),
        ],
      )),
    );
  }
}