import 'package:flutter/material.dart';
import 'package:market/config/app_router.dart';
import 'package:market/config/theme.dart';
import 'package:market/screens/screen.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
      onGenerateRoute: AppRouter.onGenerateRoute,
      initialRoute: HomeScreen.routeName,
      theme: theme(),
      home: MainScreen()));
}

class MainScreen extends StatefulWidget {
  MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: HomeScreen()),
    );
  }
}
