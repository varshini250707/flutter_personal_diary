import 'package:flutter/material.dart';

class MobileContactScreen extends StatefulWidget {

  final String title;

  const MobileContactScreen({super.key, required this.title});

  @override
  State<MobileContactScreen> createState() => _MobileContactScreenState();
}

class _MobileContactScreenState extends State<MobileContactScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(widget.title),
      ),
    );
  }
}

