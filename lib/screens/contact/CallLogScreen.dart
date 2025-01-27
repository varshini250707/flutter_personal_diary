import 'package:flutter/material.dart';

class CallLogScreen extends StatefulWidget {

  final String title;

  const CallLogScreen({super.key,required this.title});

  @override
  State<CallLogScreen> createState() => _CallLogScreenState();
}

class _CallLogScreenState extends State<CallLogScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(widget.title),
      ),
    );
  }
}
