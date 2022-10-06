import 'package:flutter/material.dart';
import 'package:rameneapps/loginpage.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text('Account',
          style: TextStyle(
            color: Color(0xFF4f4f4f),
            fontFamily: 'Poppins Bold',
            fontSize: 20,
          ),
        ),
        centerTitle: true,
      ),
      body:
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
        child: Column(
          children: <Widget>[
            Container(
              height: 115,
              width: 115,
              child: CircleAvatar(
                backgroundImage: AssetImage("assets/profil.png"),
              ),
            ),
            SizedBox(height: 40),
            const Padding(
              padding: EdgeInsets.only(right: 10),
              child: Center(
                child: Text(
                  'Maharini Nabela Ayuningsih',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.normal,
                    color: Color.fromARGB(255, 0, 0, 0),
                  ),
                ),
              )
            ),
            SizedBox(height: 15),
            const Padding(
                padding: EdgeInsets.only(right: 10),
                child: Center(
                  child: Text(
                    '085804910276',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize:16,
                      fontWeight: FontWeight.normal,
                      color: Color.fromARGB(255, 89, 88, 88),
                    ),
                  ),
                )
            ),
            SizedBox(height: 80),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                ElevatedButton(
                  onPressed: (){},
                  child: Text(
                    "Ubah Kata Sandi",
                    style: TextStyle(
                      color: Colors.black26,
                      fontFamily: 'Poppins Semibold',
                      fontSize: 14,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(horizontal: 110, vertical: 15),
                      primary: Color.fromARGB(255, 211,211,211),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      )
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                ElevatedButton(
                  onPressed: (){},
                  child: Text(
                    "Pengaturan",
                    style: TextStyle(
                      color: Colors.black26,
                      fontFamily: 'Poppins Semibold',
                      fontSize: 14,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(horizontal: 125, vertical: 15),
                      primary: Color.fromARGB(255, 211,211,211),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      )
                  ),
                ),
              ],
            ),
            SizedBox(height: 80),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                ElevatedButton(
                  onPressed: (){Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>LoginPage(),));},
                  child: Text(
                    "Log Out",
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Poppins Semibold',
                      fontSize: 14,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(horizontal: 135, vertical: 15),
                      primary: Color.fromARGB(255, 238, 75, 43),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      )
                  ),
                ),
           ],
            ),
          ],
        ),
      ),
    );
  }
}