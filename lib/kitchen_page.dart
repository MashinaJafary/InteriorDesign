import 'package:flutter/material.dart';
import 'package:InteriorDesign/main.dart';
import 'package:InteriorDesign/bed_room_page.dart';
import 'package:InteriorDesign/detail_page.dart';
import 'package:InteriorDesign/wash_room_page.dart';
import 'package:InteriorDesign/sitting_room_page.dart';

class KitchenPage extends StatefulWidget {
  @override
  _KitchenPageState createState() => _KitchenPageState();
}

class _KitchenPageState extends State<KitchenPage> {
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
      body: ListView(
        children: [
          SizedBox(
            height: 10.0,
          ),
          Text(
            "Kitchen Designs",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 30,
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (_) => DetailPage()));
            },
            child: Container(
              width: double.infinity,
              height: 240,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/kitchen1.jpg"))),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              InkWell(
                onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (_) => DetailPage()));
                },
                child: Column(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (_) => DetailPage()));
                      },
                      child: Container(
                        width: 180,
                        height: 200,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                                image: AssetImage("assets/kitchen2.jpg"),
                                fit: BoxFit.cover)),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (_) => DetailPage()));
                      },
                      child: Container(
                        width: 180,
                        height: 200,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                                image: AssetImage("assets/kitchen1.jpg"),
                                fit: BoxFit.cover)),
                      ),
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (_) => DetailPage()));
                    },
                    child: Container(
                      width: 180,
                      height: 200,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                              image: AssetImage("assets/kitchen3.jpg"),
                              fit: BoxFit.cover)),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (_) => DetailPage()));
                    },
                    child: Container(
                      width: 180,
                      height: 200,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                              image: AssetImage("assets/kitchen4.jpg"),
                              fit: BoxFit.cover)),
                    ),
                  ),
                ],
              )
            ],
          )
        ],
      ),
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
