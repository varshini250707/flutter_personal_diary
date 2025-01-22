import 'package:flutter/material.dart';

class AnalyseSurrounding extends StatefulWidget {

  final String title;

  const AnalyseSurrounding({super.key, required this.title });

  @override
  State<AnalyseSurrounding> createState() => _AnalyseSurroundingState();
}

class _AnalyseSurroundingState extends State<AnalyseSurrounding> {
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
