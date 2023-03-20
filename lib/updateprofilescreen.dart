import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hella/profile_page.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

class UpdateProfileScreen extends StatelessWidget {
  UpdateProfileScreen({super.key});
  final CollectionReference _profilepage =
      FirebaseFirestore.instance.collection('profilepage');
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _occupationController = TextEditingController();
  final TextEditingController _locationController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();
  Future<void> _update([DocumentSnapshot? documentSnapshot]) async {
    if (documentSnapshot != null) {
      _descriptionController.text = documentSnapshot['description'];
      _phoneController.text = documentSnapshot['phone number'].toString();
      _occupationController.text = documentSnapshot['occupation'];
      _locationController.text = documentSnapshot['location'];
      _nameController.text = documentSnapshot['name'];
    }
  }
  void clearDetails(){
    _locationController.clear();
    _descriptionController.clear();
    _nameController.clear();
    _occupationController.clear();
    _phoneController.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ProfileScreen()),
              );
            },
            icon: const Icon(LineAwesomeIcons.angle_left),
          ),
          title: Text(
            ' Edit Profile',
          ),
        ),
        body: StreamBuilder(
            stream: _profilepage.snapshots(),
            builder: (context, AsyncSnapshot<QuerySnapshot> streamSnapshot) {
              if (streamSnapshot.hasData) {
                return ListView.builder(
                    itemCount: streamSnapshot.data!.docs.length,
                    itemBuilder: (context, index) {
                      final DocumentSnapshot documentsnapshot =
                          streamSnapshot.data!.docs[index];
                      return Container(
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
                                      child: Image(
                                          image: AssetImage(
                                              'lib/asseT/carpenter.png'))),
                                ),
                                Positioned(
                                  bottom: 0,
                                  right: 0,
                                  child: Container(
                                    width: 35,
                                    height: 35,
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(100),
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
                              documentsnapshot['name'],
                            ),
                            Text('Warhammer@gmail.com'),
                            SizedBox(
                              height: 20,
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            Divider(),
                            Form(
                                child: Column(
                              children: [
                                TextFormField(
                                  controller: _nameController,
                                  autocorrect: true,
                                  decoration: InputDecoration(
                                      label: Text('Full Name'),
                                      prefixIcon:
                                          Icon(Icons.person_outline_rounded)),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                TextFormField(
                                  controller: _phoneController,
                                  autocorrect: true,
                                  decoration: InputDecoration(
                                      label: Text('Phone Number'),
                                      prefixIcon: Icon(Icons.phone_android)),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                TextFormField(
                                  controller: _locationController,
                                  autocorrect: true,
                                  decoration: InputDecoration(
                                      label: Text('Location'),
                                      prefixIcon: Icon(Icons.location_pin)),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                TextFormField(
                                  controller: _descriptionController,
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
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 25.0),
                                  child: GestureDetector(
                                    onTap: () async {
                                      final String name = _nameController.text;
                                      final String phone =
                                          _phoneController.text;
                                      final String location =
                                          _locationController.text;
                                      final String occupation =
                                          _occupationController.text;
                                      final String description =
                                          _descriptionController.text;
                                      {
                                        await _profilepage
                                            .doc(documentsnapshot!.id)
                                            .update({
                                          'name': name,
                                          'phone number': phone,
                                          'occupation': occupation,
                                          'description': description,
                                          'location': location
                                        });
                                      }
                                    },
                                    child: Container(
                                      padding: EdgeInsets.all(20),
                                      decoration: BoxDecoration(
                                          color: Colors.deepPurple,
                                          borderRadius:
                                              BorderRadius.circular(12)),
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
                      );
                    });
              }
              return Center(
                child: CupertinoActivityIndicator(),
              );
            }));
  }
}
