import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Loading extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/background/watermarklogo.png'),
            fit: BoxFit.fitWidth,
          ),
          color: Colors.orange),
      child: SpinKitFadingCircle(
        color: Colors.white,
        size: 50.0,
      ),
    );
  }
}
