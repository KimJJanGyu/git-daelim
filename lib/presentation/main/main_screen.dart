import 'package:daelimflutter/presentation/common/widgets/white_box.dart';
import 'package:daelimflutter/presentation/main/widgets/in_de_container.dart';
import 'package:daelimflutter/presentation/main/widgets/height_box.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _age = 30;
  int _weight = 78;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF4F3FF),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 35),
              const Text(
                'BMI CALCULATOR',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 25),
              Row(
                children: [
                  Expanded(
                    child: InDeContainer(
                      title: 'Age',
                      value: _age.toDouble(),
                      onMinus: () {
                        if (_age > 0) {
                          setState(() => _age--);
                        }
                      },
                      onPlus: () => setState(() => _age++),
                    ),
                  ),
                  const SizedBox(width: 20),
                  Expanded(
                    child: InDeContainer(
                      title: 'Weight (KG)',
                      value: _weight.toDouble(),
                      onMinus: () {
                        if (_weight > 0) {
                          setState(() => _weight--);
                        }
                      },
                      onPlus: () => setState(() => _weight++),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 25),
              const HeightBox(),
              const SizedBox(height: 25),
              WhiteBox(
                padding: const EdgeInsets.all(25),
                child: const SizedBox.shrink(),
              ),
              const SizedBox(height: 25),
              ElevatedButton(
                onPressed: () {},
                child: const Text('Calculate BMI'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
