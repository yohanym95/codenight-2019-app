import 'package:codenight_app/app_screen/registrationForm1.dart';
import 'package:codenight_app/app_screen/registrationForm2.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart' as prefix0;

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text('CodeNight 2019'),
      ),
      body: Container(
        child: Center(
            child: ListView(
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                MaterialButton(
                  child: Text(
                    'Registration',
                    style: TextStyle(color: Colors.white),
                  ),
                  onPressed: () {
                    //     Navigator.push(
                    //   context,
                    //   MaterialPageRoute(builder: (context) => RegitrationHack()),
                    // );

                    _askHack();
                  },
                  color: Colors.red,
                ),
                MaterialButton(
                  padding: EdgeInsets.only(left: 43, right: 43),
                  child: Text(
                    'Info',
                    style: TextStyle(color: Colors.white),
                  ),
                  onPressed: () {},
                  color: Colors.red,
                )
              ],
            )
          ],
        )),
      ),
    );
  }

  Future _askHack() async {
    switch (await showDialog(
        context: context,
        child: new SimpleDialog(
          contentPadding: EdgeInsets.only(right: 10,left: 10,top: 5,bottom: 5),
          title: new Text("Select Your Hackthon Category"),
          children: <Widget>[
            new MaterialButton(
              padding: EdgeInsets.all(5),
              child: Text('Idea Hackthon',style: TextStyle(color: Colors.white),),
              color: Colors.red,
              onPressed: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => RegitrationHack()),
                );
              },
            ),
            new MaterialButton(
              padding: EdgeInsets.all(5),
              child: new Text("Algorithm Hackthon",style: TextStyle(color: Colors.white)),
              color: Colors.red,
              onPressed: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => RegitrationAlgo()),
                );
              },
            ),
          ],
        ))) {
    }
  }
}
