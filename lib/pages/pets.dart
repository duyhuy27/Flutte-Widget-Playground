import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class PetsPage extends StatefulWidget {
  const PetsPage({super.key});

  @override
  State<PetsPage> createState() => _PetsPageState();
}

class _PetsPageState extends State<PetsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List Pes'),
      ),
      body: Container(
        child: StreamBuilder<QuerySnapshot>(
            stream: FirebaseFirestore.instance.collection('pets').snapshots(),
            builder: (context, snapPets) {
              if (snapPets.connectionState == ConnectionState.waiting) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              } else {
                final petDocs = snapPets.data!.docs;
                return ListView.builder(
                    itemCount: petDocs.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        title: Text(petDocs[index]['name']),
                        subtitle: Text(petDocs[index]['gender']),
                      );
                    });
              }
            }),
      ),
    );
  }
}
