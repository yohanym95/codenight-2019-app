import 'package:flutter/material.dart';

class Thirdpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8),
      child: Card(
        elevation: 10,
        child: ListView(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 10.0, left: 10.0, right: 10.0),
              child: Center(
                child: Text(
                  'Department of Computing and Information Systems',
                  style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w700),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image(
                  image: AssetImage('images/cis.png'),
                  width: 350.0,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0),
              child: Text(
                '     The Department of Computing and Information Systems, which offers a B.Sc. (special) degree in Information Systems was established in 1st March 2011, though the degree program was initiated back in 2008. The demand for the above degree program has greatly increased throughout the years and the annual intake has reached the maximum capacity of 100 students per batch from 2007. The department has a very good relationship with the software industries to obtain technical support in conducting lectures and practical lectures as well as to provide opportunities for the undergraduates to carry out their mini projects, industrial projects and the research project. Graduates of Department of Computing and Information Systems mainly target Information technology related jobs in private and public sectors. The degree program also covers the knowledge in the fields of software development, business analysis, network administration, database administration, web development, IT management, IT strategic planning, Robotics, IT policy making and enterprise architecture. In addition, Department of Computing and Information Systems places a higher value on researches with the collaboration of dedicated lecturers and with other universities. Our department strongly believes that, the secret of the production of multi-talented and versatile individuals is the emphasis placed on extra-curricular activity and the encouragement to apply knowledge in real life through various opportunities, shaping individuals to be multi-tasking and realistic, while operating under challenging real-life situations.',
                style: TextStyle(fontStyle: FontStyle.normal, fontSize: 16.0),
                textAlign: TextAlign.center,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 25.0, left: 10.0),
              child: Text(
                'Achievements',
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w700),
                textAlign: TextAlign.center,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: 10.0, right: 10.0, top: 10.0, bottom: 10.0),
              child: Text(
                '•	Successfully organized Let Me Hack V1.0 – 2018.\n•	Runners – up in Cloud Hack 2017 (Cloud – Based Hackathon) organized by the IEEE student branch of University of Colombo school of computing.\n•	Runners – up in SHE CODERess_V1.0.\n•	Runners – up in IFS Code Combat Hackathon organized by IFS (Pvt) Ltd.',
                style: TextStyle(fontStyle: FontStyle.normal, fontSize: 16.0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
