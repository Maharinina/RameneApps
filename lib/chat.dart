import 'package:flutter/material.dart';

class Chat extends StatelessWidget {
  const Chat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text('Chat',
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