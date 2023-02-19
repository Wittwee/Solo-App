// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:solo_app_0/Pages/region_shoes.dart';
import 'package:solo_app_0/Pages/series_shoes.dart';
import 'package:solo_app_0/global_colors.dart';
import 'package:solo_app_0/main.dart';
import 'package:awesome_icons/awesome_icons.dart';
import 'second_screen.dart';

class ReleasesPage extends StatelessWidget{
  List<String> myList = [
    "fkjd", "fdkfd", "klrelkre", "fdklfdlk", "fdlkrr", "fdllkfd", "fdklroke",
    "reoerok", "rioek", "lkfdkldf", "iotreo"
  ];
  List<MyItem> items = [
    MyItem(title: "Sneaker", description: "White/Cool Grey", price: "200.00 USD", date: 12, month: "APR"),
    MyItem(title: "Jackson", description: "White/Cool Grey", price: "200.00 USD", date: 11, month: "APR"),
    MyItem(title: "Coby", description: "White/Cool Grey", price: "200.00 USD", date: 10, month: "APR"),
    MyItem(title: "O'Brian", description: "White/Cool Grey", price: "200.00 USD", date: 9, month: "APR"),
    MyItem(title: "Lebron", description: "White/Cool Grey", price: "200.00 USD", date: 8, month: "APR"),
    MyItem(title: "Stephen", description: "White/Cool Grey", price: "200.00 USD", date: 7, month: "APR"),
    MyItem(title: "Michael", description: "White/Cool Grey", price: "200.00 USD", date: 6, month: "APR"),
    MyItem(title: "klfklfd", description: "White/Cool Grey", price: "200.00 USD", date: 5, month: "APR"),
    MyItem(title: "klfklfd", description: "White/Cool Grey", price: "200.00 USD", date: 4, month: "APR"),
    MyItem(title: "klfklfd", description: "White/Cool Grey", price: "200.00 USD", date: 3, month: "APR"),
    MyItem(title: "klfklfd", description: "White/Cool Grey", price: "200.00 USD", date: 2, month: "APR"),
  ];


  List<MyNavigation> navigations = [
    MyNavigation(title: "Regional", icon: FontAwesomeIcons.globe,),
    MyNavigation(title: "Series", icon: FontAwesomeIcons.film,),
    MyNavigation(title: "Promos", icon: FontAwesomeIcons.ad,),
    MyNavigation(title: "About Us", icon: FontAwesomeIcons.atlas,),
    MyNavigation(title: "Find friends", icon: FontAwesomeIcons.userFriends,),
    MyNavigation(title: "Partnerships", icon: FontAwesomeIcons.handHoldingUsd,),
  ];


  @override
  Widget build(BuildContext context) => Scaffold(
    backgroundColor: backgroundColor,
    drawer: Drawer(width: 300, backgroundColor: cardBackgroundColor, elevation: 100,
      child: ListView(
        shrinkWrap: true,
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: [
          Opacity(opacity: 0.8,
            child: DrawerHeader(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(bottomRight: Radius.circular(30)),
                color: Colors.black,
                image: DecorationImage(
                  fit: BoxFit.fill,
                  opacity: 0.4,
                  image: NetworkImage('https://static.nike.com/a/images/f_auto/dpr_1.0,cs_srgb/w_1824,c_limit/9b34461a-5761-4d5c-a4cb-899c0d223118/how-to-increase-your-running-mileage-without-getting-injured-according-to-experts.jpg'),
                ),
              ),
              child: Text('Nike \n- \nEverything shoes', style: TextStyle(color: Colors.white, fontSize: 30, fontStyle: FontStyle.italic, fontWeight: FontWeight.bold,),),
            ),
          ),
          ListView.builder(
            itemCount: navigations.length,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return NavItem(navigations[index]);
            },
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Expanded(
              child: Container(height: 75,
                color: cardForegroundColor,
                child: ElevatedButton(onPressed: () {},
                  child: Row(children: [
                    Text('Contact form ', style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700, color: Colors.white),),
                    Icon(FontAwesomeIcons.arrowAltCircleRight, color: Colors.white, size: 35,),
                  ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    ),
    body: CustomScrollView(
      slivers: [
        SliverAppBar(
          expandedHeight: 100,
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
        SliverList(delegate: SliverChildListDelegate([
          SizedBox(height: 20,),
          Column(
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
              ListView.builder(
                shrinkWrap: true,
                itemCount: myList.length,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return Padding(
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
                              child: SizedBox(
                                width: 70,
                                height: 70,
                                child: Image.asset('assets/images/assets-2.jpg',),
                              ),
                            ),
                            Expanded(child: Container()),
                            // SizedBox(width: 65,),
                            Column(children:[
                              Text(items[index].title, style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600, color: Colors.white),),
                              Text(items[index].description, style: TextStyle(color: Colors.white60)),
                              Text(items[index].price, style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600, color: Colors.white),),
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
                                    Center(child: Text("${items[index].date}", style: TextStyle(fontSize: 20, color: Colors.white),)),
                                    Center(child: Text(items[index].month, style: TextStyle(fontSize: 15, color: Colors.white),))
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },),
            ],
          ),
        ],),),
      ],
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
    ),
  );
}

class MyItem {
  String title;
  String description;
  String price;
  int date;
  String month;

  MyItem({
    required this.title,
    required this.description,
    required this.price,
    required this.date,
    required this.month,
  });
}
class MyNavigation {
  String title;
  IconData icon;

  MyNavigation({
    required this.title,
    required this.icon,
  });
}

class NavItem extends StatelessWidget{
  final MyNavigation item;

  const NavItem(this.item, {super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(bottomRight: Radius.circular(10),),
          color: cardForegroundColor,
        ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(item.title, style: TextStyle(color: Colors.white, fontSize: 30),),
              Expanded(child: Container(),),
              Padding(
                padding: const EdgeInsets.only(right: 2),
                child: Icon(item.icon, color: Colors.white,),
              ),
            ],
          ),
        ),
      ),
    );
  }
}