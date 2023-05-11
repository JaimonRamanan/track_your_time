import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  final String data;
  final Color? color;
  final double? fontSize;
  final FontWeight? fontWeight;
  const TextWidget({
    super.key,
    this.color,
    this.fontSize,
    this.fontWeight,
    required this.data,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      style: Theme.of(context).textTheme.labelMedium?.copyWith(
            fontSize: fontSize,
            fontWeight: fontWeight,
            color: color ?? Colors.black,
          ),
    );
  }
}