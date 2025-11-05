import 'package:flutter/material.dart';

/// A small reusable widget that displays an environment-themed icon + label.
class EnvironmentIllustration extends StatelessWidget {
  final double size;
  final Color color;
  final String label;

  const EnvironmentIllustration({
    Key? key,
    this.size = 100,
    this.color = Colors.green,
    this.label = '',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(Icons.eco, size: size, color: color),
        if (label.isNotEmpty) ...[
          const SizedBox(height: 8),
          Text(label, style: const TextStyle(fontSize: 16)),
        ]
      ],
    );
  }
}
