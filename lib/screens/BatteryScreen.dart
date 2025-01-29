import 'package:flutter/material.dart';

 class BatteryScreen extends StatefulWidget {

   final String title;

   const BatteryScreen ({super.key,  required this.title });

   @override
   State<BatteryScreen> createState() => _BatteryScreenState();
 }

 class _BatteryScreenState extends State<BatteryScreen> {
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title: Text(widget.title),
         backgroundColor: Colors.blueGrey,
       ),
       body: Center(
         child: Text(
           widget.title
         ),
       ),
     );


   }
 }


