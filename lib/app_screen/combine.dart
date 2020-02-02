import 'package:flutter/material.dart';
import 'package:codenight_app/app_screen/first_screen.dart' as Hackothon;
import 'package:codenight_app/app_screen/second_screen.dart' as SOCS;
import 'package:codenight_app/app_screen/third_screen.dart' as CIS;

class MyTabs extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyTabsState();
  }
}

class MyTabsState extends State<MyTabs>
    with SingleTickerProviderStateMixin, TickerProviderStateMixin {
  AnimationController controller1;
  Animation<double> animation;

  TabController controller;
  @override
  void initState() {
    super.initState();
    controller = TabController(vsync: this, length: 3);

    controller1 = AnimationController(
        duration: const Duration(milliseconds: 2000), vsync: this);
    animation = CurvedAnimation(parent: controller1, curve: Curves.linear);

    // animation.addStatusListener((status) {
    //   if (status == AnimationStatus.completed) {
    //     controller.reverse();
    //   } else if (status == AnimationStatus.dismissed) {
    //     controller.forward();
    //   }
    // });

    controller1.forward();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text('Code Night'),
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
          FadeTransition(opacity: animation, child: Hackothon.Firstpage()),
          FadeTransition(opacity: animation, child: SOCS.Secondpage()),
          FadeTransition(opacity: animation, child: CIS.Thirdpage())
        ],
      ),
    );
  }
}
