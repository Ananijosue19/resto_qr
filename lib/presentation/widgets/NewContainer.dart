import 'package:flutter/material.dart';

class NewContainer extends StatelessWidget {
  final IconData myIcon;
  final String myText;
  final String myDesc;
  final bool isSmallScreen;

  const NewContainer({
    super.key,
    required this.myIcon,
    required this.myText,
    required this.myDesc,
    this.isSmallScreen = false,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        // Adapter les tailles selon la largeur disponible
        final iconSize = isSmallScreen ? 52.0 : 56.0;
        final titleSize = isSmallScreen ? 18.0 : 20.0;
        final descSize = isSmallScreen ? 14.0 : 16.0;
        final padding = isSmallScreen ? 12.0 : 18.0;
        final spacing = isSmallScreen ? 15.0 : 20.0;

        return Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.deepOrangeAccent,
              width: isSmallScreen ? 1.5 : 2.0,
            ),
            borderRadius: BorderRadius.circular(15),
          ),
          padding: EdgeInsets.all(padding),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(myIcon, color: Colors.deepOrangeAccent, size: iconSize),
              SizedBox(height: spacing),
              Text(
                myText,
                style: TextStyle(
                  fontSize: titleSize,
                  fontWeight: FontWeight.w600,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: spacing / 2),
              Flexible(
                child: Text(
                  myDesc,
                  style: TextStyle(
                    fontSize: descSize,
                    color: Colors.grey[700],
                    height: 1.3,
                  ),
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 3,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
