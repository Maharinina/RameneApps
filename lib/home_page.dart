import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rameneapps/chat.dart';
import 'package:rameneapps/keranjang.dart';
import 'package:rameneapps/profile.dart';


class Home extends StatefulWidget{
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List pages = [
    const ContainerHome(),
    Chat(),
    Keranjang(),
    Profile(),
  ];

  int currentIndex = 0;
  void onTap(int index){
    setState(() {
      currentIndex = index;
    });
  }
  @override
  Widget build(BuildContext context){
    return Scaffold(

      bottomNavigationBar: BottomNavigationBar(
        onTap: onTap,
        currentIndex: currentIndex,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.chat_outlined), label: 'Chat'),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_basket_outlined), label: 'Order'),
          BottomNavigationBarItem(icon: Icon(Icons.person_outline), label: 'Profile'),
        ],
        selectedItemColor: Color(0xFFFFA600),
        unselectedItemColor: Color(0xFFa1a1a1),
        showSelectedLabels: false,
        showUnselectedLabels: false,
        elevation: 0,
      ),
      body: pages.elementAt(currentIndex),

    );
  }
}

class ItemCard extends StatelessWidget {
  final Ramen ramen;
  const ItemCard({
    Key? key,
    required this.ramen,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
          child: Container(
            // height: 170,
            // width: 160,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(ramen.image),
                )
            ),
          ),
        ),
        SizedBox(height: 10),
        Text(
          ramen.name,
          style: TextStyle(
            color: Color(0xFFa1a1a1),
            fontFamily: 'Poppins Light',
          ),
        ),
        SizedBox(height: 2),
        Text(
          ramen.price.toString(),
          style: TextStyle(
            color: Color(0xFF4f4f4f),
            fontFamily: 'Poppins Bold',
          ),
        ),
      ],
    );
  }
}

class ContainerHome extends StatelessWidget {
  const ContainerHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 30,
          ),
          Text('HOME',
            style: TextStyle(
              color: Color(0xFF4f4f4f),
              fontFamily: 'Poppins Bold',
              fontSize: 20,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          TextField(
            controller: null,
            decoration: InputDecoration(
              prefixIcon: const Icon(Icons.search),
              hintText: 'Search ramen...',
              hintStyle: TextStyle(
                fontFamily: 'Poppins Light',
                color: Color(0xFFa1a1a1),
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: BorderSide(color: Color(0xFFa1a1a1)),
              ),
            ),
          ),
          SizedBox(height: 20),
          Align(
            alignment : Alignment.topLeft,
            child : Text('Top Menu',
              style: TextStyle(
                color: Color(0xFF4f4f4f),
                fontFamily: 'Poppins Bold',
                fontSize: 20,
              ),
            ),
          ),
          SizedBox(height: 20),
          Expanded(
            child: GridView.builder(
              itemCount: ramens.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                childAspectRatio: 0.75,
              ),
              itemBuilder: (context, index) => ItemCard(ramen: ramens[index]),
            ),
          ),
        ],
      ),
    );
  }
}


class Ramen{
  final String image, name;
  final int id, price;

  Ramen({
    required this.id,
    required this.name,
    required this.price,
    required this.image,
  });
}

List<Ramen> ramens = [
  Ramen(
      id: 1,
      name: "Kurumen ramen",
      price: 12000,
      image: "assets/img_2.png"
  ),
  Ramen(
    id: 2,
    name: "Hakata ramen",
    price: 15000,
    image: "assets/img_3.png",
  ),
  Ramen(
    id: 3,
    name: "Sapporo miso",
    price: 13000,
    image: "assets/img_4.png",
  ),
  Ramen(
    id: 4,
    name: "Kitakata ramen",
    price: 15000,
    image: "assets/img_5.png",
  ),
  Ramen(
    id: 5,
    name: "Hakodate ramen",
    price: 14000,
    image: "assets/img_6.png",
  ),
  Ramen(
    id: 6,
    name: "Wakayama ramen",
    price: 13000,
    image: "assets/img_1.png",
  )
];