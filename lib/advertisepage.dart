import 'package:flutter/material.dart';

class AdvertPage extends StatefulWidget {
  const AdvertPage({Key? key}) : super(key: key);

  @override
  State<AdvertPage> createState() => _AdvertPageState();
}

class _AdvertPageState extends State<AdvertPage> {
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
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: DropdownButtonFormField(
                    value: _selectedVal,
                    items: _categories.map((e) {
                      return DropdownMenuItem(
                        child: Text(e),
                        value: e,
                      );
                    }).toList(),
                    onChanged: (val) {
                      setState(() {
                        _selectedVal = val as String;
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
                SizedBox(height: 30,),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: TextField(


                    decoration: InputDecoration(
                        border: InputBorder.none, hintText: 'Title'),
                  ),

                ),
                SizedBox(height: 30,),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: TextField(


                    decoration: InputDecoration(
                        border: InputBorder.none, hintText: 'Region'),
                  ),
                ),
                SizedBox(height: 30,),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: TextField(


                    decoration: InputDecoration(
                        border: InputBorder.none, hintText: 'Company Name'),
                  ),
                ),
                SizedBox(height: 30,),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: TextField(


                    decoration: InputDecoration(
                        border: InputBorder.none, hintText: 'Description'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: GestureDetector(

                    child: Container(
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
