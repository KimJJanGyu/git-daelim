import 'package:daelimflutter/presentation/common/widgets/white_box.dart';
import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  final double bmi;

  const ResultScreen({super.key, required this.bmi});

  @override
  Widget build(BuildContext context) {
    String bmiType = '';
    if (bmi < 18.5) {
      bmiType = '저체중';
    } else if (18.5 <= bmi && bmi < 23) {
      bmiType = '정상 체중';
    } else if (23 <= bmi && bmi < 25) {
      bmiType = '비만 전단계';
    } else if (25 <= bmi && bmi < 30) {
      bmiType = '1단계 비만';
    } else if (30 <= bmi && bmi < 35) {
      bmiType = '2단계 비만';
    } else {
      bmiType = '3단계 비만';
    }

    return Scaffold(
      backgroundColor: Color(0xFFF4F3FF),
      appBar: AppBar(title: Text('BMI Result')),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(30),
          child: WhiteBox(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RichText(
                  text: TextSpan(
                    style: TextStyle(color: Color(0xFF6C63FF)),
                    children: [
                      TextSpan(
                        text: bmi.toString().substring(0, 2),
                        style: TextStyle(
                          fontSize: 120,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextSpan(
                        text: bmi.toString().substring(2),
                        style: TextStyle(fontSize: 45),
                      ),
                    ],
                  ),
                ),

                Text(
                  bmiType,
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
