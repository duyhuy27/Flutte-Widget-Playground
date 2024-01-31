import 'package:flutter/material.dart';

class TabbarWidget extends StatefulWidget {
  const TabbarWidget({super.key});

  @override
  State<TabbarWidget> createState() => _TabbarWidgetState();
}

class _TabbarWidgetState extends State<TabbarWidget> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 10,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Tabbar Widget'),
          bottom: const TabBar(
            isScrollable: true,
            indicatorColor: Colors.white,
            indicatorWeight: 2,
            tabs: [
              Tab(
                icon: Icon(Icons.chat),
                text: 'Chat',
              ),
              Tab(
                icon: Icon(Icons.chat),
                text: 'Chat',
              ),
              Tab(
                icon: Icon(Icons.chat),
                text: 'Chat',
              ),
              Tab(
                icon: Icon(Icons.chat),
                text: 'Chat',
              ),
              Tab(
                icon: Icon(Icons.chat),
                text: 'Chat',
              ),
              Tab(
                icon: Icon(Icons.chat),
                text: 'Chat',
              ),
              Tab(
                icon: Icon(Icons.chat),
                text: 'Chat',
              ),
              Tab(
                icon: Icon(Icons.chat),
                text: 'Chat',
              ),
              Tab(
                icon: Icon(Icons.chat),
                text: 'Chat',
              ),
              Tab(
                icon: Icon(Icons.chat),
                text: 'Chat',
              ),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            Text('Abc'),
            Text('Abc'),
            Text('Abc'),
            Text('Abc'),
            Text('Abc'),
            Text('Abc'),
            Text('Abc'),
            Text('Abc'),
            Text('Abc'),
            Text('Abc'),
          ],
        ),
      ),
    );
  }
}
