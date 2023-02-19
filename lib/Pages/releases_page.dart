// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:solo_app_0/global_colors.dart';
import 'package:solo_app_0/main.dart';
import 'package:awesome_icons/awesome_icons.dart';
import 'second_screen.dart';

class ReleasesPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) => Scaffold(
    body: Column(
      children: [
        CustomScrollView(
          slivers: [
            SliverAppBar(
              expandedHeight: 100,
              centerTitle: false,
              // title: Text('Releases', style: TextStyle(fontSize: 40, fontWeight: FontWeight.w500),),
              actions: [
                IconButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => SecondScreen(),),);
                }, icon: Icon(FontAwesomeIcons.solidHeart), tooltip: 'Follow the instructions.',),
                SizedBox(width: 12),
                IconButton(onPressed: (){}, icon: Icon(Icons.person), tooltip: 'Follow the instructions.',),
                SizedBox(width: 12),
              ],
              flexibleSpace: FlexibleSpaceBar(
                background: Container(
                  color: backgroundColor,
                ),
                title: Text('R E L E A S E S'),
              ),
            ),
          ],
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
        ),
        Container(
          color: cardBackColorWithoutElevation,
          child: ListView(
            shrinkWrap: true,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Container( decoration: BoxDecoration(border: Border.all(style: BorderStyle.none,
                ), borderRadius: BorderRadius.all(Radius.circular(10)), color: MyApp.customSwatch.shade500,
                ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text('October', style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500, color: Colors.white),),
                            Expanded(
                              child: SizedBox(
                              ),
                            ),
                            Text('76 releases', style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.w500),)
                          ],
                        ),
                        Align(alignment: Alignment.centerLeft,
                            child: Text('2017', style: TextStyle(fontSize: 20, color: Colors.white),)),
                      ],
                    ),
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
                child: Container(decoration: BoxDecoration(border: Border.all(style: BorderStyle.none,
                ), borderRadius: BorderRadius.all(Radius.circular(10)), color: cardForegroundColor,
                ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                            width: 70,
                            height: 70,
                            child: Image.asset('assets/images/assets-2.jpg',),
                          ),
                        ),
                        Expanded(child: Container()),
                        // SizedBox(width: 65,),
                        Column(children:[
                          Text('Nike Air Max 1', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600, color: Colors.white),),
                          Text('White/Cool Grey', style: TextStyle(color: Colors.white60)),
                          Text('200.00 USD', style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600, color: Colors.white),),
                        ],
                        ),
                        Expanded(child: Container()),
                        // SizedBox(width: 86,),
                        Container(width: 40,
                          decoration: BoxDecoration(
                              color: MyApp.customSwatch.shade400,
                              border: Border.all(style: BorderStyle.none,
                              ),
                              borderRadius: BorderRadius.all(Radius.circular(5))
                          ),
                          child: Align(
                            alignment: Alignment.centerRight,
                            child: Column(
                              children: [
                                Text('12', style: TextStyle(fontSize: 20, color: Colors.white),),
                                Text('A P R', style: TextStyle(fontSize: 15, color: Colors.white),)
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30,),
                child: Divider(color: Colors.yellow,),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
                child: Container(decoration: BoxDecoration(border: Border.all(style: BorderStyle.none,
                ), borderRadius: BorderRadius.all(Radius.circular(10)), color: cardForegroundColor,
                ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                            width: 70,
                            height: 70,
                            child: Image.asset('assets/images/assets-2.jpg',),
                          ),
                        ),
                        SizedBox(width: 58,),
                        Column(children:[
                          Text('Nike Air Max 1', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600, color: Colors.white),),
                          Text('Anniversary/OG Red', style: TextStyle(color: Colors.white60),),
                          Text('200.00 USD', style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600, color: Colors.white),),
                        ],
                        ),
                        SizedBox(width: 68,),
                        Container(width: 40,
                          decoration: BoxDecoration(
                              color: MyApp.customSwatch.shade400,
                              border: Border.all(style: BorderStyle.none,
                              ),
                              borderRadius: BorderRadius.all(Radius.circular(5))
                          ),
                          child: Align(
                            alignment: Alignment.centerRight,
                            child: Column(
                              children: [
                                Text('09', style: TextStyle(fontSize: 20, color: Colors.white),),
                                Text('A P R', style: TextStyle(fontSize: 15, color: Colors.white),)
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30, right: 30),
                child: Divider(color: Colors.blueGrey,),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
                child: Container(decoration: BoxDecoration(border: Border.all(style: BorderStyle.none,
                ), borderRadius: BorderRadius.all(Radius.circular(10)), color: cardForegroundColor,
                ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                            width: 70,
                            height: 70,
                            child: Image.asset('assets/images/assets-2.jpg',),
                          ),
                        ),
                        SizedBox(width: 65,),
                        Column(children:[
                          Text('Air Jordan III', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600, color: Colors.white),),
                          Text('White/Cement', style: TextStyle(color: Colors.white60),),
                          Text('200.00 USD', style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600, color: Colors.white),),
                        ],
                        ),
                        SizedBox(width: 90,),
                        Container(width: 40,
                          decoration: BoxDecoration(
                              color: MyApp.customSwatch.shade400,
                              border: Border.all(style: BorderStyle.none,
                              ),
                              borderRadius: BorderRadius.all(Radius.circular(5))
                          ),
                          child: Align(
                            alignment: Alignment.centerRight,
                            child: Column(
                              children: [
                                Text('06', style: TextStyle(fontSize: 20, color: Colors.white),),
                                Text('A P R', style: TextStyle(fontSize: 15, color: Colors.white),)
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30, right: 30),
                child: Divider(color: Colors.blueGrey,),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
                child: Container(decoration: BoxDecoration(border: Border.all(style: BorderStyle.none,
                ), borderRadius: BorderRadius.all(Radius.circular(10)), color: cardForegroundColor,
                ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                            width: 70,
                            height: 70,
                            child: Image.asset('assets/images/assets-2.jpg',),
                          ),
                        ),
                        SizedBox(width: 65,),
                        Column(children:[
                          Text('Air Jordan III', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600, color: Colors.white),),
                          Text('White/Cement', style: TextStyle(color: Colors.white60)),
                          Text('200.00 USD', style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600, color: Colors.white),),
                        ],
                        ),
                        SizedBox(width: 90,),
                        Container(width: 40,
                          decoration: BoxDecoration(
                              color: MyApp.customSwatch.shade400,
                              border: Border.all(style: BorderStyle.none,
                              ),
                              borderRadius: BorderRadius.all(Radius.circular(5))
                          ),
                          child: Align(
                            alignment: Alignment.centerRight,
                            child: Column(
                              children: [
                                Text('03', style: TextStyle(fontSize: 20, color: Colors.white),),
                                Text('A P R', style: TextStyle(fontSize: 15, color: Colors.white),)
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30, right: 30),
                child: Divider(color: Colors.blueGrey,),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
                child: Container(decoration: BoxDecoration(border: Border.all(style: BorderStyle.none,
                ), borderRadius: BorderRadius.all(Radius.circular(10)), color: cardForegroundColor,
                ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                            width: 70,
                            height: 70,
                            child: Image.asset('assets/images/assets-2.jpg',),
                          ),
                        ),
                        SizedBox(width: 65,),
                        Column(children:[
                          Text('Air Jordan III', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600, color: Colors.white),),
                          Text('White/Cement', style: TextStyle(color: Colors.white60),),
                          Text('200.00 USD', style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600, color: Colors.white),),
                        ],
                        ),
                        SizedBox(width: 90,),
                        Container(width: 40,
                          decoration: BoxDecoration(
                              color: MyApp.customSwatch.shade400,
                              border: Border.all(style: BorderStyle.none,
                              ),
                              borderRadius: BorderRadius.all(Radius.circular(5))
                          ),
                          child: Align(
                            alignment: Alignment.centerRight,
                            child: Column(
                              children: [
                                Text('01', style: TextStyle(fontSize: 20, color: Colors.white),),
                                Text('A P R', style: TextStyle(fontSize: 15, color: Colors.white),)
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}