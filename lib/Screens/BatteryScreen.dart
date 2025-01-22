import 'package:flutter/material.dart';

 class Batteryscreen extends StatefulWidget {

   final String title;

   const Batteryscreen ({super.key,  required this.title });

   @override
   State<Batteryscreen> createState() => _BatteryScreenState();
 }

 class _BatteryScreenState extends State<Batteryscreen> {
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title: Text(widget.title),
         backgroundColor: Colors.greenAccent,
       ),
       body: Center(
         child: Text(
           widget.title
         ),
       ),
     );


   }
 }


