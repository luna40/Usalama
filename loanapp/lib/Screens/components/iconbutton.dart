import 'package:flutter/material.dart';
import 'package:loanapp/Screens/components/theme.dart';

class globalIconButton extends StatelessWidget {
  final Color borderColor;
  final double borderRadius;
  final double borderWidth;
  final double buttonSize;
  final Icon icon;
  final VoidCallback onPressed;

  const globalIconButton({
    Key? key,
    required this.borderColor,
    required this.borderRadius,
    required this.borderWidth,
    required this.buttonSize,
    required this.icon,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 16, 0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(borderRadius),
          border: Border.all(
            color: borderColor,
            width: borderWidth,
          ),
        ),
        width: buttonSize,
        height: buttonSize,
        child: IconButton(
          icon: icon,
          color: globalTheme.of(context).secondaryText,
          iconSize: 24,
          onPressed: onPressed,
        ),
      ),
    );
  }
}
