import 'package:flutter/material.dart';

class Firstpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8),
      child: Card(
        elevation: 10,
              child: ListView(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 5.0),
              child: Center(
                child: Text(
                  'Code Night Hackathon',
                  style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w700),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image(
                  image: AssetImage('images/CodeNightLogo.png'),
                  width: 350.0,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0),
              child: Text(
                '         Code Night is a hackathon organized by the Society of Computer Sciences in collaboration with Computing and Information Systems which already held twice. Code Night version 3.0 will be an overnight hackathon series in Sabaragamuwa University of Sri Lanka which organized with the key objective of giving the hackathon experience to 2nd and 3rd year undergraduates in Department of Computing and Information Systems and build-up the collaboration between the undergraduates. Instead of a traditional hackathon, this event will provide series of idea and algorithm hackathons to each batch.',
                style: TextStyle(
                  fontStyle: FontStyle.normal,
                  fontSize: 16.0,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 25.0, left: 10.0),
              child: Text(
                'Objectives',
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w700),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: 10.0, right: 10.0, top: 10.0, bottom: 10.0),
              child: Text(
                '•	Give the hackathon experience to all the participants in 2nd and 3rd years.\n•	Encourage the participants to use new technologies and their solutions.•	Improve problem solving environments encourage the development of new ideas.\n•	Inspire participants creating an opportunity to find their inner skills.\n•	Develop leadership, team management and time management skills of participants.\n•	Develop brotherhood between batches.',
                style: TextStyle(fontStyle: FontStyle.normal, fontSize: 16.0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
