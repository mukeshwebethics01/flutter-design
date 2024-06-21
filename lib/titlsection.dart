import 'package:flutter/material.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class TitleSection extends StatelessWidget {
  const TitleSection({
    super.key,
    required this.titleText,
  });
  final String titleText;
  @override
  Widget build(BuildContext context) {
    return GradientText(
      titleText,
      style: const TextStyle(
        fontSize: 21.0,
      ),
      colors: const [
        Colors.red,
        Color(0xFF7115CC),
      ],
    );
  }
}
