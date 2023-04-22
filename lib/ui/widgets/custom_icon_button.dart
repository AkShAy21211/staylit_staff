import 'package:flutter/material.dart';

class CustomIconButton extends StatelessWidget {
  final IconData iconData;
  final Color? color;
  final Function() onPressed;
  const CustomIconButton({
    super.key,
    required this.iconData,
    this.color = Colors.blue,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: color!.withOpacity(.1),
      borderRadius: BorderRadius.circular(15),
      child: InkWell(
        onTap: onPressed,
        hoverColor: color!.withOpacity(.15),
        focusColor: color!.withOpacity(.15),
        highlightColor: color!.withOpacity(.15),
        splashColor: color!.withOpacity(.2),
        borderRadius: BorderRadius.circular(15),
        child: Padding(
          padding: const EdgeInsets.only(
            left: 10,
            right: 10,
            top: 8,
            bottom: 8,
          ),
          child: Icon(
            iconData,
            color: color,
            size: 20,
          ),
        ),
      ),
    );
  }
}
