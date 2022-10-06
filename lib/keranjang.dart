import 'package:flutter/material.dart';

class Keranjang extends StatelessWidget {
  const Keranjang({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text('Shopping Basket',
          style: TextStyle(
            color: Color(0xFF4f4f4f),
            fontFamily: 'Poppins Bold',
            fontSize: 20,
          ),
        ),
        centerTitle: true,
      ),
    );
  }
}