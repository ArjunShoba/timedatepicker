
import 'package:flutter/material.dart';
import 'package:timepickerdemo/datepicker.dart';
import 'package:timepickerdemo/timepicker.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "flutter demo",
      debugShowCheckedModeBanner: false,
      home:TimePickerDemo (),
    );
  }
}
