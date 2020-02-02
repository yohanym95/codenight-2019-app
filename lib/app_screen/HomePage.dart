import 'package:codenight_app/app_screen/HackthonInformation.dart';
import 'package:codenight_app/app_screen/registrationForm1.dart';
import 'package:codenight_app/app_screen/registrationForm2.dart';
import 'package:flutter/material.dart';
import 'package:codenight_app/app_screen/combine.dart';
import 'package:simple_animations/simple_animations/controlled_animation.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  AnimationController controller;
  Animation<double> animation;

  static final boxDecoration = BoxDecoration(
      color: Colors.red,
      borderRadius: BorderRadius.all(Radius.circular(10)),
      boxShadow: [
        BoxShadow(
            color: Colors.black.withAlpha(60),
            blurRadius: 10,
            offset: Offset(0, 8),
            spreadRadius: 2)
      ]);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Container(
        child: Scaffold(
          body: home(),
        ),
      ),
    );
  }

  initState() {
    super.initState();
    controller = AnimationController(
        duration: const Duration(milliseconds: 2000), vsync: this);
    animation = CurvedAnimation(parent: controller, curve: Curves.linear);

    // animation.addStatusListener((status) {
    //   if (status == AnimationStatus.completed) {
    //     controller.reverse();
    //   } else if (status == AnimationStatus.dismissed) {
    //     controller.forward();
    //   }
    // });

    controller.forward();
  }

  Widget home() {
    // double scale1 = 1 + _animationController.value;
    return Container(
      decoration: new BoxDecoration(
        image: new DecorationImage(
          colorFilter: new ColorFilter.mode(
              Colors.white.withOpacity(0.45), BlendMode.dstATop),
          image: new AssetImage("images/assetsx.png"),
          fit: BoxFit.fill,
        ),
      ),
      child: Container(
        child: Center(
              child: ListView(
            children: <Widget>[
              FadeTransition(
        opacity: animation,
                      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            // Expanded(child: Image.asset('images/CodeNightLapSticker.png')),
            FadeTransition(
              opacity: animation,
                          child: Padding(
                  padding:
                      EdgeInsets.only(left: 30, right: 30, top: 60, bottom: 30),
                  child: Image.asset('images/CodeNightLogo.png')),
            ),
            FadeTransition(
              opacity: animation,
                          child: Padding(
                padding: EdgeInsets.only(top: 25, bottom: 40),
                child: GestureDetector(
                  onTap: _askHack,
                  child: ControlledAnimation(
                    duration: Duration(milliseconds: 400),
                    tween: Tween(begin: 0.0, end: 60.0),
                    builder: (context, height) {
                      return ControlledAnimation(
                        duration: Duration(milliseconds: 1200),
                        delay: Duration(milliseconds: 500),
                        tween: Tween(begin: 2.0, end: 250.0),
                        builder: (context, width) {
                          return Container(
                            decoration: boxDecoration,
                            width: width,
                            height: height,
                            child: isEnoughRoomForTypewriter(width)
                                ? TypewriterText("Registration")
                                : Container(),
                          );
                        },
                      );
                    },
                  ),
                ),
              ),
            ),
            FadeTransition(
              opacity: animation,
                          child: Padding(
                  padding: EdgeInsets.only(top: 50, bottom: 5),
                  child: MaterialButton(
                    padding: EdgeInsets.only(left: 25, right: 25),
                    child: Text(
                      'Hackthon Information',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                    color: Colors.white24,
                    //  color: Colors.white12,
                    shape: RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(10.0),
                      // side: BorderSide(color: Colors.red)
                    ),

                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => HackthonTabs()));
                    },
                  )),
            ),
            FadeTransition(
              opacity: animation,
                          child: Padding(
                  padding: EdgeInsets.only(top: 10, bottom: 30),
                  child: MaterialButton(
                    padding: EdgeInsets.only(left: 43, right: 43),
                    child: Text(
                      'About Us',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                    color: Colors.white12,
                    //  color: Colors.white12,
                    shape: RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(10.0),
                      // side: BorderSide(color: Colors.red)
                    ),

                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => MyTabs()));
                    },
                  )),
            )
          ],
        ),
              )
            ],
          )),
      ),
    );
  }

  isEnoughRoomForTypewriter(width) => width > 20;

  Future _askHack() async {
    switch (await showDialog(
        context: context,
        child: new SimpleDialog(
          contentPadding:
              EdgeInsets.only(right: 10, left: 10, top: 5, bottom: 5),
          title: new Text("Select Hackthon Category",textAlign: TextAlign.center,),
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

  // onTapUp(TapUpDetails details) {
  //   _animationController.reverse();
  // }

  // onTapDown(TapDownDetails details) {
  //   _animationController.forward();
  // }

  // onTapCancel() {
  //   _animationController.reverse();
  // }
}

class TypewriterText extends StatelessWidget {
  static const TEXT_STYLE =
      TextStyle(letterSpacing: 4, fontSize: 19, fontWeight: FontWeight.bold,color: Colors.white);

  final String text;
  TypewriterText(this.text);

  @override
  Widget build(BuildContext context) {
    return ControlledAnimation(
        playback: Playback.LOOP,
        duration: Duration(milliseconds: 3000),
        delay: Duration(milliseconds: 800),
        tween: IntTween(begin: 0, end: text.length),
        builder: (context, textLength) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(text.substring(0, textLength), style: TEXT_STYLE),
              ControlledAnimation(
                playback: Playback.LOOP,
                duration: Duration(milliseconds: 600),
                tween: IntTween(begin: 0, end: 1),
                builder: (context, oneOrZero) {
                  return Opacity(
                      opacity: oneOrZero == 1 ? 1.0 : 0.0,
                      child: Text("_", style: TEXT_STYLE));
                },
              )
            ],
          );
        });
  }
}

// class TypewriterBoxDemo extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return ExamplePage(
//       title: "Typewriter Box",
//       pathToFile: "typewriter_box.dart",
//       delayStartup: true,
//       builder: (context) => Center(child: Box()),
//     );
//   }
// }
