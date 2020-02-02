import 'package:flutter/material.dart';

class HackthonTabs extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HackthonTabsState();
  }
}

class HackthonTabsState extends State<HackthonTabs> with TickerProviderStateMixin{
  AnimationController controller;
  Animation<double> animation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // backgroundColor: Colors.white70,
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Text('Code Night'),
        ),
        body: PageView(
          children: <Widget>[timeline(), ideaRules(), algoRules()],
          // scrollDirection: Axis.vertical,
          physics: BouncingScrollPhysics(),
          pageSnapping: false,
        ));
  }

  initState() {
    super.initState();
    controller = AnimationController(
        duration: const Duration(milliseconds: 2000), vsync: this);
    animation = CurvedAnimation(parent: controller, curve: Curves.linear);

    controller.forward();
  }

  Widget ideaRules() {
    return Container(
      margin: EdgeInsets.all(7),
      child: FadeTransition(
        opacity: animation,
              child: Card(
            // radius: Radius.circular(2),
            elevation: 10,
            color: Colors.redAccent[100],
            child: ListView(
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: Text(
                        'Idea Hackthon Instructions',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          left: 10.0, right: 10.0, top: 10.0, bottom: 10.0),
                      child: Text(
                        '•	All the undergraduates must team up and participate for the event. \n\n•	Teams must form by the department representative and the teams must be equal.\n\n•	Each team should have 5 members including a team leader, two boys and 2 girls.\n\n•	Only the team leaders should register their teams for the hackathon.\n\n•	All the teams should participate for the event at 6.00 PM on November 21st, 2019 and the hackathon will start at 7.30 PM.•	Code review at Session 2.\n\n•	Pre-pitch at Session 3, 3 mins for the presentation and 2 mins for feedback.\n\n•	Final pitch at Session 4, 5 mins for the presentation and 5 mins for Q and A.\n\n•	Existing solutions will be eliminated, but improved solutions are accepted.',
                        style: TextStyle(
                            fontStyle: FontStyle.normal,
                            fontSize: 17.0,
                            color: Colors.black),
                      ),
                    ),
                  ],
                )
              ],
            )),
      ),
    );
  }

  Widget algoRules() {
    return Container(
      margin: EdgeInsets.all(7),
      child: FadeTransition(
        opacity: animation,
              child: Card(
            // radius: Radius.circular(2),
            elevation: 10,
            color: Colors.redAccent[100],
            child: ListView(
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: Text(
                        'Algorithm Hackthon Instructions',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          left: 10.0, right: 10.0, top: 10.0, bottom: 10.0),
                      child: Text(
                        '•	All the undergraduates must team up and participate for the event.\n\n•	Teams must form by the department representative and the teams must be equal.\n\n•	Each team should have 5 members including a team leader, two boys and 2 girls.\n\n•	Only the team leaders should register their teams for the hackathon.\n\n•	All the teams should participate for the event at 6.00 PM on November 21st, 2019 and the hackathon will start at 7.30 PM.\n\n•	Only Java and C languages are allowed to solve the algorithms.\n\n•	Not allowed to copy and paste. All the submissions are check for plagiarism.\n\n•	The winners will get exclusive prizes.',
                        style: TextStyle(
                            fontStyle: FontStyle.normal,
                            fontSize: 17.0,
                            color: Colors.black),
                      ),
                    ),
                  ],
                )
              ],
            )),
      ),
    );
  }

  Widget timeline() {
    return Container(
     // width: 200,
      margin: EdgeInsets.all(7),
      child: FadeTransition(
        opacity: animation,
              child: Card(
                margin: EdgeInsets.only(right: 50),
          color: Colors.redAccent,
          elevation: 10,
          child: ListView(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                    child: Text(
                  'Event Schedule',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                )),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 8,
                  right: 8,
                ),
                child: Card(
                  color: Colors.white54,
                  child: ListTile(
                    // contentPadding: EdgeInsets.all(5),
                    title: Text('Registration',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    subtitle: Text('06.00PM-06.30PM',
                        style: TextStyle(color: Colors.black)),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 8,
                  right: 8,
                ),
                child: Card(
                  color: Colors.white54,
                  child: ListTile(
                    // contentPadding: EdgeInsets.all(5),
                    title: Text('Opening Ceremany',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    subtitle: Text('06.30PM-07.00PM',
                        style: TextStyle(color: Colors.black)),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 8,
                  right: 8,
                ),
                child: Card(
                  color: Colors.white54,
                  child: ListTile(
                    // contentPadding: EdgeInsets.all(5),
                    title: Text('Introduction',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    subtitle: Text('07.00PM-07.30PM',
                        style: TextStyle(color: Colors.black)),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 8,
                  right: 8,
                ),
                child: Card(
                  color: Colors.white54,
                  child: ListTile(
                    // contentPadding: EdgeInsets.all(5),
                    title: Text('Session 1- Beginning of the hackthons',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    subtitle: Text('07.30PM-09.00PM',
                        style: TextStyle(color: Colors.black)),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 8,
                  right: 8,
                ),
                child: Card(
                  color: Colors.white54,
                  child: ListTile(
                    // contentPadding: EdgeInsets.all(5),
                    title: Text('Dinner',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    subtitle: Text('09.00PM-10.00PM',
                        style: TextStyle(color: Colors.black)),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 8,
                  right: 8,
                ),
                child: Card(
                  color: Colors.white54,
                  child: ListTile(
                    // contentPadding: EdgeInsets.all(5),
                    title: Text('Session 2- Hackthon continues',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    subtitle: Text('10.00PM-11.30PM',
                        style: TextStyle(color: Colors.black)),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 8,
                  right: 8,
                ),
                child: Card(
                  color: Colors.white54,
                  child: ListTile(
                    // contentPadding: EdgeInsets.all(5),
                    title: Text('Entertainment musical item',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    subtitle: Text('11.30PM-12.00AM',
                        style: TextStyle(color: Colors.black)),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 8,
                  right: 8,
                ),
                child: Card(
                  color: Colors.white54,
                  child: ListTile(
                    // contentPadding: EdgeInsets.all(5),
                    title: Text('Session 3- Hackthon continues',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    subtitle: Text('12.00AM-02.00AM',
                        style: TextStyle(color: Colors.black)),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 8,
                  right: 8,
                ),
                child: Card(
                  color: Colors.white54,
                  child: ListTile(
                    // contentPadding: EdgeInsets.all(5),
                    title: Text('Entertainment game',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    subtitle: Text('02.00AM-03.00AM',
                        style: TextStyle(color: Colors.black)),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 8,
                  right: 8,
                ),
                child: Card(
                  color: Colors.white54,
                  child: ListTile(
                    // contentPadding: EdgeInsets.all(5),
                    title: Text('Session 4- Hackthon ending and pitch',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    subtitle: Text('03.00AM-06.00AM',
                        style: TextStyle(color: Colors.black)),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 8,
                  right: 8,
                ),
                child: Card(
                  color: Colors.white54,
                  child: ListTile(
                    // contentPadding: EdgeInsets.all(5),
                    title: Text('Closing ceremony and prise giving',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    subtitle: Text(
                      '06.00AM-07.00AM',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
