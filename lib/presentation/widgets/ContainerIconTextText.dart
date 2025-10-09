import 'package:flutter/material.dart';
import 'package:remixicon/remixicon.dart';

class ContainerIconTextText extends StatelessWidget {
  final IconData icon;
  final String text;
  final String subText;

  const ContainerIconTextText({
    super.key,
    required this.icon,
    required this.text,
    required this.subText,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Card(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20.0),
          child: Column(
            spacing: 25,
            children: [Icon(icon), Text(text), Text(subText)],
          ),
        ),
      ),
    );
  }
}
