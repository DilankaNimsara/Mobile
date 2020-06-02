import 'package:flutter/material.dart';
import 'package:kochchiye_ko/User/User.dart';
import 'package:kochchiye_ko/User/Usertrainschdule.dart';

class Userhome extends StatefulWidget {
  Userhome({Key key}) : super(key: key);

  @override
  _UserhomeState createState() => _UserhomeState();
}

class _UserhomeState extends State<Userhome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
         appBar: AppBar(
        title: Text("User Home"),
      ),
      body: Column(
        children: <Widget>[
          Center(
            child: Column(children: <Widget>[
              RaisedButton(
                child: Text("Go to UserMap"),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Usertrainmap()),
                  );
                },
              ),
              SizedBox(
                height: 10.0,
              ),
                RaisedButton(
                child: Text("Go to Indviudla Train Details"),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) =>Usertraindetail()),
                  );
                },
              ),
              SizedBox(
                height: 10.0,
              ),
                RaisedButton(
                child: Text("Search Train Schudules"),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) =>Searchtrain()),
                  );
                },
              ),
            SizedBox(
                height: 10.0,
              ),
                RaisedButton(
                child: Text("See running trains"),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) =>Usertrainschdule()),
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