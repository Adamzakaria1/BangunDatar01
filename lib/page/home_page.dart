import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page", style: TextStyle(color: Colors.white)),
        backgroundColor: Color(0xFF2FD094),
      ),
      body: ListView(
        children: [
          Row(
            children: [
              Expanded(child: CustomMenu(imageAssets: "assets/persegi.jpeg",title: "Persegi",)),
              Expanded(child: CustomMenu(imageAssets: "assets/persegi_panjang.jpg",title: "Persegi Panjang",)),
            ],
          ),
          Row(
            children: [
              CustomMenu(imageAssets: "assets/segitiga.jpeg",title: "Segitiga",),
              CustomMenu(imageAssets: "assets/segitiga.jpeg",title: "Segitiga",),
            ],
          ),
          CustomMenu(imageAssets: "assets/lingkaran.jpeg",title: "Lingkaran",),
        ],
      ),
    );
  }
}

class CustomMenu extends StatelessWidget {
  const CustomMenu({
    super.key, required this.imageAssets, required this.title,
  });

  final String imageAssets;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10,vertical: 8),
        color: Colors.green.shade600,
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Column(
          children: [
            Image.asset(imageAssets),
            Text(title, style: TextStyle(color:  Colors.white)),
          ],
        ));
  }
}
