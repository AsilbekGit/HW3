import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'Screens.dart';

class Screen1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Screen 1'),
        backgroundColor: Colors.deepPurple,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.favorite),
            onPressed: () async {
              Object? result = await Navigator.pushNamed(context, '/screen2');
              Provider.of<MyData>(context, listen: false).setMessage(result as String);
            },
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.network('https://assets.hongkiat.com/uploads/nature-photography/autumn-poolside.jpg'),
            SizedBox(height: 20),
            Text(
              '25 Breathtaking Examples Of Nature Photography.',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            Text(
              'There are so many places and scenes on earth that we must see at least for once. And when we do see a beautiful scene, we want to save it in your mind forever. Well, you can save it, though not in the mind but on your desktop wallpaper.',
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 20),
            ElevatedButton.icon(
              onPressed: () async {
                Object? result = await Navigator.pushNamed(context, '/screen2');
                Provider.of<MyData>(context, listen: false).setMessage(Navigator.pushNamed(context, '/screen2') as String);
              },
              icon: Icon(Icons.arrow_forward), // Add an icon to the Button
              label: Text('Explore more'),
              style: ElevatedButton.styleFrom(
                primary: Colors.deepPurple,
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
