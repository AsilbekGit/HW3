import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'Screens.dart';

class Screen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Screen 2'),
        backgroundColor: Colors.purple, // Changed theme color to blue
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.home), // Changed icon to arrow_back
            onPressed: () {
              Navigator.pop(context); // Go back to previous screen
            },
          ),
          IconButton(
            icon: Icon(Icons.arrow_forward), // Changed icon to arrow_forward
            onPressed: () async {
              Object? result = await Navigator.pushNamed(context, '/screen3');
              Provider.of<MyData>(context, listen: false).setMessage(result as String);
            },
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.network('https://assets.hongkiat.com/uploads/nature-photography/Azalea.jpg'),
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
                Object? result = await Navigator.pushNamed(context, '/screen3');
                Provider.of<MyData>(context, listen: false).setMessage(Navigator.pushNamed(context, '/screen3') as String);
              },
              icon: Icon(Icons.arrow_forward), // Add an icon to the Button
              label: Text('Move to the next page '),
              style: ElevatedButton.styleFrom(
                primary: Colors.purple, // Changed button color to blue
                onPrimary: Colors.white,
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                textStyle: TextStyle(fontSize: 20),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
