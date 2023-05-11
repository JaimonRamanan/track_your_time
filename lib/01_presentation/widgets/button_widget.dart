import 'package:flutter/material.dart';
import 'package:track_your_time/01_presentation/widgets/text_widget.dart';

class ButtonWidget extends StatelessWidget {
  final String text;
  final Function onTap;
  const ButtonWidget({
    super.key,
    required this.text,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () => onTap(),
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(
          Theme.of(context).colorScheme.secondary,
        ),
      ),
      child: TextWidget(
        data: text,
        color: Colors.white,
      ),
    );
  }
}
