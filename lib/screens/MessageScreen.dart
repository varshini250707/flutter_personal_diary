import 'package:flutter/material.dart';

class MessageScreen extends StatefulWidget {


  final String title;

  const MessageScreen({super.key, required this.title});

  @override
  State<MessageScreen> createState() => _MessageScreenState();
}

class _MessageScreenState extends State<MessageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Colors.blueAccent,
      ),
      body: Center(
        child: Text(
          widget.title
        ),
      ),
    );
  }
}
