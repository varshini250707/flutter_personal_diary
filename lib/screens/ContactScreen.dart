import 'package:flutter/material.dart';

class ContactScreen extends StatefulWidget {

  final String title;

  const ContactScreen({super.key, required this.title});

  @override
  State<ContactScreen> createState() => _ContactScreenState();
}

class _ContactScreenState extends State<ContactScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Colors.limeAccent,
      ),
      body: Center(
        child: Text(
          widget.title
        ),
      ) ,
    );
  }
}
