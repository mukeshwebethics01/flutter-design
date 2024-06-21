import 'package:flutter/material.dart';

class ButtonSection extends StatefulWidget {
  const ButtonSection({
    super.key,
  });

  @override
  State<ButtonSection> createState() => _ButtonSectionState();
}

class _ButtonSectionState extends State<ButtonSection> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 15, 0, 0),
      child: ElevatedButton.icon(
        onPressed: () {
          Navigator.pushNamed(context, "/tansection");
        },
        label: const Text(
          "Continue with google",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w600,
          ),
        ),
        icon: Padding(
          padding: const EdgeInsets.fromLTRB(10, 15, 10, 15),
          child: Image.asset(
            "assets/images/googleicon.png",
            height: 18,
            width: 18,
          ),
        ),
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.white,
        ),
      ),
    );
  }
}


class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
