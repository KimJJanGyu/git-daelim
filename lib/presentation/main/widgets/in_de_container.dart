import 'package:daelimflutter/presentation/common/widgets/white_box.dart';
import 'package:daelimflutter/presentation/main/widgets/circle_icon_button.dart';
import 'package:flutter/material.dart';

class InDeContainer extends StatefulWidget {
  final String title;
  final double value;
  final void Function() onPlus;
  final void Function() onMinus;

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
            widget.value.toInt().toString(),
            style: const TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
              color: Color(0xFF6c63FF),
            ),
          ),
          const SizedBox(height: 10),
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.center,
          //   children: [
          //     IconButton(
          //       icon: const Icon(Icons.remove),
          //       onPressed: widget.onMinus,
          //     ),
          //     const SizedBox(width: 16),
          //     IconButton(icon: const Icon(Icons.add), onPressed: widget.onPlus),
          //   ],
          // ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleIconButton(icon: Icons.remove, onTap: widget.onMinus),
              const SizedBox(width: 16),
              CircleIconButton(icon: Icons.add, onTap: widget.onPlus),
            ],
          ),
        ],
      ),
    );
  }
}
