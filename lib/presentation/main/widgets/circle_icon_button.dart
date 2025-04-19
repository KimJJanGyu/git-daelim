import 'package:flutter/material.dart';

/// 아이콘과 콜백을 지정할 수 있는 동그란 버튼
class CircleIconButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback? onTap; // null 허용으로 안전하게 처리
  final double? size; // 아이콘 크기 조절 옵션 (선택)
  final Color? iconColor; // 아이콘 색상 조절 옵션
  final Color? backgroundColor; // 배경 색상 조절 옵션

  const CircleIconButton({
    super.key,
    required this.icon,
    this.onTap,
    this.size,
    this.iconColor,
    this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 44,
        height: 44,
        decoration: BoxDecoration(
          color: backgroundColor ?? const Color(0xFF081854),
          shape: BoxShape.circle,
        ),
        child: Center(
          child: Icon(icon, size: size ?? 24, color: iconColor ?? Colors.white),
        ),
      ),
    );
  }
}
