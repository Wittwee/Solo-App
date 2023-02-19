// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:solo_app_0/main.dart';
import 'package:awesome_icons/awesome_icons.dart';
import 'second_screen.dart';
import 'package:solo_app_0/global_colors.dart';

class CatalogPage extends StatelessWidget{
  const CatalogPage({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
    backgroundColor: cardForegroundColor,
    body: CustomScrollView(
      slivers: [
        SliverAppBar(
          expandedHeight: 50,
          centerTitle: false,
          actions: [
            IconButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => SecondScreen(),),);
            }, icon: Icon(FontAwesomeIcons.solidHeart), tooltip: 'Follow the instructions.',),
            SizedBox(width: 5),
            IconButton(onPressed: (){}, icon: Icon(Icons.person, size: 35,), tooltip: 'Follow the instructions.',),
            SizedBox(width: 12),
          ],
          flexibleSpace: FlexibleSpaceBar(
            background: Container(
              color: backgroundColor,
            ),
            title: Text('R E L E A S E S'),
          ),
        ),
        SliverToBoxAdapter(
          child: GridView(shrinkWrap: true,
            scrollDirection: Axis.vertical,
              physics: NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4, crossAxisSpacing: 5, mainAxisSpacing: 5),
          children: [
            Image.asset('assets/images/assets-3.jpg', fit: BoxFit.fill),
            Image.asset('assets/images/assets-3.jpg', fit: BoxFit.fill),
            Image.asset('assets/images/assets-3.jpg', fit: BoxFit.fill),
            Image.asset('assets/images/assets-3.jpg', fit: BoxFit.fill),

            Image.asset('assets/images/assets-3.jpg', fit: BoxFit.fill),
            Image.asset('assets/images/assets-3.jpg', fit: BoxFit.fill),
            Image.asset('assets/images/assets-3.jpg', fit: BoxFit.fill),
            Image.asset('assets/images/assets-3.jpg', fit: BoxFit.fill),

            Image.asset('assets/images/assets-3.jpg', fit: BoxFit.fill),
            Image.asset('assets/images/assets-3.jpg', fit: BoxFit.fill),
            Image.asset('assets/images/assets-3.jpg', fit: BoxFit.fill),
            Image.asset('assets/images/assets-3.jpg', fit: BoxFit.fill),

            Image.asset('assets/images/assets-3.jpg', fit: BoxFit.fill),
            Image.asset('assets/images/assets-3.jpg', fit: BoxFit.fill),
            Image.asset('assets/images/assets-3.jpg', fit: BoxFit.fill),
            Image.asset('assets/images/assets-3.jpg', fit: BoxFit.fill),

            Image.asset('assets/images/assets-3.jpg', fit: BoxFit.fill),
            Image.asset('assets/images/assets-3.jpg', fit: BoxFit.fill),
            Image.asset('assets/images/assets-3.jpg', fit: BoxFit.fill),
            Image.asset('assets/images/assets-3.jpg', fit: BoxFit.fill),

            Image.asset('assets/images/assets-3.jpg', fit: BoxFit.fill),
            Image.asset('assets/images/assets-3.jpg', fit: BoxFit.fill),
            Image.asset('assets/images/assets-3.jpg', fit: BoxFit.fill),
            Image.asset('assets/images/assets-3.jpg', fit: BoxFit.fill),

            Image.asset('assets/images/assets-3.jpg', fit: BoxFit.fill),
            Image.asset('assets/images/assets-3.jpg', fit: BoxFit.fill),
            Image.asset('assets/images/assets-3.jpg', fit: BoxFit.fill),
            Image.asset('assets/images/assets-3.jpg', fit: BoxFit.fill),

            Image.asset('assets/images/assets-3.jpg', fit: BoxFit.fill),
            Image.asset('assets/images/assets-3.jpg', fit: BoxFit.fill),
            Image.asset('assets/images/assets-3.jpg', fit: BoxFit.fill),
            Image.asset('assets/images/assets-3.jpg', fit: BoxFit.fill),

            Image.asset('assets/images/assets-3.jpg', fit: BoxFit.fill),
            Image.asset('assets/images/assets-3.jpg', fit: BoxFit.fill),
            Image.asset('assets/images/assets-3.jpg', fit: BoxFit.fill),
            Image.asset('assets/images/assets-3.jpg', fit: BoxFit.fill),
          ],
          ),
        ),
      ],
    ),
  );
}