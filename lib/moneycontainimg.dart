import 'package:flutter/material.dart';


class ImageSection extends StatelessWidget {
  const ImageSection({
    super.key,
    required this.image,
  });

  final String image;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 50, 20, 0),
      child: Image.asset(
        image,
        width: 43,
        height: 67,
      ),
    );
  }
}