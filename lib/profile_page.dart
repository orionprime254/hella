import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hella/updateprofilescreen.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

class ProfileScreen extends StatelessWidget {
  ProfileScreen({super.key});

  final CollectionReference _profilepage =
      FirebaseFirestore.instance.collection('profilepage');

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
            'Profile',
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
                          SizedBox(
                            width: 120,
                            height: 120,
                            child: ClipRRect(
                                borderRadius: BorderRadius.circular(100),
                                child: Image(
                                    image:
                                        AssetImage('lib/asseT/carpenter.png'))),
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
                              width: 200,
                              child: ElevatedButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                UpdateProfileScreen()));
                                  },
                                  child: Text('Edit Profile'))),
                          SizedBox(
                            height: 30,
                          ),
                          Divider(),
                          Text(documentsnapshot['location']),

                          Text(documentsnapshot['occupation']),
                          Text(documentsnapshot['description']),
                          Text(''),
                        ],

                      ),

                    );
                  },
                );
              }
              return Center(
                child: CupertinoActivityIndicator(),
              );},
            )
    );
  }
}
