import 'package:flutter/material.dart';
import 'package:hella/carpenters.dart';

class CustomButton extends StatelessWidget {
 CustomButton({required this.borderRadius,
  required this.buttonColor,


  required this.textColor,
  required this.iconData,
  required this.text,
  Key? key}) : super(key: key);


  Color buttonColor;
  double borderRadius;
  Color textColor;
    String text;
  IconData iconData;

  @override
  Widget build(BuildContext context) {
    return Container(
     padding: const EdgeInsets.all(8.0),
     child: SizedBox(
      width: double.infinity,
      child: ElevatedButton.icon( icon: Icon(iconData), label: Text(text), onPressed: () {Navigator.push(context,MaterialPageRoute(builder: (context)=> const Carpenters()));  },),
     ),

    );
  }
}
