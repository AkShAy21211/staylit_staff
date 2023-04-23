import 'package:flutter/material.dart';
import 'package:staylit/values/colors.dart';

class CustomProgressIndicator extends StatelessWidget {
  final Color? color;
  const CustomProgressIndicator({
    super.key,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 20,
      width: 20,
      child: CircularProgressIndicator(
        color: color ?? primaryColor,
        backgroundColor: color != null
            ? color!.withOpacity(0.1)
            : primaryColor.withOpacity(0.1),
      ),
    );
  }
}
