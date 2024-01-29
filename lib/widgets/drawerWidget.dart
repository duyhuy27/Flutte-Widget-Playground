import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class DrawerWidget extends StatefulWidget {
  const DrawerWidget({super.key});

  @override
  State<DrawerWidget> createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
  @override
  Widget build(BuildContext context) {
    double statusBarHeight = MediaQuery.of(context).padding.top;

    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light.copyWith(
      statusBarColor: Colors.blue, // Chọn màu phù hợp
    ));

    return Scaffold(
      drawer: Drawer(
        child: Container(
          color: Colors.white,
          child: ListView(
            children: [
              Container(
                height:
                    statusBarHeight, // Sử dụng chiều cao của thanh trạng thái làm padding
                color: Colors.blue,
              ),
              DrawerHeader(
                padding: EdgeInsets.zero,
                child: Container(
                  padding: EdgeInsets.all(12),
                  color: Colors.blue,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        radius: 40,
                        backgroundImage: NetworkImage(
                            'https://static.wikia.nocookie.net/avatar/images/5/52/P%27Li.png/revision/latest?cb=20140825101857'),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Nguyen Duy Huy',
                            style: TextStyle(fontSize: 15),
                          ),
                          Text(
                            'huyndph30375@fpt.edu.vn',
                            style: TextStyle(fontSize: 12),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              ListTile(
                onTap: () {
                  print('Home');
                },
                leading: Icon(Icons.home),
                title: Text('Home'),
                trailing: Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Text(
                    '12',
                    style: TextStyle(color: Colors.white),
                  ),
                ), // Thêm text ở bên phải cuối
              ),
              ListTile(
                onTap: () {
                  print('Home');
                },
                leading: Icon(Icons.home),
                title: Text('Home'),
              ),
              ListTile(
                onTap: () {
                  print('Home');
                },
                leading: Icon(Icons.home),
                title: Text('Home'),
              ),
              ListTile(
                onTap: () {
                  print('Home');
                },
                leading: Icon(Icons.home),
                title: Text('Home'),
              ),
              ListTile(
                onTap: () {
                  print('Home');
                },
                leading: Icon(Icons.home),
                title: Text('Home'),
              ),
              Divider(),
              ListTile(
                onTap: () {
                  print('Home');
                },
                leading: Icon(Icons.home),
                title: Text('Home'),
              ),
              ListTile(
                onTap: () {
                  print('Home');
                },
                leading: Icon(Icons.home),
                title: Text('Home'),
              ),
              ListTile(
                onTap: () {
                  print('Home');
                },
                leading: Icon(Icons.home),
                title: Text('Home'),
              ),
            ],
          ),
        ),
      ),
      appBar: AppBar(
        title: Text('Drawer Example'),
      ),
    );
  }
}
