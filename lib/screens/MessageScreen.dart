import 'package:flutter/material.dart';

class MessageScreen extends StatefulWidget {
  final String title;

  const MessageScreen({super.key, required this.title});

  @override
  State<MessageScreen> createState() => _MessageScreenState();
}

class _MessageScreenState extends State<MessageScreen> {
  final List<Map<String, String>> messages = [
    {'phone': '123-456-7890', 'message': 'Hello! How are you?'},
    {'phone': '987-654-3210', 'message': 'Meeting at 3 PM today.'},
    {'phone': '555-666-7777', 'message': 'Don’t forget the groceries!'},
    {'phone': '444-333-2222', 'message': 'Happy Birthday!'},
    {'phone': '111-222-3333', 'message': 'Call me when you are free.'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Colors.blueAccent,
      ),
      body: ListView.builder(
        itemCount: messages.length,
        itemBuilder: (context, index) {
          return Card(
            margin: EdgeInsets.all(10),
            child: ListTile(
              leading: Icon(Icons.phone, color: Colors.blueAccent),
              title: Text(messages[index]['phone']!),
              subtitle: Text(messages[index]['message']!),
            ),
          );
        },
      ),
    );
  }
}
