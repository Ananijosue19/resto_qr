import 'package:flutter/material.dart';

class BtnIconText extends StatelessWidget {
  final String text;
  final IconData icon;
  final VoidCallback onPressed;
  const BtnIconText({
    super.key,
    required this.text,
    required this.icon,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      icon: Icon(icon, color: Colors.white),
      style: ButtonStyle(
        shape: WidgetStatePropertyAll<RoundedRectangleBorder>(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        ),
        backgroundColor: WidgetStatePropertyAll<Color>(Colors.deepOrangeAccent),
        padding: WidgetStatePropertyAll<EdgeInsets>(
          EdgeInsets.symmetric(
            vertical: MediaQuery.sizeOf(context).width < 600 ? 12 : 15,
            horizontal: MediaQuery.sizeOf(context).width < 600 ? 10 : 30,
          ),
        ),
      ),
      onPressed: onPressed,
      label: Text(text, style: TextStyle(color: Colors.white)),
    );
  }
}
