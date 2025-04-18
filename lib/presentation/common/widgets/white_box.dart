import 'package:flutter/material.dart';

class WhiteBox extends StatelessWidget {
  final EdgeInsetsGeometry padding;
  final Widget child;

  const WhiteBox({
    super.key,
    this.padding = EdgeInsets.zero, // 기본값 설정
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: padding,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: child,
    );
  }
}
