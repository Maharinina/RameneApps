import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:rameneapps/home_page.dart';
import 'package:rameneapps/landing.dart';
import 'package:rameneapps/loginpage.dart';
import 'package:rameneapps/main.dart';

class Register extends StatefulWidget{
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.white,
          leading: GestureDetector(
            child: Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
            onTap: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Landing(),));
            },
          )
      ),
      backgroundColor: Colors.white,
      body: Container(
        margin: EdgeInsets.symmetric(horizontal:24, vertical: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Welcome Back",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    "Create your account",
                    style: TextStyle(color: Colors.grey[600]),
                  ),
                  SizedBox(
                    height: 24,
                  ),

                  Text(
                    "Email",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        hintText: "Email",
                        border: OutlineInputBorder(
                            borderRadius:
                            BorderRadius.all(Radius.circular(12.0)))),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Text(
                    "Password",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                        hintText: "Password",
                        border: OutlineInputBorder(
                            borderRadius:
                            BorderRadius.all(Radius.circular(12.0)))),
                  ),
                ],
              ),
            ),
            Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    ElevatedButton(
                      onPressed: (){
                        Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>LoginPage(),));
                      },
                      child: Text("Sign Up",
                          style: TextStyle(
                            fontFamily: 'Poppins Bold',
                            fontSize: 16,
                          )),
                      style: ElevatedButton.styleFrom(
                          primary: Color(0xFFFFA600),
                          minimumSize: const Size.fromHeight(55),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)
                          )),
                    ),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
