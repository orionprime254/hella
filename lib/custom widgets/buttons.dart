import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
 CustomButton({required this.borderRadius,
  required this.buttonColor,

  required this.onTap,
  required this.textColor,
  required this.iconData,
  required this.text,
  Key? key}) : super(key: key);

  VoidCallback onTap;
  Color buttonColor;
  double borderRadius;
  Color textColor;
    String text;
  IconData iconData;

  get onPressed => null;
  @override
  Widget build(BuildContext context) {
    return Container(
     padding: const EdgeInsets.all(8.0),
     child: SizedBox(
      width: double.infinity,
      child: ElevatedButton.icon(onPressed: onPressed, icon: Icon(iconData), label: Text(text)),
     ),

    );
  }
}
