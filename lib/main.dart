import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.green,
            title: const Text('whatsapp'),
            bottom: const TabBar(
              tabs: [
                Tab(
                  child: Icon(Icons.camera_alt),
                ),
                Tab(
                  child: Text('Chats'),
                ),
                Tab(
                  child: Text('Status'),
                ),
                Tab(
                  child: Text('Call'),
                ),
              ],
            ),
            actions: [
              const Icon(Icons.search),
              const SizedBox(
                width: 10,
              ),
              PopupMenuButton(
                icon: const Icon(Icons.more_vert_outlined),
                itemBuilder: (context) => const [
                  PopupMenuItem(
                    value: '1',
                    child: Text('New Group'),
                  ),
                  PopupMenuItem(
                    value: '1',
                    child: Text('Setting'),
                  ),
                  PopupMenuItem(
                    value: '1',
                    child: Text('Logout'),
                  ),
                ],
              ),
              const SizedBox(
                width: 10,
              )
            ],
          ),
          body: TabBarView(
            children: [
              Text('Camera'),
              ListView.builder(
                itemCount: 5,
                itemBuilder: (context, index) {
                  return const ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://images.pexels.com/photos/5463103/pexels-photo-5463103.jpeg?auto=compress&cs=tinysrgb&w=600'),
                    ),
                    title: Text('saroj'),
                    subtitle: Text('hello'),
                    trailing: Text('2:30 PM'),
                  );
                },
              ),
              ListView.builder(
                itemCount: 5,
                itemBuilder: (context, index) {
                  return const ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://images.pexels.com/photos/5463103/pexels-photo-5463103.jpeg?auto=compress&cs=tinysrgb&w=600'),
                    ),
                    title: Text('saroj'),
                    subtitle: Text('hello'),
                    trailing: Text('2:30 PM'),
                  );
                },
              ),
              ListView.builder(
                itemCount: 5,
                itemBuilder: (context, index) {
                  return const ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://images.pexels.com/photos/5463103/pexels-photo-5463103.jpeg?auto=compress&cs=tinysrgb&w=600'),
                    ),
                    title: Text('saroj'),
                    subtitle: Text('you missed call'),
                    trailing: Icon(Icons.phone),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
