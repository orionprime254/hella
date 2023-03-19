import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

class UpdateProfileScreen extends StatelessWidget {
  const UpdateProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(LineAwesomeIcons.angle_left),
        ),
        title: Text(
          ' Edit Profile',
        ),
      ),
      body: SingleChildScrollView(
          child: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Stack(
              children: [
                SizedBox(
                  width: 120,
                  height: 120,
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(100),
                      child:
                          Image(image: AssetImage('lib/asseT/carpenter.png'))),
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: Container(
                    width: 35,
                    height: 35,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: Colors.deepPurple),
                    child: Icon(
                        color: Colors.white,
                        size: 20,
                        LineAwesomeIcons.alternate_pencil),
                  ),
                )
              ],
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
            Form(
                child: Column(
              children: [
                TextFormField(
                  autocorrect: true,
                  decoration: InputDecoration(
                      label: Text('Full Name'),
                      prefixIcon: Icon(Icons.person_outline_rounded)),
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  autocorrect: true,
                  decoration: InputDecoration(
                      label: Text('Phone Number'),
                      prefixIcon: Icon(Icons.phone_android)),
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  autocorrect: true,
                  decoration: InputDecoration(
                      label: Text('Location'),
                      prefixIcon: Icon(Icons.location_pin)),
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  maxLength: 100,
                  maxLines: 4,
                  autocorrect: true,
                  decoration: InputDecoration(
                      label: Text('Description'),
                      prefixIcon: Icon(Icons.wordpress)),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: GestureDetector(
                    onTap: () {},
                    child: Container(
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                          color: Colors.deepPurple,
                          borderRadius: BorderRadius.circular(12)),
                      child: Center(
                        child: Text(
                          'Edit',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ))
          ],
        ),
      )),
    );
  }
}
