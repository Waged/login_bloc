import 'package:flutter/material.dart';
import 'screens/login_screen.dart';
import 'blocs/provider.dart';

class App extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Provider(child :
        MaterialApp(
          title: 'Logger',
          home: Scaffold(
            body: LoginScreen(),
          ),
    ));


    return MaterialApp(
      title: 'Logger',
      home: Scaffold(
        body: LoginScreen(),
      ),
    );
  }

}