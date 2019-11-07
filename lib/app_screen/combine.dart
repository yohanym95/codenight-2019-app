import 'package:flutter/material.dart';
import 'package:codenight_app/app_screen/first_screen.dart' as Hackothon;
import 'package:codenight_app/app_screen/second_screen.dart' as SOCS;
import 'package:codenight_app/app_screen/third_screen.dart' as CIS;


class MyTabs extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return MyTabsState();
  }
}
class MyTabsState extends State<MyTabs> with SingleTickerProviderStateMixin{

  TabController controller;
  @override
  void initState(){
    super.initState();
    controller=TabController(vsync: this,length: 3);
  }

  @override
  void dispose(){
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Code Night v3.0'
        ),
        bottom: TabBar(
          controller: controller,
          tabs: <Tab>[
            Tab(
              text: "Hackothon",
            ),
            Tab(
              text: "SOCS",
            ),
            Tab(
              text: "CIS",
            )
          ],
        ),
      ),
      body: TabBarView(
        controller: controller,
        children: <Widget>[
          Hackothon.Firstpage(),
          SOCS.Secondpage(),
          CIS.Thirdpage()
        ],
      ),
    );
  }
}