import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'Screens.dart';

class Screen5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => MyData()),
        // Add other providers here
      ],
      child: Scaffold(
        appBar: AppBar(
          title: Text('Screen 5'),
          backgroundColor: Colors.green, // Changed theme color to green
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.home), // Home icon
              onPressed: () {
                Navigator.popUntil(context, (route) => false); // Go back to the first screen
              },
            ),
          ],
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.network('https://assets.hongkiat.com/uploads/nature-photography/ss-mossbrae-falls.jpg'), // Added an image
              SizedBox(height: 20), // Added a SizedBox for spacing
              Text('Screen 5 Content'),
              Consumer<MyData>(
                builder: (context, myData, child) {
                  return Text('Message from Screen 1: ${myData.message}');
                },
              ),
              SizedBox(height: 20), // Added a SizedBox for spacing
              ElevatedButton.icon(
                onPressed: () {
                  Navigator.popUntil(context, ModalRoute.withName('/'));
                },
                icon: Icon(Icons.home), // Added an icon to the Button
                label: Text('Go Back to Screen 1'),
                style: ElevatedButton.styleFrom(
                  primary: Colors.green, // Changed button color to green
                  onPrimary: Colors.white,
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                  textStyle: TextStyle(fontSize: 20),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
