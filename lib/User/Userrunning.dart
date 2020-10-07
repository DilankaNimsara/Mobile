import 'package:flutter/material.dart';
import 'package:line_awesome_icons/line_awesome_icons.dart';

class Userrunning extends StatefulWidget {
  @override
  _UserrunningState createState() => _UserrunningState();
}

List<String> path = [
  "assets/User/train1.png",
  "assets/User/train3.png",
  "assets/User/train5.png",
  "assets/User/train6.png",
];

class _UserrunningState extends State<Userrunning> {
  int selected = 0;
  List categories = ["All", "Inetercity Express", "Special", "Slow", "Office"];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.amber,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          "Trains on Track",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        centerTitle: false,
      ),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.all(20),
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20 / 4),
              decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.4),
                  borderRadius: BorderRadius.circular(20)),
              child: TextField(
                style: TextStyle(color: Colors.black),
                decoration: InputDecoration(
                    hintText: "Search",
                    hintStyle: TextStyle(color: Colors.white),
                    enabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 20 / 2),
              height: 30,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: categories.length,
                  itemBuilder: (context, index) => GestureDetector(
                        onTap: () {
                          setState(() {
                            selected = index;
                          });
                        },
                        child: Container(
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: index == selected
                                  ? Colors.white.withOpacity(0.4)
                                  : Colors.transparent,
                              borderRadius: BorderRadius.circular(12)),
                          margin: EdgeInsets.only(
                              left: 20,
                              right: index == categories.length - 1 ? 20 : 0),
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          child: Text(
                            categories[index],
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                      )),
            ),
            SizedBox(
              height: 20 / 2,
            ),
            Expanded(
              child: Stack(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(top: 70),
                    decoration: BoxDecoration(
                        color: Color(0xFFF1EFF1),
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(40),
                            topRight: Radius.circular(40))),
                  ),
                  ListView.builder(
                    itemCount: 4,
                    itemBuilder: (context, index) => Card(
                      size: size,
                      ind: index,
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class Card extends StatelessWidget {
  const Card({
    Key key,
    this.ind,
    @required this.size,
  }) : super(key: key);

  final Size size;
  final int ind;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20 / 2),
      // color: Colors.blueAccent,
      height: 160,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: <Widget>[
          Container(
            height: 136,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(22),
                color: Colors.blue,
                boxShadow: [
                  BoxShadow(
                      offset: Offset(0, 15),
                      blurRadius: 27,
                      color: Colors.black12),
                ]),
            child: Container(
              margin: EdgeInsets.only(right: 10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(22),
              ),
            ),
          ),
          Positioned(
              top: 0,
              right: 0,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                height: 160,
                width: 200,
                child: Image.asset(
                  path[ind],
                  fit: BoxFit.cover,
                ),
              )),
          Positioned(
            bottom: 0,
            left: 0,
            child: SizedBox(
              height: 136,
              width: size.width - 200,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Text(
                              "Train Name :- ",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "Uttara Devi",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              "Orgin:-  ",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "Colombo Fort(At 5.30) ",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        Text(
                          "Uttara Devi",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 5),
                    decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(22),
                            topRight: Radius.circular(22))),
                    child: Text("See More"),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
