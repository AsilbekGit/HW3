import 'package:flutter/material.dart';

import 'Screen1.dart';
import 'Screen2.dart';
import 'Screen3.dart';
import 'Screen4.dart';
import 'Screen5.dart';


class Screens extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Provider Example',
      initialRoute: '/',
      routes: {
        '/': (context) => Screen1(),
        '/screen2': (context) => Screen2(),
        '/screen3': (context) => Screen3(),
        '/screen4': (context) => Screen4(),
        '/screen5': (context) => Screen5(),
      },
    );
  }
}

class MyData with ChangeNotifier {
  String message = '';

  void setMessage(String newMessage) {
    message = newMessage;
    notifyListeners();
  }
}



