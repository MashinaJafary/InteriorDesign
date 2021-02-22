import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  ));
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Interior Design App"),
        centerTitle: true,
        backgroundColor: Colors.amber[800],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              child: Text(
                'Categories',
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              decoration: BoxDecoration(color: Colors.amber[800]),
            ),
            ListTile(
              onTap: () {},
              leading: Icon(Icons.kitchen),
              title: Text("Kitchen Design"),
            ),
            ListTile(
              onTap: () {},
              leading: Icon(Icons.king_bed),
              title: Text("Bedroom Design"),
            ),
            ListTile(
              onTap: () {},
              leading: Icon(Icons.wash_rounded),
              title: Text("Washroom Design"),
            ),
            ListTile(
              onTap: () {},
              leading: Icon(Icons.charging_station_rounded),
              title: Text("Sitting Room Design"),
            )
          ],
        ),
      ),
    );
  }
}
