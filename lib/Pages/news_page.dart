// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:solo_app_0/global_colors.dart';
import 'package:awesome_icons/awesome_icons.dart';

class NewsPage extends StatelessWidget{

  List<MyJob> jobs = [
    MyJob(position: "Frontend Developer (m/w/d)", icon: FontAwesomeIcons.bookmark, image: AssetImage('assets/images/assets-5.jpg'), company: 'IBM', location: 'Cologne, North-Rhine-Westphalia, Germany (On-site)', time: '19 hours ago', status: 'Actively recruiting'),
    MyJob(position: "Frontend AEM Developer (m/w/d)", icon: FontAwesomeIcons.bookmark, image: AssetImage('assets/images/assets-5.jpg'), company: 'IBM', location: 'Cologne, North-Rhine-Westphalia, Germany (On-site)', time: '19 hours ago', status: 'Actively recruiting'),
    MyJob(position: "Cloud Developer (m/w/d) - Return to Job", icon: FontAwesomeIcons.bookmark, image: AssetImage('assets/images/assets-5.jpg'), company: 'IBM', location: 'Cologne, North-Rhine-Westphalia, Germany (On-site)', time: '19 hours ago', status: 'Actively recruiting'),
  ];

  List<MyHeadline> headlines = [
    MyHeadline(title: 'Developer', place: 'Cologne Bonn Region, North Rhine-Westphalia, Germany', icon: '...'),

  ];


  NewsPage({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: PreferredSize(
      preferredSize: Size.fromHeight(200.0),
      child: Container(
        height: 90,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(color: backgroundColor, ),
          ],
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              children: [
                Container(decoration: BoxDecoration(
                  border: Border.all(width: 3),
                  borderRadius: BorderRadius.all(Radius.circular(100),
                  ),
                ),
                  child: CircleAvatar(foregroundImage: AssetImage('assets/images/assets-4.jpg'),
                    radius: 22,
                  ),
                ),
                Expanded(child: Container(),),
                Container(width: 250,
                  decoration: BoxDecoration(
                    border: Border.all(width: 1, color: Colors.white),
                    borderRadius: BorderRadius.all(Radius.circular(5),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Row(
                      children: [
                        Icon(Icons.search, color: Colors.white,),
                        Text('Search', style: TextStyle(color: Colors.white),),
                      ],
                    ),
                  ),

                ),
                Expanded(child: Container(),),
                IconButton(onPressed: (){}, icon: Icon(Icons.markunread_rounded, size: 35, color: Colors.white,),),
              ],
            ),
          ),
        ),
      ),
    ),
    body: ListView(shrinkWrap: true,
      children: [
        ListView.builder(
          itemCount: headlines.length,
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) {
            return HeadlineItem(headlines[index]);
          },
        ),
        ListView.builder(
          itemCount: jobs.length,
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) {
            return JobItem(jobs[index]);
          },
        ),
      ],
    ),
  );
}



class MyHeadline {
  String title;
  String place;
  String icon;


  MyHeadline({
    required this.title,
    required this.icon,
    required this.place,
  });
}

class HeadlineItem extends StatelessWidget {
  final MyHeadline headline;

  const HeadlineItem(this.headline, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
          Column(crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            Align(alignment: Alignment.centerLeft, child: Text(headline.title, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),),),
            Align(alignment: Alignment.centerLeft, child: Text(headline.place, style: TextStyle(fontWeight: FontWeight.w600, fontSize: 13), maxLines: 1, overflow: TextOverflow.ellipsis,),),
          ],
          ),
          Expanded(child: Container(),),
          IconButton(onPressed: (){}, icon: Icon(Icons.more_horiz_rounded),),
        ],
        ),
      ),
    );
  }
}



class MyJob {
  String position;
  IconData icon;
  AssetImage image;
  String company;
  String location;
  String time;
  String status;


  MyJob({
    required this.position,
    required this.icon,
    required this.image,
    required this.company,
    required this.location,
    required this.time,
    required this.status,

  });
}

class JobItem extends StatelessWidget{
  final MyJob item;

  const JobItem(this.item, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Align(alignment: Alignment.topLeft ,child: Image(image: item.image, width: 50, height: 50,)),
                SizedBox(width: 30,),
                Expanded(
                  child: Column(
                    children: [
                      Align(alignment: Alignment.centerLeft,child: Text(item.position, style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.w700),),),
                      Align(alignment: Alignment.centerLeft,child: Text(item.company, style: TextStyle(color: Colors.black, fontSize: 17, fontWeight: FontWeight.w500),),),
                      Align(alignment: Alignment.centerLeft,child: Text(item.location, style: TextStyle(color: Colors.black, fontSize: 15, fontWeight: FontWeight.w500),),),
                      Align(alignment: Alignment.centerLeft, child: Row(
                        children: [
                          Icon(Icons.notifications_active, size: 25,),
                          Container(width: 5,),
                          Text(item.status, style: TextStyle(color: Colors.black,),),
                        ],
                      ),
                      ),
                      Container(height: 5,),
                      Align(alignment: Alignment.centerLeft, child: Text(item.time, style: TextStyle(color: Colors.black,),),),
                    ],
                  ),
                ),
                SizedBox(width: 10,),
                Padding(
                  padding: const EdgeInsets.only(right: 2),
                  child: Icon(item.icon, color: Colors.black,),
                ),
              ],
            ),
            Divider(indent: 70, thickness: 2, ),
          ],
        ),
      ),
    );
  }
}