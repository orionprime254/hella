import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hella/advertisepage.dart';
import 'package:hella/collection_of_techs/carpenters.dart';

import 'package:hella/custom%20widgets/buttons.dart';
import 'package:hella/profile.dart';
import 'package:hella/register_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final user = FirebaseAuth.instance.currentUser!;
  final CollectionReference _teknicians =
      FirebaseFirestore.instance.collection('teknicians');
  int _currentIndex = 0;
  final screens = [
    HomePage(),
    AdvertPage(),
    ProfilePage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
    if (index == 1) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => AdvertPage()),
      );
    } else if (index == 2) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => ProfilePage()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 10,
      ),
      drawer: Drawer(
        child: Container(
          color: Colors.deepPurple[200],
          child: ListView(
            children: [
              DrawerHeader(
                  child: Icon(
                Icons.home,
                size: 35,
              )),
              ListTile(
                leading: Icon(Icons.add),
                title: Text('Sell Services'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AdvertPage()),
                  );
                },
              ),
              ListTile(
                leading: Icon(Icons.person),
                title: Text('Profile'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ProfilePage()),
                  );
                },
              ),
              ListTile(
                  leading: Icon(Icons.logout),
                  title: Text('Sign Out'),
                  onTap: () {
                    FirebaseAuth.instance.signOut();
                  }
                  // close the drawer
                  )
            ],
          ),
        ),
      ),
      /*bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: _onItemTapped,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.add), label: ''),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle_sharp), label: ''),
        ],
      ),*/
      backgroundColor: Colors.grey[300],
      body: SingleChildScrollView(
        child: Column(children: [
          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Carpenters()));
            },
            child: Card(
              elevation: 5,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18)),
              color: Colors.deepPurple[100],
              child: Row(
                children: [
                  Image.asset(
                    'lib/asseT/carpenter.png',
                    width: 100,
                    height: 80,
                  ),
                  Expanded(
                      child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(
                      child: Text(
                        'Carpenter',
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.w400),
                      ),
                    ),
                  )),
                ],
              ),
            ),
          ),

          Card(
            child: Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.deepPurple[100],
              ),
              child: Row(
                children: [
                  Image.asset(
                    'lib/asseT/car-repair.png',
                    width: 100,
                    height: 80,
                  ),
                  Expanded(
                      child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(
                      child: Text(
                        'Mechanic',
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.w400),
                      ),
                    ),
                  )),
                ],
              ),
            ),
          ),
          Card(
            child: Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.deepPurple[100],
              ),
              child: Row(
                children: [
                  Image.asset(
                    'lib/asseT/electrician.png',
                    width: 100,
                    height: 80,
                  ),
                  Expanded(
                      child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(
                      child: Text(
                        'Electrician',
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.w400),
                      ),
                    ),
                  )),
                ],
              ),
            ),
          ),
          Card(
            child: Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.deepPurple[100],
              ),
              child: Row(
                children: [
                  Image.asset(
                    'lib/asseT/plumber.png',
                    width: 100,
                    height: 80,
                  ),
                  Expanded(
                      child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(
                      child: Text(
                        'Plumber',
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.w400),
                      ),
                    ),
                  )),
                ],
              ),
            ),
          ),
          Card(
            child: Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.deepPurple[100],
              ),
              child: Row(
                children: [
                  Image.asset(
                    'lib/asseT/repair.png',
                    width: 100,
                    height: 80,
                  ),
                  Expanded(
                      child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(
                      child: Text(
                        'Computer Repair',
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.w400),
                      ),
                    ),
                  )),
                ],
              ),
            ),
          ),
          Card(
            child: Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.deepPurple[100],
              ),
              child: Row(
                children: [
                  Image.asset(
                    'lib/asseT/repair.png',
                    width: 100,
                    height: 80,
                  ),
                  Expanded(
                      child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(
                      child: Text(
                        'Computer Repair',
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.w400),
                      ),
                    ),
                  )),
                ],
              ),
            ),
          ),
          Card(
            child: Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.deepPurple[100],
              ),
              child: Row(
                children: [
                  Image.asset(
                    'lib/asseT/repair.png',
                    width: 100,
                    height: 80,
                  ),
                  Expanded(
                      child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(
                      child: Text(
                        'Computer Repair',
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.w400),
                      ),
                    ),
                  )),
                ],
              ),
            ),
          ),
          Card(
            child: Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.deepPurple[100],
              ),
              child: Row(
                children: [
                  Image.asset(
                    'lib/asseT/repair.png',
                    width: 100,
                    height: 80,
                  ),
                  Expanded(
                      child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(
                      child: Text(
                        'Computer Repair',
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.w400),
                      ),
                    ),
                  )),
                ],
              ),
            ),
          ),

          /* GridView.count(
            crossAxisCount: 3,
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            children: [
              InkWell(
                child: CustomButton(
                    borderRadius: 10,
                    buttonColor: Colors.white,
                    // onTap: () {Navigator.push(context,MaterialPageRoute(builder: (context)=> const Carpenters()));},
                    textColor: Colors.black,
                    iconData: Icons.car_repair,
                    text: 'Car Mechanic'),
              ),
              CustomButton(
                  borderRadius: 10,
                  buttonColor: Colors.grey,
                  //onTap: () {
                  // Navigator.push(context,MaterialPageRoute(builder: (context)=> const Carpenters()));
                  // },
                  textColor: Colors.black,
                  iconData: Icons.carpenter,
                  text: 'Carpenter'),
              CustomButton(
                  borderRadius: 10,
                  buttonColor: Colors.grey,
                  //onTap: () {},
                  textColor: Colors.black,
                  iconData: Icons.plumbing,
                  text: 'Plumber'),
              CustomButton(
                  borderRadius: 10,
                  buttonColor: Colors.grey,
                  //onTap: () {},
                  textColor: Colors.black,
                  iconData: Icons.construction,
                  text: 'Mjengo'),
              CustomButton(
                  borderRadius: 10,
                  buttonColor: Colors.grey,
                  //onTap: () {},
                  textColor: Colors.black,
                  iconData: Icons.electric_bolt,
                  text: 'Electrician'),
              CustomButton(
                  borderRadius: 10,
                  buttonColor: Colors.grey,
                  //onTap: () {},
                  textColor: Colors.black,
                  iconData: Icons.graphic_eq,
                  text: 'graphic designer'),
              CustomButton(
                  borderRadius: 10,
                  buttonColor: Colors.grey,
                  //onTap: () {},
                  textColor: Colors.black,
                  iconData: Icons.phone_android,
                  text: 'Phone Repair'),
              CustomButton(
                  borderRadius: 10,
                  buttonColor: Colors.grey,
                  // onTap: () {},
                  textColor: Colors.black,
                  iconData: Icons.computer,
                  text: 'Computer Repair'),
              CustomButton(
                  borderRadius: 10,
                  buttonColor: Colors.grey,
                  // onTap: () {},
                  textColor: Colors.black,
                  iconData: Icons.construction,
                  text: 'Mjengo'),
            ],
          ),*/

          //Column(

          //children: [
          /* GridView.count(
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
              ),*/

          // ],
          //),
        ]),
      ),
    );
  }
}
