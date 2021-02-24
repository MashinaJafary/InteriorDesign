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
  //int selectedIndex = 0;
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
      body: ListView(
        children: [
          SizedBox(
            height: 10.0,
          ),
          Text(
            "Popular Designs",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            width: double.infinity,
            height: 240,
            decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage("assets/bed1.jpg"))),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Column(
                children: [
                  Container(
                    width: 180,
                    height: 200,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                            image: AssetImage("assets/bath1.jpg"),
                            fit: BoxFit.cover)),
                  ),
                  Container(
                    width: 180,
                    height: 200,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                            image: AssetImage("assets/bath2.jpg"),
                            fit: BoxFit.cover)),
                  ),
                ],
              ),
              Column(
                children: [
                  Container(
                    width: 180,
                    height: 200,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                            image: AssetImage("assets/bed2.jpg"),
                            fit: BoxFit.cover)),
                  ),
                  Container(
                    width: 180,
                    height: 200,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                            image: AssetImage("assets/bed3.jpg"),
                            fit: BoxFit.cover)),
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
            label: 'About Us',
          )
        ],
        currentIndex: selectedPage,
        selectedItemColor: Colors.amber[800],
        onTap: onItemTapped,
      ),
    );
  }
}

class AboutUsPage extends StatefulWidget {
  @override
  _AboutUsPageState createState() => _AboutUsPageState();
}

class _AboutUsPageState extends State<AboutUsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About Us'),
      ),
    );
  }
}
