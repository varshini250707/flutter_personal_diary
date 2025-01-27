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
  final List<String> items = [
    'Contacts',
    'Messages',
    'People',
    'Battery',
    'Analyze Surrounding'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Colors.amber,
        actions: <Widget>[
          IconButton(
              onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SettingScreen(title: 'Settings'),
                  ),
                );
              },
              icon: Icon(Icons.settings)
          )
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

                print(items[index]);
                if (items[index] == 'Contacts') {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ContactScreen(title: 'Contacts'),
                    ),
                  );
                } else if (items[index] == 'Messages') {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const MessageScreen(title: 'Message'),
                    ),
                  );
                }
                else if (items[index] == 'People') {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Peoplescreen(title: 'People'),
                    ),
                  );
                }
                else if (items[index] == 'Battery') {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Batteryscreen(title: 'Battery'),
                    ),
                  );
                }
                else if (items[index] == 'Analyze Surrounding') {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const AnalyseSurrounding(title: 'Analyse Surrounding'),
                    ),
                  );
                }


              },
              child: Card(
                color: Colors.blueAccent,
                child: Center(
                  child: Text(
                    items[index],
                    style: const TextStyle(color: Colors.white, fontSize: 18),
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
