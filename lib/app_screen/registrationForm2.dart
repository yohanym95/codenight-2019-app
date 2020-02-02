import 'package:codenight_app/multilineDropDownfield.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';

class RegitrationHack extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return RegistrationHackState();
  }
}

class RegistrationHackState extends State<RegitrationHack> {
  final DatabaseReference database = FirebaseDatabase.instance
      .reference()
      .child("CodeNight")
      .child("Idea_Hackthon");
  var _formKey = GlobalKey<FormState>();
  TextEditingController teamName,
      teamLeaderName,
      teamLeaderEmail,
      teamLeaderContactNo,
      member1Name,
      member2Name,
      member3Name,
      member4name,
      projectDescription;

  String name = "";
  bool _isLoading = false;
  var _currencies = [
    'Better transportation infrastructure within university premises',
    'Reduce tragic deaths caused around belihuloya due to changing weather condition',
    'Smart way to eat healthy food at university',
    'Effective strategic for enhance waste management at university',
    'Real-time AR navigation system for belihuloya',
    'Automating the manual workflow process of non-academic staff within the university'
  ];
  var currencyValue =
      'Better transportation infrastructure within university premises';
  bool value = false;

  sendData() {
    database.once().then((DataSnapshot snapshot) {
      Map<dynamic, dynamic> values = snapshot.value;
      var lst = new List();
      values.forEach((key, values) {
        print(values["TeamLeaderEmail"]);
        lst.add(values["TeamLeaderEmail"]);
        print(lst);
      });

      if (lst.contains(teamLeaderEmail.text)) {
        setState(() {
          teamName.clear();
          teamLeaderName.clear();
          teamLeaderEmail.clear();
          teamLeaderContactNo.clear();
          member1Name.clear();
          member2Name.clear();
          member3Name.clear();
          member4name.clear();
          projectDescription.clear();
          _isLoading = false;
          _alreadyExits();
        });
      } else {
        database.push().set({
          'TeamName': teamName.text,
          'TeamLeaderName': teamLeaderName.text,
          'TeamLeaderEmail': teamLeaderEmail.text,
          'TeamLeaderContactNo': teamLeaderContactNo.text,
          'TeamMember1': member1Name.text,
          'TeamMember2': member2Name.text,
          'TeamMember3': member3Name.text,
          'TeamMember4': member4name.text,
          'TeamIdea': currencyValue,
          'TeamProjectDescription': projectDescription.text
        }).then((onValue) {
          setState(() {
            teamName.clear();
            teamLeaderName.clear();
            teamLeaderEmail.clear();
            teamLeaderContactNo.clear();
            member1Name.clear();
            member2Name.clear();
            member3Name.clear();
            member4name.clear();
            projectDescription.clear();
            _isLoading = false;
            _complete();
          });
        }).catchError((onError) {
          setState(() {
            teamName.clear();
            teamLeaderName.clear();
            teamLeaderEmail.clear();
            teamLeaderContactNo.clear();
            member1Name.clear();
            member2Name.clear();
            member3Name.clear();
            member4name.clear();
            projectDescription.clear();
            _isLoading = false;
            _undone();
          });
        });
      }
      // values.forEach((key, values) {
      //   // print(values["TeamLeaderEmail"]);
      //   if (values["TeamLeaderEmail"].toString().toLowerCase() == teamLeaderEmail.text.toLowerCase()) {
      //     //print('Already exits this email');

      //   } else {

      //   }
      // });

      // print(values);
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    teamName = TextEditingController();
    teamLeaderName = TextEditingController();
    teamLeaderEmail = TextEditingController();
    teamLeaderContactNo = TextEditingController();
    member1Name = TextEditingController();
    member2Name = TextEditingController();
    member3Name = TextEditingController();
    member4name = TextEditingController();
    projectDescription = TextEditingController();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    teamName.dispose();
    teamLeaderName.dispose();
    teamLeaderEmail.dispose();
    teamLeaderContactNo.dispose();
    member1Name.dispose();
    member2Name.dispose();
    member3Name.dispose();
    member4name.dispose();
  }

  @override
  Widget build(BuildContext context) {
    TextStyle textStyle = Theme.of(context).textTheme.title;
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text('Registration'),
      ),
      body: ModalProgressHUD(
        inAsyncCall: _isLoading,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(5.0),
            child: SingleChildScrollView(
              child: Form(
                key: _formKey,
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(
                          top: 8.0, bottom: 10.0, left: 5.0, right: 5.0),
                      child: Center(
                          child: Text(
                        'Idea Hackthon Registration Form',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      )),
                    ),
                    Container(
                      child: Padding(
                          padding: EdgeInsets.only(
                              top: 5.0, bottom: 5.0, left: 5, right: 5),
                          child: TextFormField(
                            controller: teamName,
                            style: textStyle,
                            validator: (String value) {
                              if (value.isEmpty) {
                                return 'Enter Team Name';
                              }
                              return null;
                            },
                            decoration: InputDecoration(
                                labelText: 'Team Name',
                                labelStyle: TextStyle(
                                    fontSize: 18.0, color: Colors.black),
                                prefixIcon: Icon(Icons.group_work),
                                errorStyle: TextStyle(
                                    color: Colors.redAccent, fontSize: 15.0),
                                hintText: "Team Name",
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(5.0))),
                          )),
                    ),
                    Container(
                      child: Padding(
                          padding: EdgeInsets.only(
                              top: 5.0, bottom: 5.0, left: 5, right: 5),
                          child: TextFormField(
                            controller: teamLeaderName,
                            style: textStyle,
                            validator: (String value) {
                              if (value.isEmpty) {
                                return 'Enter Team Leader Name';
                              }
                              return null;
                            },
                            decoration: InputDecoration(
                                labelText: 'Team Leader Name',
                                labelStyle: TextStyle(
                                    fontSize: 18.0, color: Colors.black),
                                prefixIcon: Icon(Icons.person),
                                errorStyle: TextStyle(
                                    color: Colors.redAccent, fontSize: 15.0),
                                hintText: "Team Leader Name",
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(5.0))),
                          )),
                    ),
                    Container(
                      child: Padding(
                          padding: EdgeInsets.only(
                              top: 5.0, bottom: 5.0, left: 5, right: 5),
                          child: TextFormField(
                            controller: teamLeaderEmail,
                            style: textStyle,
                            validator: validateEmail1,
                            decoration: InputDecoration(
                                labelText: 'Team Leader Email',
                                labelStyle: TextStyle(
                                    fontSize: 18.0, color: Colors.black),
                                prefixIcon: Icon(Icons.email),
                                errorStyle: TextStyle(
                                    color: Colors.redAccent, fontSize: 15.0),
                                hintText: "Team Leader Email",
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(5.0))),
                          )),
                    ),
                    Container(
                      child: Padding(
                          padding: EdgeInsets.only(
                              top: 5.0, bottom: 5.0, left: 5, right: 5),
                          child: TextFormField(
                            controller: teamLeaderContactNo,
                            style: textStyle,
                            validator: validateMobile,
                            decoration: InputDecoration(
                                labelText: 'Team Leader Contact No',
                                labelStyle: TextStyle(
                                    fontSize: 18.0, color: Colors.black),
                                prefixIcon: Icon(Icons.contact_phone),
                                errorStyle: TextStyle(
                                    color: Colors.redAccent, fontSize: 15.0),
                                hintText: "Team Leader Contact No",
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(5.0))),
                          )),
                    ),

