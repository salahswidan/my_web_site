import 'package:flutter/material.dart';

class BorderFlatButton extends StatelessWidget {
  const BorderFlatButton(
      {super.key,
      required this.title,
      required this.onTap,
      required this.width,
      required this.height,
      this.color});

  final String title;
  final VoidCallback onTap;
  final double width;
  final double height;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: TextButton(
        onPressed: onTap,
        style: TextButton.styleFrom(
          backgroundColor: color,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(24),
            side: const BorderSide(
              color: Colors.white,
              width: 1,
            ),
          ),
        ),
        child: Text(
          title,
          style: const TextStyle(color: Colors.white), // Text color
        ),
      ),
    );
  }
}

  // shape : RoundedRectangleBorder(
  //         borderRadius: BorderRadius.circular(24),
  //         side: BorderSide(
  //           color: Colors.white,
  //           width: 1,
  //         )
  //       )