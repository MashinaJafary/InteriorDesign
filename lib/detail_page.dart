import 'package:InteriorDesign/bed_room_page.dart';
import 'package:InteriorDesign/wash_room_page.dart';
import 'package:InteriorDesign/main.dart';
import 'package:InteriorDesign/sitting_room_page.dart';
import 'package:InteriorDesign/kitchen_page.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  int selectedPage = 0;

  void onItemTapped(int index) {
    setState(() {
      selectedPage = index;
    });
  }

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
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => HomePage()));
              },
              leading: Icon(Icons.home_rounded),
              title: Text("Home"),
            ),
            ListTile(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => KitchenPage()));
              },
              leading: Icon(Icons.kitchen),
              title: Text("Kitchen Design"),
            ),
            ListTile(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => BedRoomPage()));
              },
              leading: Icon(Icons.king_bed),
              title: Text("Bedroom Design"),
            ),
            ListTile(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => WashRoomPage()));
              },
              leading: Icon(Icons.wash_rounded),
              title: Text("Washroom Design"),
            ),
            ListTile(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => SittingRoomPage()));
              },
              leading: Icon(Icons.charging_station_rounded),
              title: Text("Sitting Room Design"),
            )
          ],
        ),
      ),
      body: ListView(children: [
        SizedBox(
          height: 10.0,
        ),
        Text(
          "Designs Details",
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 30,
        ),
        //child: Text("Details"),
        Container(
          width: double.infinity,
          height: 240,
          decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage("assets/bed4.jpg"))),
        ),

        Text("6*6 bed 2 Pilors with two sits sofa",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            )),
        SizedBox(
          height: 100,
        ),
        RaisedButton(
          onPressed: () {},
          child: Text('Call Designer', style: TextStyle(fontSize: 20)),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
            side: BorderSide(color: Colors.amber[800]),
          ),
        )
      ]),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_box),
            label: 'Top Designers',
          )
        ],
        currentIndex: selectedPage,
        selectedItemColor: Colors.amber[800],
        onTap: onItemTapped,
      ),
    );
  }
}
