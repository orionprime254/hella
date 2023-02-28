import 'package:flutter/material.dart';
import 'package:hella/custom%20widgets/buttons.dart';

import 'custom widgets/userrow.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: ListView(children: [
        //who are you looking for
        SizedBox(height: 50),

        //search bar
        SizedBox(
          height: 50,
        ),
        Center(
          child: Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Text(
              'Who are You Looking For?',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
            ),
          ),
        ),
        SizedBox(
          height: 25,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.grey[200],
              border: Border.all(color: Colors.white),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Container(
                    height: 30,
                    child: Image.asset(
                      'lib/icons/search.png',
                      color: Colors.grey[600],
                    ),
                  ),
                ),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Search For A Technician..;)'),
                  ),
                ),
              ],
            ),
          ),
        ),
        //for you,buttons for different trchnicians
        SizedBox(
          height: 25,
        ),
        GridView.count(
          crossAxisCount: 3,
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          children: [
            CustomButton(
                borderRadius: 10,
                buttonColor: Colors.grey,
                onTap: () {},
                textColor: Colors.black,
                iconData: Icons.car_repair,
                text: 'Car Mechanic'),
            CustomButton(
                borderRadius: 10,
                buttonColor: Colors.grey,
                onTap: () {},
                textColor: Colors.black,
                iconData: Icons.carpenter,
                text: 'Carpenter'),
            CustomButton(
                borderRadius: 10,
                buttonColor: Colors.grey,
                onTap: () {},
                textColor: Colors.black,
                iconData: Icons.plumbing,
                text: 'Plumber'),
            CustomButton(
                borderRadius: 10,
                buttonColor: Colors.grey,
                onTap: () {},
                textColor: Colors.black,
                iconData: Icons.construction,
                text: 'Mjengo'),
            CustomButton(
                borderRadius: 10,
                buttonColor: Colors.grey,
                onTap: () {},
                textColor: Colors.black,
                iconData: Icons.electric_bolt,
                text: 'Electrician'),
            CustomButton(
                borderRadius: 10,
                buttonColor: Colors.grey,
                onTap: () {},
                textColor: Colors.black,
                iconData: Icons.graphic_eq,
                text: 'graphic designer'),
            CustomButton(
                borderRadius: 10,
                buttonColor: Colors.grey,
                onTap: () {},
                textColor: Colors.black,
                iconData: Icons.phone_android,
                text: 'Phone Repair'),
            CustomButton(
                borderRadius: 10,
                buttonColor: Colors.grey,
                onTap: () {},
                textColor: Colors.black,
                iconData: Icons.computer,
                text: 'Computer Repair'),
            CustomButton(
                borderRadius: 10,
                buttonColor: Colors.grey,
                onTap: () {},
                textColor: Colors.black,
                iconData: Icons.construction,
                text: 'Mjengo'),
          ],
        ),
        SizedBox(
          height: 25,
        ),
        UserRow(
          name: 'John Dee',
          phoneNumber: '0793997938',
          location: 'Mbale',
          photoUrl: 'https://www.google.com/imgres?imgurl=https%3A%2F%2Fimg.freepik.com%2Ffree-photo%2Fclose-up-happy-brunette-girl-white-t-shirt-laughing-smiling-carefree-camera_1258-19129.jpg&imgrefurl=https%3A%2F%2Fwww.freepik.com%2Ffree-photos-vectors%2Fsmiling-woman&tbnid=jMfDYODGEri82M&vet=12ahUKEwic2YCtl679AhXSricCHeP0C-4QMygOegUIARCMAg..i&docid=PakbRk4DYhwL8M&w=626&h=417&q=smiling%20woman&client=opera&ved=2ahUKEwic2YCtl679AhXSricCHeP0C-4QMygOegUIARCMAg',
        ),
        UserRow(
          name: 'John Dee',
          phoneNumber: '0793997938',
          location: 'Mbale',
          photoUrl: 'https://www.google.com/imgres?imgurl=https%3A%2F%2Fimg.freepik.com%2Ffree-photo%2Fclose-up-happy-brunette-girl-white-t-shirt-laughing-smiling-carefree-camera_1258-19129.jpg&imgrefurl=https%3A%2F%2Fwww.freepik.com%2Ffree-photos-vectors%2Fsmiling-woman&tbnid=jMfDYODGEri82M&vet=12ahUKEwic2YCtl679AhXSricCHeP0C-4QMygOegUIARCMAg..i&docid=PakbRk4DYhwL8M&w=626&h=417&q=smiling%20woman&client=opera&ved=2ahUKEwic2YCtl679AhXSricCHeP0C-4QMygOegUIARCMAg',
        ),
        UserRow(
          name: 'John Dee',
          phoneNumber: '0793997938',
          location: 'Mbale',
          photoUrl: 'https://www.google.com/imgres?imgurl=https%3A%2F%2Fimg.freepik.com%2Ffree-photo%2Fclose-up-happy-brunette-girl-white-t-shirt-laughing-smiling-carefree-camera_1258-19129.jpg&imgrefurl=https%3A%2F%2Fwww.freepik.com%2Ffree-photos-vectors%2Fsmiling-woman&tbnid=jMfDYODGEri82M&vet=12ahUKEwic2YCtl679AhXSricCHeP0C-4QMygOegUIARCMAg..i&docid=PakbRk4DYhwL8M&w=626&h=417&q=smiling%20woman&client=opera&ved=2ahUKEwic2YCtl679AhXSricCHeP0C-4QMygOegUIARCMAg',
        ),
        UserRow(
          name: 'John Dee',
          phoneNumber: '0793997938',
          location: 'Mbale',
          photoUrl: 'https://www.google.com/imgres?imgurl=https%3A%2F%2Fimg.freepik.com%2Ffree-photo%2Fclose-up-happy-brunette-girl-white-t-shirt-laughing-smiling-carefree-camera_1258-19129.jpg&imgrefurl=https%3A%2F%2Fwww.freepik.com%2Ffree-photos-vectors%2Fsmiling-woman&tbnid=jMfDYODGEri82M&vet=12ahUKEwic2YCtl679AhXSricCHeP0C-4QMygOegUIARCMAg..i&docid=PakbRk4DYhwL8M&w=626&h=417&q=smiling%20woman&client=opera&ved=2ahUKEwic2YCtl679AhXSricCHeP0C-4QMygOegUIARCMAg',
        ),
        UserRow(
          name: 'John Dee',
          phoneNumber: '0793997938',
          location: 'Mbale',
          photoUrl: 'https://www.google.com/imgres?imgurl=https%3A%2F%2Fimg.freepik.com%2Ffree-photo%2Fclose-up-happy-brunette-girl-white-t-shirt-laughing-smiling-carefree-camera_1258-19129.jpg&imgrefurl=https%3A%2F%2Fwww.freepik.com%2Ffree-photos-vectors%2Fsmiling-woman&tbnid=jMfDYODGEri82M&vet=12ahUKEwic2YCtl679AhXSricCHeP0C-4QMygOegUIARCMAg..i&docid=PakbRk4DYhwL8M&w=626&h=417&q=smiling%20woman&client=opera&ved=2ahUKEwic2YCtl679AhXSricCHeP0C-4QMygOegUIARCMAg',
        ),
        UserRow(
          name: 'John Dee',
          phoneNumber: '0793997938',
          location: 'Mbale',
          photoUrl: 'https://www.google.com/imgres?imgurl=https%3A%2F%2Fimg.freepik.com%2Ffree-photo%2Fclose-up-happy-brunette-girl-white-t-shirt-laughing-smiling-carefree-camera_1258-19129.jpg&imgrefurl=https%3A%2F%2Fwww.freepik.com%2Ffree-photos-vectors%2Fsmiling-woman&tbnid=jMfDYODGEri82M&vet=12ahUKEwic2YCtl679AhXSricCHeP0C-4QMygOegUIARCMAg..i&docid=PakbRk4DYhwL8M&w=626&h=417&q=smiling%20woman&client=opera&ved=2ahUKEwic2YCtl679AhXSricCHeP0C-4QMygOegUIARCMAg',
        ),
        UserRow(
          name: 'John Dee',
          phoneNumber: '0793997938',
          location: 'Mbale',
          photoUrl: 'https://www.google.com/imgres?imgurl=https%3A%2F%2Fimg.freepik.com%2Ffree-photo%2Fclose-up-happy-brunette-girl-white-t-shirt-laughing-smiling-carefree-camera_1258-19129.jpg&imgrefurl=https%3A%2F%2Fwww.freepik.com%2Ffree-photos-vectors%2Fsmiling-woman&tbnid=jMfDYODGEri82M&vet=12ahUKEwic2YCtl679AhXSricCHeP0C-4QMygOegUIARCMAg..i&docid=PakbRk4DYhwL8M&w=626&h=417&q=smiling%20woman&client=opera&ved=2ahUKEwic2YCtl679AhXSricCHeP0C-4QMygOegUIARCMAg',
        ),
        UserRow(
          name: 'John Dee',
          phoneNumber: '0793997938',
          location: 'Mbale',
          photoUrl: 'https://www.google.com/imgres?imgurl=https%3A%2F%2Fimg.freepik.com%2Ffree-photo%2Fclose-up-happy-brunette-girl-white-t-shirt-laughing-smiling-carefree-camera_1258-19129.jpg&imgrefurl=https%3A%2F%2Fwww.freepik.com%2Ffree-photos-vectors%2Fsmiling-woman&tbnid=jMfDYODGEri82M&vet=12ahUKEwic2YCtl679AhXSricCHeP0C-4QMygOegUIARCMAg..i&docid=PakbRk4DYhwL8M&w=626&h=417&q=smiling%20woman&client=opera&ved=2ahUKEwic2YCtl679AhXSricCHeP0C-4QMygOegUIARCMAg',
        ),
        UserRow(
          name: 'John Dee',
          phoneNumber: '0793997938',
          location: 'Mbale',
          photoUrl: 'https://www.google.com/imgres?imgurl=https%3A%2F%2Fimg.freepik.com%2Ffree-photo%2Fclose-up-happy-brunette-girl-white-t-shirt-laughing-smiling-carefree-camera_1258-19129.jpg&imgrefurl=https%3A%2F%2Fwww.freepik.com%2Ffree-photos-vectors%2Fsmiling-woman&tbnid=jMfDYODGEri82M&vet=12ahUKEwic2YCtl679AhXSricCHeP0C-4QMygOegUIARCMAg..i&docid=PakbRk4DYhwL8M&w=626&h=417&q=smiling%20woman&client=opera&ved=2ahUKEwic2YCtl679AhXSricCHeP0C-4QMygOegUIARCMAg',
        ),
      ] ,

        //recently add job titles
     ),
    );
  }
}
