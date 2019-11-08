import 'package:flutter/material.dart';
import 'package:codenight_app/app_screen/first_screen.dart' as Hackothon;
import 'package:codenight_app/app_screen/second_screen.dart' as SOCS;
import 'package:codenight_app/app_screen/third_screen.dart' as CIS;

class HackthonTabs extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HackthonTabsState();
  }
}

class HackthonTabsState extends State<HackthonTabs>
    with SingleTickerProviderStateMixin {
  TabController controller;
  @override
  void initState() {
    super.initState();
    controller = TabController(vsync: this, length: 3);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // backgroundColor: Colors.white70,
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Text('Code Night'),
        ),
        body: ListView(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                  child: Text(
                'Agenda',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              )),
            ),
            Padding(
              padding: EdgeInsets.only(left: 8, right: 8, top: 5, bottom: 5),
              child: Card(
                color: Colors.white70,
                child: ListTile(
                  // contentPadding: EdgeInsets.all(5),
                  title: Text('Registration'),
                  subtitle: Text('06.00PM-06.30PM'),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 8, right: 8, top: 5, bottom: 5),
              child: Card(
                color: Colors.white70,
                child: ListTile(
                  // contentPadding: EdgeInsets.all(5),
                  title: Text('Opening Ceremany'),
                  subtitle: Text('06.30PM-07.00PM'),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 8, right: 8, top: 5, bottom: 5),
              child: Card(
                color: Colors.white70,
                child: ListTile(
                  // contentPadding: EdgeInsets.all(5),
                  title: Text('Introduction'),
                  subtitle: Text('07.00PM-07.30PM'),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 8, right: 8, top: 5, bottom: 5),
              child: Card(
                color: Colors.white70,
                child: ListTile(
                  // contentPadding: EdgeInsets.all(5),
                  title: Text('Session 1- Beginning of the hackthons'),
                  subtitle: Text('07.30PM-09.00PM'),
                ),
              ),
            ),

              Padding(
              padding: EdgeInsets.only(left: 8, right: 8, top: 5, bottom: 5),
              child: Card(
                color: Colors.white70,
                child: ListTile(
                  // contentPadding: EdgeInsets.all(5),
                  title: Text('Dinner'),
                  subtitle: Text('09.00PM-10.00PM'),
                ),
              ),
            ),

              Padding(
              padding: EdgeInsets.only(left: 8, right: 8, top: 5, bottom: 5),
              child: Card(
                color: Colors.white70,
                child: ListTile(
                  // contentPadding: EdgeInsets.all(5),
                  title: Text('Session 2- Hackthon continues'),
                  subtitle: Text('10.00PM-11.30.00PM'),
                ),
              ),
            ),

              Padding(
              padding: EdgeInsets.only(left: 8, right: 8, top: 5, bottom: 5),
              child: Card(
                color: Colors.white70,
                child: ListTile(
                  // contentPadding: EdgeInsets.all(5),
                  title: Text('Entertainment musical item'),
                  subtitle: Text('07.30PM-09.00PM'),
                ),
              ),
            ),

             Padding(
              padding: EdgeInsets.only(left: 8, right: 8, top: 5, bottom: 5),
              child: Card(
                color: Colors.white70,
                child: ListTile(
                  // contentPadding: EdgeInsets.all(5),
                  title: Text('Session 3- Hackthon continues'),
                  subtitle: Text('12.00PM-02.00PM'),
                ),
              ),
            ),

            Padding(
              padding: EdgeInsets.only(left: 8, right: 8, top: 5, bottom: 5),
              child: Card(
                color: Colors.white70,
                child: ListTile(
                  // contentPadding: EdgeInsets.all(5),
                  title: Text('Entertainment game'),
                  subtitle: Text('02.00PM-03.00PM'),
                ),
              ),
            ),

            Padding(
              padding: EdgeInsets.only(left: 8, right: 8, top: 5, bottom: 5),
              child: Card(
                color: Colors.white70,
                child: ListTile(
                  // contentPadding: EdgeInsets.all(5),
                  title: Text('Session 4- Hackthon ending and pitch'),
                  subtitle: Text('03.00PM-06.00PM'),
                ),
              ),
            ),

            Padding(
              padding: EdgeInsets.only(left: 8, right: 8, top: 5, bottom: 5),
              child: Card(
                color: Colors.white70,
                child: ListTile(
                  // contentPadding: EdgeInsets.all(5),
                  title: Text('Session 4- Hackthon ending and pitch'),
                  subtitle: Text('03.00PM-06.00PM'),
                ),
              ),
            ),

            Padding(
              padding: EdgeInsets.only(left: 8, right: 8, top: 5, bottom: 5),
              child: Card(
                color: Colors.white70,
                child: ListTile(
                  // contentPadding: EdgeInsets.all(5),
                  title: Text('Closing ceremony and prise giving'),
                  subtitle: Text('06.00PM-07.00PM'),
                ),
              ),
            ),

             Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                  child: Text(
                'Rules',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              )),
            ),

          ],
        ));
  }
}
