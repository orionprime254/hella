import 'package:flutter/material.dart';
class UserRow extends StatelessWidget {
  final String name;
  final String phoneNumber;
  final String location;
  final String photoUrl;

   UserRow({Key? key, required this.name, required this.phoneNumber, required this.location, required this.photoUrl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 150,
          height: 150,
          decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            image: DecorationImage(
              fit: BoxFit.cover,image: NetworkImage(photoUrl)
            )

          ),

        ),
        SizedBox(width: 16,),
        Expanded(child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              name,style: TextStyle(fontSize: 18.0,fontWeight: FontWeight.bold ),


            ),
            SizedBox(height: 8.0,),
            Row(
              children: [
                Icon(Icons.phone,size: 16.0,),
                SizedBox(width: 8.0,),
                Text(phoneNumber,style: TextStyle(fontSize: 14.0),)
              ],
            ),
            SizedBox(height: 8.0,),
            Row(
              children: [
                Icon(Icons.location_on,size: 16.0),
                SizedBox(width: 8.0,),
                Text(location,style: TextStyle(fontSize: 14.0),)
              ],
            )
          ],
        ))
      ],
    );
  }
}
