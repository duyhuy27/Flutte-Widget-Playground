import 'package:flutter/material.dart';

class ListGridWidget extends StatefulWidget {
  const ListGridWidget({super.key});

  @override
  State<ListGridWidget> createState() => _ListGridWidgetState();
}

class _ListGridWidgetState extends State<ListGridWidget> {
  List fruts = ['Apple', 'Orage', 'Mango'];
  Map fruts_person = {
    'fruts': ['Apple', 'Orage', 'Mango', 'Onion'],
    'person': ['Thang', 'Huy', 'Son'],
  };
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('List and Gridview'),
          backgroundColor: Colors.amber,
          elevation: 9,
        ),
        body:
            // ListView.builder(
            //   // itemCount and itemBuilder la nhung thong so bat buoc phai co trong litview
            //   itemCount: fruts.length,
            //   // item build gom 2 param bat buoc la bien moi truong (context) va index vi tri cua phan tu trong list
            //   itemBuilder: (context, index) {
            //     return Card(
            //       color: Colors.purple,
            //       child: ListTile(
            //         // xu ly su kien khi click vao item o tren list
            //         onTap: () {
            //           //thao tac voi map trong listview -> tro toi key trong map
            //           print(fruts_person['person'][index]);
            //         },
            //         leading: Icon(Icons.person),
            //         //thao tac voi map trong listview -> tro toi key trong map
            //         title: Text(fruts_person['fruts'][index]),
            //         subtitle: Text(fruts_person['person'][index]),
            //       ),
            //     );
            //   },
            // ),
            //     GridView(
            //   // tuy chinh hien thi o gridview
            //   //crossAxisCount : so luong cot
            //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            //     crossAxisCount: 3,
            //     crossAxisSpacing: 30, // khoang cach giua cac cot
            //     mainAxisSpacing: 20, // khoang cac giua cac hang
            //     childAspectRatio: 2 / 3, // can chinh chieu rong / chieu cao ( 2 : 3)
            //   ),
            //   children: [
            //     Card(
            //       child: ListTile(
            //         title: Text(
            //           'Chuc nang so 1',
            //           style: TextStyle(color: Colors.white),
            //         ),
            //       ),
            //     ),
            //     Card(
            //       child: ListTile(
            //         title: Text(
            //           'Chuc nang so 1',
            //           style: TextStyle(color: Colors.white),
            //         ),
            //       ),
            //     ),
            //     Card(
            //       child: ListTile(
            //         title: Text(
            //           'Chuc nang so 1',
            //           style: TextStyle(color: Colors.white),
            //         ),
            //       ),
            //     ),
            //     Card(
            //       child: ListTile(
            //         title: Text(
            //           'Chuc nang so 1',
            //           style: TextStyle(color: Colors.white),
            //         ),
            //       ),
            //     ),
            //   ],
            // ),
            // tuong tu nhu ListView.builder
            // gridview luu y custom layout o gridDelegate
            GridView.builder(
                itemCount: fruts.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4),
                itemBuilder: (context, index) {
                  return Card(
                    child: ListTile(
                      title: Text(fruts[index]),
                    ),
                  );
                }));
  }
}
