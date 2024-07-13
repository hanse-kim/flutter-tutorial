import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String label;
  final Color bgColor;
  final Color? textColor;

  const Button({
    super.key,
    required this.label,
    required this.bgColor,
    this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: const BorderRadius.all(Radius.circular(9999)),
      ),
      child: Center(
        child: Text(
          label,
          style: TextStyle(
            fontSize: 16,
            color: textColor,
          ),
        ),
      ),
    );
  }
}
