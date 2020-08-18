import 'package:flutter/material.dart';
import 'package:kochchiye_ko/Testhome.dart';
import 'package:kochchiye_ko/User/Testhome2.dart';
import 'package:kochchiye_ko/User/User.dart';
import 'package:kochchiye_ko/User/Usertesthome.dart';
import 'package:kochchiye_ko/User/Usertrainschdule.dart';

class Userhome extends StatefulWidget {
  Userhome({Key key}) : super(key: key);

  @override
  _UserhomeState createState() => _UserhomeState();
}

class _UserhomeState extends State<Userhome> {
  // final AuthService _auth = AuthService();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("User Home"),
        actions: <Widget>[
          FlatButton.icon(
            icon: Icon(Icons.person),
            label: new Text("Logout"),
            onPressed: () async {
              //    await _auth.signOut();
            },
          ),
        ],
      ),
      body: Column(
        children: <Widget>[
          Center(
            child: Column(children: <Widget>[
              SizedBox(
                height: 10.0,
              ),
              RaisedButton(
                child: Text("User Home"),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Testhome2()),
                  );
                },
              ),
              // RaisedButton(
              //   child: Text("UserMap"),
              //   onPressed: () {
              //     Navigator.push(
              //       context,
              //       MaterialPageRoute(builder: (context) => Usertrainmap()),
              //     );
              //   },
              // ),
              SizedBox(
                height: 10.0,
              ),
              RaisedButton(
                child: Text("Indvidual Train details"),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Usertraindetail()),
                  );
                },
              ),
              // SizedBox(
              //   height: 10.0,
              // ),
              // RaisedButton(
              //   child: Text("Train Schudules"),
              //   onPressed: () {
              //     Navigator.push(
              //       context,
              //       MaterialPageRoute(builder: (context) => Searchtrain()),
              //     );
              //   },
              // ),

              // SizedBox(
              //   height: 10.0,
              // ),
              // RaisedButton(
              //   child: Text("See home"),
              //   onPressed: () {
              //     Navigator.push(
              //       context,
              //       MaterialPageRoute(builder: (context) => Usertesthome()),
              //     );
              //   },
              // ),

              SizedBox(
                height: 10.0,
              ),
              RaisedButton(
                child: Text("User Profile"),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => UserProfile()),
                  );
                },
              ),
            ]),
          )
        ],
      ),
    );
  }
}
