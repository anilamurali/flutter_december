import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'loginpage.dart';
import 'productlist.dart';

class Registratio extends StatefulWidget{
  @override
  State<Registratio> createState() => _RegistratioState();
}

class _RegistratioState extends State<Registratio> {
  var formkey=GlobalKey<FormState>();
  var showpass=true;
  var showpass1=true;
  var confirmpass;
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Form(
        key: formkey,
        child: 
      Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Sign Up",style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold),),
            const Padding(
              padding:  EdgeInsets.only(top: 20),
              child: Text("Create an Account. Its free"),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20,right: 10,left: 10),
              child: TextFormField(
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.email),
                  labelText: "Email ID",
                  hintText: "Email ID",
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(20))
                ),
                validator: (email){
                  if  (email !.isEmpty ||!email.contains("@")){
                    return "Enter a valied Email ID";

                  }
                  else{
                    return null;
                  }
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20,left: 10,right: 10),
              child: TextFormField(
                obscuringCharacter: "*",
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.visibility_off),
                  labelText: "Password",
                  hintText: "Password",
                  suffixIcon: IconButton(onPressed: (){
                    setState(() {
                      if (showpass) {
                        showpass=false;
                        
                      }
                      else{
                        showpass=true;
                      }
                    });
                  }, icon: Icon(showpass==true ? Icons.visibility_off : Icons.visibility)),
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(20))
                ),
                validator: (password){
                  confirmpass=password;

                  if (password !.isEmpty || password.length<8) {
                    return "Enter a valied password";
                  }
                  else{
                    return null;
                  }
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20,left: 10,right: 10),
              child: TextFormField(
                obscuringCharacter: "*",
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.visibility_off),
                  labelText: "Confirm Password",
                  hintText: "Confirm Password",
                  suffixIcon: IconButton(onPressed: (){
                    setState(() {
                      if (showpass1) {
                        showpass=false;
                        
                      }
                      else{
                        showpass=true;
                      }
                    });
                  }, icon: Icon(showpass1==true ? Icons.visibility_off : Icons.visibility)),
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(20))
                ),
                validator: (cpass){
                  if (cpass !.isEmpty || cpass.length<8 || confirmpass!= cpass) {
                    return "Not valid or Password missmatch";
                  }
                  else{
                    return null;
                  }
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: SizedBox(
                height: 60,
                width: 500,
                child: ElevatedButton(onPressed: (){
                  final valied=formkey.currentState!.validate();
                  if(valied){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ProductList()));
                  }
                  else{
                    return null;
                  }
                }, child: Text("Sign Up"),
                style: ElevatedButton.styleFrom(shape: StadiumBorder()),),
              ),
            ),
            const Padding(
              padding:  EdgeInsets.only(top: 20),
              child: Text("Do you have an account? Login"),
            ),
            
          ],
        ),
      ), 
      ),);

  }
}