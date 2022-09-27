// ignore_for_file: deprecated_member_use
import 'package:flutter/material.dart';
import 'dart:math';

class BMIResult extends StatelessWidget {
  BMIResult({required this.tinggi_badan, required this.berat_badan});
  final int tinggi_badan;
  final int berat_badan;

  @override
  Widget build(BuildContext context) {
    double bmi = berat_badan / pow(tinggi_badan / 100, 2);
    String cBMI;
    if (bmi >= 28)
      cBMI = "Gemuk";
    else if (bmi >= 23)
      cBMI = "Kegemukan";
    else if (bmi >= 17.5)
      cBMI = "Normal";
    else
      cBMI = "Berat badan kurang";
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('HASIL'),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              cBMI,
              style: const TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.w500,
                color: Colors.green,
              ),
            ),
            Text(
              bmi.toStringAsFixed(2),
              style: const TextStyle(
                fontSize: 100,
                fontWeight: FontWeight.w800,
                color: Colors.white,
              ),
            ),
            const Text(
              'Rentang BMI Normal',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w800,
                color: Colors.white60,
              ),
            ),
            const Text(
              '17,5 -  22.9 ',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w800,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
      bottomSheet: SizedBox(
        width: double.infinity,
        height: 80,
        child: RaisedButton(
          color: Colors.black54,
          child: const Text(
            'KEMBALI',
            style: TextStyle(fontSize: 30),
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}
