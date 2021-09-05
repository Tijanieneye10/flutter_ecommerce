import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);
  @override

  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[300],
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 30.0),
                child: Image.asset(
                  "assets/images/cart2.png",
                  width: 250.0,
                  height: 250.0,
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 30.0),
                decoration: BoxDecoration(
                  color: Color(0xFF5896D9)
                ),
                child: Text(
                  'BrainyMarket',
                  style: TextStyle(
                    fontSize: 25.0,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 20.0),
              CircularProgressIndicator(
                  color: Color(0xFF5896D9)
              )
            ],
          ),
        ),
      ),
    );
  }
}

