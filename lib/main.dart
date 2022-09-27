import 'package:flutter/material.dart';
import 'bmi.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: const InputBMI(),
    ));
