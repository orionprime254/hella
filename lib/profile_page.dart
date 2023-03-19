import 'package:flutter/material.dart';
import 'package:hella/updateprofilescreen.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(LineAwesomeIcons.angle_left),
        ),
        title: Text(
          'Profile',
        ),
      ),
      body: SingleChildScrollView(
          child: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            SizedBox(
              width: 120,
              height: 120,
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: Image(image: AssetImage('lib/asseT/carpenter.png'))),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Jason Abwao',
            ),
            Text('Warhammer@gmail.com'),
            SizedBox(
              height: 20,
            ),
            SizedBox(
                width: 200,
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => UpdateProfileScreen()));
                    },
                    child: Text('Edit Profile'))),
            SizedBox(
              height: 30,
            ),
            Divider(),
          ],
        ),
      )),
    );
  }
}
