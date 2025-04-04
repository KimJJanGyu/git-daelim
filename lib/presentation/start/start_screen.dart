import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  Widget _buildAppName() {
    return Text(
      'BNI Calculator',
      style: TextStyle(
        color: Colors.white,
        fontSize: 30,
        fontStyle: FontStyle.italic,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff6c63ff),
      body: SafeArea(
        child: Center(
          child: Container(
            width: 280,
            margin: const EdgeInsets.symmetric(horizontal: 20),
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildAppName(),
                SizedBox(height: 60),
                Image.asset('assets/images/bike.png'),
                SizedBox(height: 95),
                Align(alignment: Alignment.centerLeft, child: _buildTitle()),
                SizedBox(height: 15),
                Align(
                  alignment: Alignment.centerLeft,
                  child: _buildDescription(),
                ),
                SizedBox(height: 40),
                _buildStartButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildTitle() {
    return Text(
      'Get Started with\nTracking Your Health!',
      style: TextStyle(
        color: Colors.white,
        fontSize: 25,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}

//설명명
Widget _buildDescription() {
  return Text(
    'Calculate your BMI and stay on top of your wellness journey, effortlessly.',
    style: TextStyle(color: Color(0xFFC6C3F9), fontSize: 15),
  );
}

//시작 버튼
Widget _buildStartButton() {
  return SizedBox(
    width: double.infinity,
    child: ElevatedButton(onPressed: () {}, child: Text('Get Started')),
  );
}
