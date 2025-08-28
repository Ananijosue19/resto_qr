import 'package:flutter/material.dart';

class NewContainerIcon extends StatelessWidget {
  final IconData myIcon;
  const NewContainerIcon({super.key, required this.myIcon});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Icon(myIcon),
    );
  }
}
