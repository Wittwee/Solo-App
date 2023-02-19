// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:solo_app_0/Pages/releases_page.dart';
import 'package:solo_app_0/global_colors.dart';
import 'package:solo_app_0/main.dart';
import 'package:awesome_icons/awesome_icons.dart';
import 'releases_page.dart';


class SeriesShoes extends StatelessWidget{
  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      leading: IconButton(
        icon: Icon(FontAwesomeIcons.arrowAltCircleLeft), onPressed: (){
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => MyHomePage()),);
      },),
      title: Text('Hey there'),
    ),
  );
}