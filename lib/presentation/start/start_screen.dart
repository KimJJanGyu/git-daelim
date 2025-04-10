import 'package:daelimflutter/aoo_router/app_route.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  final _title = 'Get Started with\nTracking Your Health!';
  final _desc =
      'Calculate your BMI and stay on top of your wellness journey, effortlessly.';

  TextStyle get _titleStyle =>
      TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold);

  TextStyle get _descStyle => TextStyle(color: Color(0xFFC6C3F9), fontSize: 15);

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
                _buildStartButton(context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildTitle() {
    return Text(_title, style: _titleStyle);
  }

  //설명명
  Widget _buildDescription() {
    return Text(_desc, style: _descStyle);
  }

  //제목과 설명 합침침
  Widget _buildTitleDesc() {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(text: _title, style: _titleStyle),
          TextSpan(text: '\n'),
          TextSpan(text: _desc, style: _descStyle),
        ],
      ),
    );
  }

  //시작 버튼
  Widget _buildStartButton(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 70,
      child: ElevatedButton(
        onPressed: () => context.go(AppRoute.main.toPath),
        style: ElevatedButton.styleFrom(foregroundColor: Color(0xFF081854)),
        child: Text('Get Started'),
      ),
    );
  }
}
