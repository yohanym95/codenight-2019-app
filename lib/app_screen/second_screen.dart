import 'package:flutter/material.dart';

class Secondpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8),
      child: Card(
        elevation: 10,
              child: ListView(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 10.0),
              child: Center(
                child: Text(
                  'Society of Computer Sciences',
                  style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w700),
                ),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image(
                  image: AssetImage('images/socs.png'),
                  width: 350.0,
                  alignment: Alignment.center,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0),
              child: Text(
                '     The SOCS is an independent, non-profit society of Sabaragamuwa University of Sri Lanka that advocate for personals involved in information technology, and stimulates people to bring the country’s usage of information technology to a next level. It engages in the development, adoption and use of globally accepted, industry-leading knowledge and practices for information technology development and governance.\n      With the ambition of providing the global IT knowledge and work through unique ideas with the individuals who are not undergraduates of Information Technology either Computer Science, and also to gain the newer opportunities from the industry, to self-updated among the professionals, the Students of the Department of Computing and Information Systems coadunate with undergraduates of other departments and also with other faculties and Formed SOCS.\n        SOCS provides practical guidance, benchmarks and other effective tools for all who are willing to use information technology, and makes link among resource people, researchers, students, professors, organizations, and companies to produce socially responsible professionals with entrepreneurial skills, leadership qualities and integrity contributing to position the country as a knowledge hub in the region.',
                style: TextStyle(fontStyle: FontStyle.normal, fontSize: 16.0),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
