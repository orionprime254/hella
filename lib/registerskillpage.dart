import 'package:flutter/material.dart';

class Registerskill extends StatelessWidget {
  const Registerskill({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: ListView(
        children: [
        SizedBox(height: 20),
          //dropdown menu

          //upload image

          //description of technician
          Container(
              decoration: BoxDecoration(
                color: Colors.grey[200],
                border: Border.all(color: Colors.white),

              ),
              child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Description'
                ),
              )
          )



        ],
      ),
    );
  }
}
