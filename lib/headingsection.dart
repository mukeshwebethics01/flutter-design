
import 'package:flutter/material.dart';

class HeadingSection extends StatelessWidget {
  const HeadingSection({
    super.key,
  required this.headingone,
    required this.headingtwo,  
  });
  final String headingone;
  final String headingtwo;
  @override

  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
      child: Column(
        children: [
          Text(
            headingone,
            style: const TextStyle(fontSize: 36, color: Color(0xFF2E2E2E)),
            textAlign: TextAlign.center,
          ),
          Text(
            headingtwo,
            style: const TextStyle(fontSize: 18, color: Color(0xFF5E5E5E)),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}