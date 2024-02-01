import 'package:basic_widget_30_1/functions/database_crud.dart';
import 'package:basic_widget_30_1/pages/pets.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class DatabaseOptions extends StatefulWidget {
  const DatabaseOptions({super.key});

  @override
  State<DatabaseOptions> createState() => _DatabaseOptionsState();
}

class _DatabaseOptionsState extends State<DatabaseOptions> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Database CRUD Firebase'),
        leading: IconButton(
            onPressed: () async {
              await FirebaseAuth.instance.signOut();
            },
            icon: Icon(Icons.logo_dev)),
      ),
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {
                    create('pets', 'dog', 'july', 'female', 18);
                  },
                  child: Text('Create')),
              ElevatedButton(
                  onPressed: () {
                    update('pets', 'dog', 'name', 'age', 'huy', 20);
                  },
                  child: Text('Update')),
              ElevatedButton(
                  onPressed: () {
                    delete('pets', 'dog');
                  },
                  child: Text('Delete')),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => PetsPage()));
                  },
                  child: Text('Read')),
            ],
          ),
        ),
      ),
    );
  }
}
