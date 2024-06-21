import 'package:flutter/material.dart';
import 'package:mobiledesign/buttonsection.dart';
import 'package:mobiledesign/headingsection.dart';
import 'package:mobiledesign/moneycontainimg.dart';
import 'package:mobiledesign/titlsection.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        backgroundColor: Color.fromARGB(255, 233, 233, 253),
        body: SingleChildScrollView(
          child: Column(
            children: [
              ImageSection(image: "assets/images/splash-animation.png"),
              TitleSection(
                titleText: "Finance Manager",
              ),
              HeadingSection(
                headingone: "Seamlessly manage your Finances",
                headingtwo:
                    "Discover the revolutionary semi automated financial management experience.",
              ),
              ButtonSection(),
              ImageSectionTwo(
                image: "assets/images/sittingman.png",
              ),
            ],
          ),
        ));
  }
}

class ImageSectionTwo extends StatelessWidget {
  const ImageSectionTwo({super.key, required this.image});
  final String image;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Image.asset(
        image,
      ),
    );
  }
}