                    Container(
                      child: Padding(
                          padding: EdgeInsets.only(
                              top: 5.0, bottom: 5.0, left: 5, right: 5),
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
                                labelStyle: TextStyle(
                                    fontSize: 18.0, color: Colors.black),
                                prefixIcon: Icon(Icons.person),
                                errorStyle: TextStyle(
                                    color: Colors.redAccent, fontSize: 15.0),
                                hintText: "1st Member Name",
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(5.0))),
                          )),
                    ),

                    Container(
                      child: Padding(
                          padding: EdgeInsets.only(
                              top: 5.0, bottom: 5.0, left: 5, right: 5),
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
                                labelStyle: TextStyle(
                                    fontSize: 18.0, color: Colors.black),
                                prefixIcon: Icon(Icons.person),
                                errorStyle: TextStyle(
                                    color: Colors.redAccent, fontSize: 15.0),
                                hintText: "2nd Member Name",
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(5.0))),
                          )),
                    ),

                    Container(
                      child: Padding(
                          padding: EdgeInsets.only(
                              top: 5.0, bottom: 5.0, left: 5, right: 5),
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
                                labelStyle: TextStyle(
                                    fontSize: 18.0, color: Colors.black),
                                prefixIcon: Icon(Icons.person),
                                errorStyle: TextStyle(
                                    color: Colors.redAccent, fontSize: 15.0),
                                hintText: "3rd Member Name",
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(5.0))),
                          )),
                    ),

                    Container(
                      child: Padding(
                          padding: EdgeInsets.only(
                              top: 5.0, bottom: 5.0, left: 5, right: 5),
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
                                labelStyle: TextStyle(
                                    fontSize: 18.0, color: Colors.black),
                                prefixIcon: Icon(Icons.person),
                                errorStyle: TextStyle(
                                    color: Colors.redAccent, fontSize: 15.0),
                                hintText: "4th Member Name",
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(5.0))),
                          )),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(
                          left: 5, right: 5, top: 8, bottom: 5),
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            flex: 1,
                            child: Text(
                              'Project',
                              style: TextStyle(
                                  fontSize: 15.0,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Expanded(
                            flex: 5,
                            child: Card(
                              child: Container(
                                child: MultilineDropdownButtonFormField<String>(
                                  isDense: false,
                                  isExpanded: true,
                                  items: _currencies
                                      .map((String dropDownStringItem) {
                                    return DropdownMenuItem<String>(
                                      value: dropDownStringItem,
                                      child: Text(
                                        dropDownStringItem,
                                        overflow: TextOverflow.visible,
                                      ),
                                    );
                                  }).toList(),
                                  onChanged: (String dropdownitem) {
                                    onClickedItem(dropdownitem);
                                    print(dropdownitem);
                                    setState(() {
                                      
                                    });
                                  },
                                  value: currencyValue,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(
                          left: 8, right: 8, top: 5, bottom: 5),
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            flex: 1,
                            child: Text(
                              'Description',
                              style: TextStyle(
                                  fontSize: 15.0,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            child: Expanded(
                                flex: 3,
                                child: TextFormField(
                                  controller: projectDescription,
                                  validator: (String value) {
                                    if (value.isEmpty) {
                                      return 'Enter Team Project Description';
                                    }
                                    return null;
                                  },
                                  maxLines: 8,
                                  decoration: InputDecoration(
                                      errorStyle: TextStyle(
                                          color: Colors.redAccent,
                                          fontSize: 15.0),
                                      border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(5.0))),
                                )),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          top: 5.0, bottom: 8.0, left: 10, right: 10),
                      child: MaterialButton(
                        child: Container(
                          width: double.infinity,
                          child: Text(
                            'Submit',
                            style: TextStyle(color: Colors.white, fontSize: 16),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        color: Colors.red,
                        onPressed: () {
                          submit();
                        },
                      ),
                    ) // Text('Team Member'),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  void onClickedItem(String dropdownitem) {
    setState(() {
      this.currencyValue = dropdownitem;
    });
  }

  void submit() {
    if (_formKey.currentState.validate()) {
      setState(() {
        _isLoading = true;
      });
      sendData();
    }
  }

  //email validation
  String validateEmail1(String value) {
    Pattern pattern =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regex = new RegExp(pattern);
    if (!regex.hasMatch(value)) {
      return 'Enter Valid Email';
    }
    return null;
  }

  //validate mobile number
  String validateMobile(String value) {
    if (value.length != 10) {
      return 'Mobile Number must be of 10 digit';
    } else if (value.isEmpty) {
      return "Enter Your Phone Number";
    }
    return null;
  }

  String validateNAME(String value) {
    if (value.isEmpty) {
      return "Enter Your Team Name";
    }
    return null;
  }

//dialog after success
  Future _complete() async {
    switch (await showDialog(
        context: context,
        child: new SimpleDialog(
          contentPadding:
              EdgeInsets.only(right: 10, left: 10, top: 5, bottom: 5),
          title: Center(
              child: new Text("Registration",
                  style: TextStyle(fontWeight: FontWeight.bold))),
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                  child: Text(
                'Successfully Registered into Hackthon',
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold),
              )),
            ),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                  child: Icon(
                Icons.done_outline,
                color: Colors.green,
              )),
            ),
            SizedBox(
              height: 5,
            ),
            // Padding(
            //   padding: const EdgeInsets.all(8.0),
            //   child: Center(
            //       child: Text('Please wait to confirmation mail',
            //           style: TextStyle(fontWeight: FontWeight.bold))),
            // ),
          ],
        ))) {
    }
  }

  Future _undone() async {
    switch (await showDialog(
        context: context,
        child: new SimpleDialog(
          contentPadding:
              EdgeInsets.only(right: 10, left: 10, top: 5, bottom: 5),
          title: Center(
              child: new Text("Registration",
                  style: TextStyle(fontWeight: FontWeight.bold))),
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                  child: Text('Please Try Again',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontWeight: FontWeight.bold))),
            ),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(
                Icons.error,
                color: Colors.red,
              ),
            ),
            // SizedBox(height: 5,),
            // Padding(
            //   padding: const EdgeInsets.all(8.0),
            //   child: Text('Please wait to confirmation mail'),
            // ),
          ],
        ))) {
    }
  }

  Future _alreadyExits() async {
    switch (await showDialog(
        context: context,
        child: new SimpleDialog(
          contentPadding:
              EdgeInsets.only(right: 10, left: 10, top: 5, bottom: 5),
          title: Center(
              child: new Text("Registration",
                  style: TextStyle(fontWeight: FontWeight.bold))),
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                  child: Text(
                'Email Already Exist',
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold),
              )),
            ),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                  child: Icon(
                Icons.error,
                color: Colors.red,
              )),
            ),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                  child: Text('Please Try Again',
                      style: TextStyle(fontWeight: FontWeight.bold))),
            ),
          ],
        ))) {
    }
  }
}
