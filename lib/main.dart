import 'package:codenight_app/app_screen/HomePage.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'CodeNight 2019',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'CodeNight 2019'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 4), () {
      Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(builder: (context) => HomePage()),
        (Route<dynamic> route) => false,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: new BoxDecoration(
          image: new DecorationImage(
            colorFilter: new ColorFilter.mode(
                Colors.white.withOpacity(0.45), BlendMode.dstATop),
            image: new AssetImage("images/assetsx.png"),
            fit: BoxFit.fill,
          ),
        ),
        child: new Center(
            child: Column(
          children: <Widget>[
            Expanded(child: Image.asset('images/CodeNightLapSticker.png')),
            Container(
              child: CircularProgressIndicator()),
            Container(
              margin: EdgeInsets.all(8),
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Loading....',
                style: TextStyle(color: Colors.black, fontSize: 18.0,fontWeight:FontWeight.bold),
              ),
            ),
            
          ],
        )),
      ),
    );
  }
}
