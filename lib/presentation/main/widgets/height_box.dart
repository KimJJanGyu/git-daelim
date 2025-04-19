import 'package:daelimflutter/presentation/common/widgets/white_box.dart';
import 'package:flutter/material.dart';

class HeightBox extends StatefulWidget {
  final Function(double height) onChanged;
  const HeightBox({super.key, required this.onChanged});

  @override
  State<HeightBox> createState() => _HeightBoxState();
}

class _HeightBoxState extends State<HeightBox> {
  double _height = 100.0;

  @override
  Widget build(BuildContext context) {
    return WhiteBox(
      padding: EdgeInsets.all(18),
      child: Column(
        children: [
          Text('Height (CM)', style: TextStyle(fontSize: 18)),
          Text(
            _height.toStringAsFixed(1),
            style: const TextStyle(
              fontSize: 60,
              fontWeight: FontWeight.bold,
              color: Color(0xFF6c63FF),
            ),
          ),
          Slider(
            min: 50.0,
            max: 300.0,
            value: _height,
            activeColor: Color(0xFF6c63FF),
            onChanged: (double val) {
              setState(() {
                _height = val;
              });
              widget.onChanged(_height);
            },
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('50 cm', style: TextStyle(fontSize: 12)),
              Text('300 cm', style: TextStyle(fontSize: 12)),
            ],
          ),
        ],
      ),
    );
  }
}
