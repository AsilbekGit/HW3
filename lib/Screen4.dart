import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'Screens.dart';

class Screen4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Screen 4'),
        backgroundColor: Colors.orange, // Changed theme color to orange
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.arrow_forward),
            onPressed: () async {
              Object? result = await Navigator.pushNamed(context, '/screen5');
              Provider.of<MyData>(context, listen: false).setMessage(result as String);
            },
          ),
        ],
      ),
      body: SingleChildScrollView( // Added SingleChildScrollView for better scrolling experience
        child: Padding( // Added padding for better UI
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.network('https://assets.hongkiat.com/uploads/nature-photography/canyon.jpg'),
              SizedBox(height: 20),
              Text(
                '25 Breathtaking Examples Of Nature Photography.',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              Text(
                'This post highlights some of the most stunning shots of nature photography. These shots vouch for the hard work that the photographers have put into taking them and I know you will appreciate it too. Let’s take a look.',
                style: TextStyle(fontSize: 24),
              ),
              SizedBox(height: 20),
              ElevatedButton.icon(
                onPressed: () async {
                  Object? result = await Navigator.pushNamed(context, '/screen5');
                  Provider.of<MyData>(context, listen: false).setMessage(Navigator.pushNamed(context, '/screen5') as String);
                },
                icon: Icon(Icons.navigate_next), // Changed icon to home
                label: Text('Go to next Screen'),
                style: ElevatedButton.styleFrom(
                  primary: Colors.orange, // Changed button color to orange
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
