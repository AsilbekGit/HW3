import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'Screens.dart';

class Screen3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Screen 3'),
        backgroundColor: Colors.teal,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.arrow_forward),
            onPressed: () async {
              Object? result = await Navigator.pushNamed(context, '/screen4');
              Provider.of<MyData>(context, listen: false).setMessage(result as String);
            },
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network('https://assets.hongkiat.com/uploads/nature-photography/The-best-nature-photography-collection.jpg'),
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
                Object? result = await Navigator.pushNamed(context, '/screen4');
                Provider.of<MyData>(context, listen: false).setMessage(Navigator.pushNamed(context, '/screen4') as String);
              },
              icon: Icon(Icons.arrow_forward),
              label: Text('Go to Screen 4'),
              style: ElevatedButton.styleFrom(
                primary: Colors.teal,
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
