import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.blue, title: Text('Flutter Demo')),
      floatingActionButton: FloatingActionButton(
        onPressed: null,
        child: Icon(Icons.plus_one),
      ),
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Text('버튼 클릭 시 횟수 증가', style: TextStyle(fontSize: 34))],
          ),
        ),
      ),
    );
  }
}
