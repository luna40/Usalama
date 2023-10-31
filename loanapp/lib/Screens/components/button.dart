import 'package:flutter/material.dart';



class CustomButton extends StatelessWidget {
  final VoidCallback onPressed;
  final Color backgroundColor;
  final Color fontColor;
  final Color borderColor;

  CustomButton({
    required this.onPressed,
    required this.backgroundColor,
    required this.fontColor,
    required this.borderColor, required int borderRadius, required int borderWidth, required int buttonSize, required Icon icon,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        foregroundColor: fontColor, backgroundColor: backgroundColor,   // Font color
        side: BorderSide(color: borderColor, width: 1), // Border color
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ), child: null,

    );
  }
}