import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hella/profile_page.dart';
class Carpenters extends StatefulWidget {
  const Carpenters({Key? key}) : super(key: key);

  @override
  State<Carpenters> createState() => _CarpentersState();
}

class _CarpentersState extends State<Carpenters> {
  final CollectionReference _carpenters =
  FirebaseFirestore.instance.collection('carpenters');
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: StreamBuilder(
          stream: _carpenters.snapshots(),
          builder:
              (context, AsyncSnapshot<QuerySnapshot> streamSnapshot) {
            if (streamSnapshot.hasData) {
              return ListView.builder(
                itemCount: streamSnapshot.data!.docs.length,
                itemBuilder: (context, index) {
                  final DocumentSnapshot documentSnapshot =
                  streamSnapshot.data!.docs[index];
                  return GestureDetector(
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ProfileScreen()),
                      );
                    },
                    child: Card(
                      elevation: 10,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CircleAvatar(
                              backgroundImage: NetworkImage(
                                  'https://via.placeholder.com/150'),
                              radius: 50,
                            ),
                            SizedBox(
                              width: 16,
                            ),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Column(


                                    crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Text(documentSnapshot['first name' ],style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                                          SizedBox(width: 09,),
                                          Text(documentSnapshot['last name' ],style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold)),
                                        ],

                                      ),
                                      SizedBox(
                                        height: 8,
                                      ),
                                      Text(documentSnapshot['phone number']
                                          .toString(),style: TextStyle(fontSize: 20),),
                                      SizedBox(height: 8,),
                                      Text(documentSnapshot['location'])
                                    ]),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              );
            }
            return const Center(
              child: CupertinoActivityIndicator(),
            );
          }) ,
    );
  }
}
