import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:track_your_time/01_presentation/widgets/text_widget.dart';

class ButtonWidget extends StatelessWidget {
  final String text;
  final double? width;
  final Function onTap;
  const ButtonWidget({
    super.key,
    this.width,
    required this.text,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50.0,
      width: width ?? MediaQuery.of(context).size.width,
      child: ElevatedButton(
        onPressed: () => onTap(),
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(
            Theme.of(context).colorScheme.secondary,
          ),
        ),
        child: TextWidget(
          data: text,
          fontSize: 15.sp,
          color: Colors.white,
        ),
      ),
    );
  }
}
