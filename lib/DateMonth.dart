import 'package:flutter/material.dart';
import 'package:mobiledesign/Dropdown.dart';

class Datemonth extends StatelessWidget {
  const Datemonth({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
              size: 15,
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              "Aug 2022",
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Icon(
              Icons.arrow_forward_ios_outlined,
              color: Colors.white,
              size: 15,
            ),
          ],
        ),
        Row(
          children: [
            DropdownMenuExample(),
          ],
        )
      ],
    );
  }
}
