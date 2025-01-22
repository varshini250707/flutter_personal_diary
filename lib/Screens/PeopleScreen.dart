import 'package:flutter/material.dart';

class Peoplescreen extends StatefulWidget {

  final String title;

  const Peoplescreen({super.key, required this.title});

  @override
  State<Peoplescreen> createState() => _PeoplescreenState();
}

class _PeoplescreenState extends State<Peoplescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Colors.deepPurpleAccent
      ),
      body: Center(
        child: Text(
          widget.title
        ),
      ),
    );
  }
}
