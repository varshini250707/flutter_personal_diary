import 'package:flutter/material.dart';
import 'package:flutter_personal_diary/Screens/AnalyseSurrounding.dart';
import 'package:flutter_personal_diary/Screens/BatteryScreen.dart';
import 'package:flutter_personal_diary/Screens/MessageScreen.dart';
import 'package:flutter_personal_diary/Screens/PeopleScreen.dart';
import 'package:flutter_personal_diary/screens/SettingScreen.dart';

import 'ContactScreen.dart';

class HomeScreen extends StatefulWidget {
  final String title;

  const HomeScreen({super.key, required this.title});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<Map<String, dynamic>> items = [
    {'title': 'Contacts', 'icon': Icons.contacts, 'screen': ContactScreen(title: 'Contacts')},
    {'title': 'Messages', 'icon': Icons.message, 'screen': MessageScreen(title: 'Messages')},
    {'title': 'People', 'icon': Icons.people, 'screen': Peoplescreen(title: 'People')},
    {'title': 'Battery', 'icon': Icons.battery_full, 'screen': BatteryScreen(title: 'Battery')},
    {'title': 'Analyze Surrounding', 'icon': Icons.analytics, 'screen': AnalyseSurrounding(title: 'Analyze Surrounding')},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Colors.amber,
        actions: <Widget>[
          IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SettingScreen(title: 'Settings'),
                  ),
                );
              },
              icon: Icon(Icons.settings))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10.0,
            mainAxisSpacing: 10.0,
          ),
          itemCount: items.length,
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => items[index]['screen'],
                  ),
                );
              },
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.blueAccent,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Card(
                  color: Colors.transparent,
                  elevation: 0,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(items[index]['icon'], size: 40, color: Colors.white),
                      SizedBox(height: 10),
                      Text(
                        items[index]['title'],
                        style: const TextStyle(color: Colors.white, fontSize: 18),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
