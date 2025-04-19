import 'package:daelimflutter/presentation/common/widgets/white_box.dart';
import 'package:daelimflutter/presentation/main/widgets/circle_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';

class InDeContainer extends StatefulWidget {
  final String title;
  final int value;
  final VoidCallback onMinus;
  final VoidCallback onPlus;

  const InDeContainer({
    super.key,
    required this.title,
    required this.value,
    required this.onPlus,
    required this.onMinus,
  });

  @override
  State<InDeContainer> createState() => _InDeContainerState();
}

class _InDeContainerState extends State<InDeContainer> {
  @override
  Widget build(BuildContext context) {
    return WhiteBox(
      padding: const EdgeInsets.all(27),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(widget.title, style: const TextStyle(fontSize: 18)),
          Text(
            '${widget.value}', // ✅ 수정됨
            style: const TextStyle(
              fontSize: 60,
              fontWeight: FontWeight.bold,
              color: Color(0xFF6c63FF),
            ),
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // ✅ spacing 속성 제거, 대신 SizedBox 사용
              CircleIconButton(onTap: widget.onMinus, icon: LucideIcons.minus),
              const SizedBox(width: 20),
              CircleIconButton(onTap: widget.onPlus, icon: LucideIcons.plus),
            ],
          ),
        ],
      ),
    );
  }
}
