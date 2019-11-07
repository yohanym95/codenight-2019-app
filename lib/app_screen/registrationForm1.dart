import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class RegitrationAlgo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return RegistrationAlgoState();
  }
}

class RegistrationAlgoState extends State<RegitrationAlgo> {
  var _formKey = GlobalKey<FormState>();
  TextEditingController teamName = TextEditingController();
  TextEditingController teamLeaderName = TextEditingController();
  TextEditingController teamLeaderEmail = TextEditingController();
  TextEditingController teamLeaderContactNo = TextEditingController();
  TextEditingController member1Name= TextEditingController();
  TextEditingController member2Name= TextEditingController();
  TextEditingController member3Name= TextEditingController();
  TextEditingController member4name= TextEditingController();
  @override
  Widget build(BuildContext context) {
    TextStyle textStyle = Theme.of(context).textTheme.title;
    // TODO: implement build
    return Scaffold(
      
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text('Registration'),
      ),
      body: Center(
        child: Form(
          key: _formKey,
          child: ListView(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(
                    top: 8.0, bottom: 10.0, left: 5.0, right: 5.0),
                child: Center(
                    child: Text(
                  'Algorithm Hackthon Registration From',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                )),
              ),
              Padding(
                  padding:
                      EdgeInsets.only(top: 5.0, bottom: 5.0, left: 5, right: 5),
                  child: TextFormField(
                    controller: teamName,
                    style: textStyle,
                    validator: (String Value) {
                      if (Value.isEmpty) {
                        return 'Enter Team Name';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                        labelText: 'Team Name',
                        labelStyle:
                            TextStyle(fontSize: 18.0, color: Colors.black),
                        prefixIcon: Icon(Icons.group_work),
                        errorStyle:
                            TextStyle(color: Colors.redAccent, fontSize: 15.0),
                        hintText: "Team Name",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0))),
                  )),
              Padding(
                  padding:
                      EdgeInsets.only(top: 5.0, bottom: 5.0, left: 5, right: 5),
                  child: TextFormField(
                    controller: teamLeaderName,
                    style: textStyle,
                    validator: (String Value) {
                      if (Value.isEmpty) {
                        return 'Enter Team Leader Name';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                        labelText: 'Team Leader Name',
                        labelStyle:
                            TextStyle(fontSize: 18.0, color: Colors.black),
                        prefixIcon: Icon(Icons.person),
                        errorStyle:
                            TextStyle(color: Colors.redAccent, fontSize: 15.0),
                        hintText: "Team Leader Name",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0))),
                  )),
              Padding(
                  padding:
                      EdgeInsets.only(top: 5.0, bottom: 5.0, left: 5, right: 5),
                  child: TextFormField(
                    controller: teamLeaderEmail,
                    style: textStyle,
                    validator: (String value) {
                      if (value.isEmpty) {
                        return 'Enter Team Leader Email';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                        labelText: 'Team Leader Email',
                        labelStyle:
                            TextStyle(fontSize: 18.0, color: Colors.black),
                        prefixIcon: Icon(Icons.email),
                        errorStyle:
                            TextStyle(color: Colors.redAccent, fontSize: 15.0),
                        hintText: "Team Leader Email",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0))),
                  )),
              Padding(
                  padding:
                      EdgeInsets.only(top: 5.0, bottom: 5.0, left: 5, right: 5),
                  child: TextFormField(
                    controller: teamLeaderContactNo,
                    style: textStyle,
                    validator: (String value) {
                      if (value.isEmpty) {
                        return 'Enter Team Leader Contact No';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                        labelText: 'Team Leader Contact No',
                        labelStyle:
                            TextStyle(fontSize: 18.0, color: Colors.black),
                        prefixIcon: Icon(Icons.contact_phone),
                        errorStyle:
                            TextStyle(color: Colors.redAccent, fontSize: 15.0),
                        hintText: "Team Leader Contact No",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0))),
                  )),

              Padding(
                  padding:
                      EdgeInsets.only(top: 5.0, bottom: 5.0, left: 5, right: 5),
                  child: TextFormField(
                    controller: member1Name,
                    style: textStyle,
                    validator: (String Value) {
                      if (Value.isEmpty) {
                        return 'Enter 1st Member Name';
                      }
                      return null;
                    },
                    
                    decoration: InputDecoration(
                        labelText: '1st Member Name',
                        labelStyle:
                            TextStyle(fontSize: 18.0, color: Colors.black),
                        prefixIcon: Icon(Icons.person),
                        errorStyle:
                            TextStyle(color: Colors.redAccent, fontSize: 15.0),
                        hintText: "1st Member Name",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0))),
                  )),

              Padding(
                  padding:
                      EdgeInsets.only(top: 5.0, bottom: 5.0, left: 5, right: 5),
                  child: TextFormField(
                    controller: member2Name,
                    style: textStyle,
                    validator: (String Value) {
                      if (Value.isEmpty) {
                        return 'Enter 2nd Member Name';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                        labelText: '2nd Member Name',
                        labelStyle:
                            TextStyle(fontSize: 18.0, color: Colors.black),
                        prefixIcon: Icon(Icons.person),
                        errorStyle:
                            TextStyle(color: Colors.redAccent, fontSize: 15.0),
                        hintText: "2nd Member Name",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0))),
                  )),

              Padding(
                  padding:
                      EdgeInsets.only(top: 5.0, bottom: 5.0, left: 5, right: 5),
                  child: TextFormField(
                    controller: member3Name,
                    style: textStyle,
                    validator: (String Value) {
                      if (Value.isEmpty) {
                        return 'Enter 3rd Member Name';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                        labelText: '3rd Member Name',
                        labelStyle:
                            TextStyle(fontSize: 18.0, color: Colors.black),
                        prefixIcon: Icon(Icons.person),
                        errorStyle:
                            TextStyle(color: Colors.redAccent, fontSize: 15.0),
                        hintText: "3rd Member Name",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0))),
                  )),

              Padding(
                  padding:
                      EdgeInsets.only(top: 5.0, bottom: 5.0, left: 5, right: 5),
                  child: TextFormField(
                    controller: member4name,
                    style: textStyle,
                    validator: (String Value) {
                      if (Value.isEmpty) {
                        return 'Enter 4th Member Name';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                        labelText: '4th Member Name',
                        labelStyle:
                            TextStyle(fontSize: 18.0, color: Colors.black),
                        prefixIcon: Icon(Icons.person),
                        errorStyle:
                            TextStyle(color: Colors.redAccent, fontSize: 15.0),
                        hintText: "4th Member Name",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0))),
                  )),

              Padding(
                padding:
                    EdgeInsets.only(top: 5.0, bottom: 8.0, left: 10, right: 10),
                child: MaterialButton(
                  child: Text(
                    'Submit',
                    style: TextStyle(color: Colors.white),
                  ),
                  color: Colors.red,
                  onPressed: () {
                    setState(() {
                      if (_formKey.currentState.validate()) {}
                    });
                  },
                ),
              )
              // Text('Team Member'),
            ],
          ),
        ),
      ),
    );
  }
}
