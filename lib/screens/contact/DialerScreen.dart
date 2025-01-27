import 'package:flutter/material.dart';

class DialerScreen extends StatefulWidget {

  final String title;

  const DialerScreen({super.key,required this.title});

  @override
  State<DialerScreen> createState() => _DialerScreenState();
}

class _DialerScreenState extends State<DialerScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(widget.title),
      ),
    );
  }
}
