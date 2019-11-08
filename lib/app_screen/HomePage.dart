import 'package:codenight_app/app_screen/HackthonInformation.dart';
import 'package:codenight_app/app_screen/registrationForm1.dart';
import 'package:codenight_app/app_screen/registrationForm2.dart';
import 'package:flutter/material.dart';
import 'package:codenight_app/app_screen/combine.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Container(
        // decoration: BoxDecoration(
        //     image: DecorationImage(image: AssetImage('images/asstes61.png'))),
        child: Scaffold(
          //backgroundColor: Colors.transparent,
          // appBar: AppBar(
          //   backgroundColor: Colors.transparent,
          //   title: Text('CodeNight 2019'),
          // ),
          body: home(),
        ),
      ),
    );
  }

  Widget home() {
    return Container(
      decoration: new BoxDecoration(
        image: new DecorationImage(
          colorFilter: new ColorFilter.mode(
              Colors.white.withOpacity(0.45), BlendMode.dstATop),
          image: new AssetImage("images/assetsx.png"),
          fit: BoxFit.fill,
        ),
      ),
      child: Center(
          child: ListView(
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              // Expanded(child: Image.asset('images/CodeNightLapSticker.png')),
              Padding(
                  padding:
                      EdgeInsets.only(left: 30, right: 30, top: 60, bottom: 30),
                  child: Image.asset('images/CodeNightLogo.png')),
              
            ],
          )
        ],
      )),
    );
  }

  Future _askHack() async {
    switch (await showDialog(
        context: context,
        child: new SimpleDialog(
          contentPadding:
              EdgeInsets.only(right: 10, left: 10, top: 5, bottom: 5),
          title: new Text("Choose Hackthon Category"),
          children: <Widget>[
            new MaterialButton(
              padding: EdgeInsets.all(5),
              child: Text(
                'Idea Hackthon',
                style: TextStyle(color: Colors.white),
              ),
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
              child: new Text("Algorithm Hackthon",
                  style: TextStyle(color: Colors.white)),
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
