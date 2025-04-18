import 'package:flutter/material.dart';

class CircleIconButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback onTap; // onTap 매개변수 추가

  const CircleIconButton({super.key, required this.icon, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 44, // 살짝 여유
        height: 44,
        decoration: BoxDecoration(
          color: const Color(0xFF081854), // 진한 파랑 배경
          shape: BoxShape.circle,
        ),
        child: Center(
          child: Icon(
            icon,
            size: 24, // 크기 적당히 조정
            color: Colors.white, // 확실히 흰색 아이콘 지정
          ),
        ),
      ),
    );
  }
}
