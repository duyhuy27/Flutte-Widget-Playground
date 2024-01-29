import 'package:flutter/material.dart';

class DismissiableWidget extends StatefulWidget {
  const DismissiableWidget({super.key});

  @override
  State<DismissiableWidget> createState() => _DismissiableWidgetState();
}

class _DismissiableWidgetState extends State<DismissiableWidget> {
  List<String> persons = ['Huy', 'Thang', ' Son', 'Thang'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dismissiable Example'),
      ),
      body: ListView.builder(
          itemCount: persons.length,
          itemBuilder: (context, index) {
            final person = persons[index];

            return Dismissible(
                onDismissed: (direction) {
                  // xu ly su kien khi nguoi dung vuot sang trai hoac vuot sang phai
                  if (direction == DismissDirection.startToEnd) {
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                      content: Text('Delete'),
                      backgroundColor: Colors.red,
                    ));
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                      content: Text('Archive'),
                      backgroundColor: Colors.green,
                    ));
                  }
                },
                // key de xac dinh gia tri duy nhat cua 1 Dismissable, thường truyền vào là vị trí của phần tử trong mảng
                key: Key(person),
                // đây là 1 widget định nghĩa giao diện khi người dùng vuốt từ trái sáng phải
                background: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 10,
                      ),
                      Icon(Icons.delete),
                    ],
                  ),
                  color: Colors.red,
                ),
                // đây là 1 widget định nghĩa giao diện khi người dùng vuốt từ phải sang trái
                secondaryBackground: Container(
                  child: Icon(Icons.archive),
                  color: Colors.green,
                ),
                child: Card(
                  child: ListTile(
                    title: Text(persons[index]),
                  ),
                ));
          }),
    );
  }
}
