import 'package:flutter/material.dart';
import 'package:gptvoice/pallete.dart';

class FeatureBox extends StatelessWidget {
  final String headerText;
  final String descText;
  final Color color;
  const FeatureBox({
    super.key,
    required this.color,
    required this.headerText,
    required this.descText,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 15).copyWith(left: 15),
      margin: const EdgeInsets.symmetric(
        horizontal: 35,
        vertical: 5,
      ),
      decoration: BoxDecoration(
        color: color,
        borderRadius: const BorderRadius.all(
          Radius.circular(15),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            headerText,
            style: const TextStyle(
              fontFamily: 'Cera Pro',
              color: Pallete.blackColor,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 3),
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: Text(
              descText,
              style: const TextStyle(
                fontFamily: 'Cera Pro',
                color: Pallete.blackColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
