import 'package:flutter/material.dart';
import 'package:rameneapps/home_page.dart';
import 'package:rameneapps/loginpage.dart';
import 'package:rameneapps/register.dart';

class Landing extends StatefulWidget {
  const Landing({Key? key}) : super(key: key);

  @override
  State<Landing> createState() => _LandingState();
}
class _LandingState extends State<Landing> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(50.0),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset(
                'assets/Group5.png',
                fit: BoxFit.cover,
              ),
              Padding(padding: EdgeInsets.only(top: 10, bottom: 5)),
              Image.asset(
                'assets/Group12.png',
                fit: BoxFit.cover,
              ),
              Padding(padding: EdgeInsets.only(bottom: 20)),
              const Text(
                'All your\nfavourite ramen',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 0, 0, 0),
                ),
              ),
              Padding(padding: EdgeInsets.only(bottom: 20)),
              const Text(
                'Delicious as is or tossed with your\nfavorite ingredients',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w100,
                  color: Color.fromARGB(255, 0, 0, 0),
                ),
              ),
              Padding(padding: EdgeInsets.only(bottom: 20)),
              Container(
                width: 300,
                height: 55,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Color.fromARGB(255, 255, 255, 255),
                    width: 1,
                  ),
                ),
                child: ElevatedButton(
                  onPressed: (){
                    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>Register(),));
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
                        borderRadius: BorderRadius.circular(20),
                      )),
                ),
              ),
              Padding(padding: EdgeInsets.only(bottom: 10)),
              Container(
                width: 300,
                height: 55,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Color.fromARGB(255, 255, 255, 255),
                    width: 1,
                  ),
                ),
                child:
                ElevatedButton(
                  onPressed: (){
                    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>LoginPage(),));
                  },
                  child: Text("Login",
                      style: TextStyle(
                        fontFamily: 'Poppins Bold',
                        fontSize: 16,
                      )),
                  style: ElevatedButton.styleFrom(
                      primary: Color(0xffdedede),
                      minimumSize: const Size.fromHeight(55),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)
                      )),
                ),
              ),
            ]),
      ),
    );
  }
}
