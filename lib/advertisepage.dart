

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class AdvertPage extends StatefulWidget {
  const AdvertPage({Key? key}) : super(key: key);

  @override
  State<AdvertPage> createState() => _AdvertPageState();
}

class _AdvertPageState extends State<AdvertPage> {
  final CollectionReference _profilepage =
  FirebaseFirestore.instance.collection('profilepage');
  _AdvertPageState() {
    _selectedVal = _categories[0];
  }

  final _categories = [
    "Carpenter",
    "Car Mechanic",
    "Plumber",
    "Mjengo",
    "Electrician",
    "Graphic Designer",
    "Phone Repair",
    "Computer Repair",
    "Gardener"
  ];
  String? _selectedVal = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(

          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: DropdownButtonFormField(
                    value: _selectedVal,
                    items: _categories.map((option) {
                      return DropdownMenuItem(
                        child: Center(child: Text(option)),
                        value: option,
                      );
                    }).toList(),
                    onChanged: (newValue) {
                      setState(() {
                        _selectedVal = newValue as String;
                      });
                    },
                    icon: const Icon(
                      Icons.arrow_drop_down_circle_outlined,
                      color: Colors.deepPurple,
                    ),
                    borderRadius: BorderRadius.circular(12),
                    dropdownColor: Colors.white,
                    decoration: InputDecoration(
                      labelText: 'Categories',
                    ),
                  ),
                ),

                SizedBox(
                  height: 30,
                ),
                //add images


                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Container(
                    child: TextField(
                      decoration: InputDecoration(
                          border: InputBorder.none, hintText: 'Location'),
                    ),
                  ),
                ),


                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.all( 20.0),
                  child: Container(
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Colors.deepPurple[100],
                    ),
                    height: 150,
                    child: TextField(
                      maxLength: 150,
                      maxLines: 80,
                      decoration: InputDecoration(
                          border: InputBorder.none, hintText: 'Description'),
                    ),
                  ),
                ),
                SizedBox(height: 100,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: GestureDetector(
                    onTap: ()async{
                      await _profilepage.doc('occupation').update({'occupation': _selectedVal});
                    },
                    child: Container(
                      width: 200,
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                          color: Colors.deepPurple,
                          borderRadius: BorderRadius.circular(12)),
                      child: Center(
                        child: Text(
                          'Post',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),

    );
    DropdownMenuItem<String> buildMenuItem(String item) => DropdownMenuItem(
          value: item,
          child: Text(
            item,
          ),
        );
  }
}
