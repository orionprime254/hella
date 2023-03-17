import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final CollectionReference _profilepage = FirebaseFirestore.instance.collection('profilepage');
  final TextEditingController _fullnameController = TextEditingController();
  final TextEditingController _locationController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();
  final TextEditingController _phonenumberController = TextEditingController();
  Future <void> _update([DocumentSnapshot? documentSnapshot]) async {
    if (documentSnapshot != null){
      _fullnameController.text = documentSnapshot['full names'];
      _locationController.text = documentSnapshot['location'];
      _descriptionController.text = documentSnapshot['description'];
      _phonenumberController.text = documentSnapshot['phone number'];

    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: StreamBuilder(
        stream: _profilepage.snapshots(),

        builder: (context, AsyncSnapshot<QuerySnapshot> streamSnapshot) {
          if (streamSnapshot.hasData) {
            return ListView.builder(
              itemCount: streamSnapshot.data!.docs.length,
              itemBuilder: (context,index) {
                final DocumentSnapshot documentSnapshot = streamSnapshot.data!
                    .docs[index];

                return Center(
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 30,
                        ),
                        Container(
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image: AssetImage('lib/icons/user.png'),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(

                          documentSnapshot['full names'],
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        SizedBox(height: 20),
                        Text(
                          documentSnapshot['phone number'].toString(),
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize:15,
                          ),
                        ),
                        SizedBox(height: 20),
                        Text(
                          documentSnapshot['occupation'],
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 15,
                          ),
                        ),
                        SizedBox(height: 20),
                        Text(
                          documentSnapshot['location'],
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 15,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 25.0),
                          child: GestureDetector(
                            onTap: ()async {
                              final String fullname = _fullnameController.text;
                              final String location = _locationController.text;
                              final String description = _descriptionController.text;

                              if (fullname != null){
                                await _profilepage.doc(documentSnapshot!.id).update({
                                "full names": fullname,"location": location,"description": description
                              });
                                _descriptionController.text = '';
                                _locationController.text = "";
                                _fullnameController.text = "";
                              }
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
                        // Add more UI elements here


                      ],
                    ),

                  ),

                );

              }, );
          }
          return const Center(
            child: CupertinoActivityIndicator(),
          );
        }
      ),

    );
  }
}
