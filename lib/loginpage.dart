import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:rameneapps/home_page.dart';
import 'package:rameneapps/landing.dart';
import 'package:rameneapps/main.dart';
import 'package:rameneapps/register.dart';

class LoginPage extends StatefulWidget{
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage>{
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
                    height: 5,
                  ),
                  Text(
                    "Login to your account",
                    style: TextStyle(color: Colors.grey[600]),
                  ),
                  SizedBox(
                    height: 10,
                  ),

                  Text(
                    "Email",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: "Email",
                      border: OutlineInputBorder(
                        borderRadius:
                          BorderRadius.all(Radius.circular(12.0)))),
                      ),
                    SizedBox(
                    height: 10,
                  ),
                    Text(
                      "Password",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 2,
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                      hintText: "Password",
                        border: OutlineInputBorder(
                          borderRadius: 
                            BorderRadius.all(Radius.circular(12.0)))),
                        ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            "Forget password ?",
                            style: TextStyle(color: Colors.orange),
                          ))
                    ],
                  )
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
                        Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>Home(),));
                      },
                      child: Text("Login",
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
                    SizedBox(
                      height: 2,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Don't have an account yet?"),
                        TextButton(
                            onPressed: () {
                              Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>Register(),));
                            },
                            child: Text(
                              "Sign Up",
                              style: TextStyle(color: Colors.orange),
                            ))
                      ],
                    )
                  ],
            )),
  ],
      ),
    ),
    );
  }
}
