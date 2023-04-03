import 'package:flutter/material.dart';

class SampleListview extends StatefulWidget {
  SampleListview({super.key});

  @override
  State<SampleListview> createState() => _SampleListviewState();
}

class _SampleListviewState extends State<SampleListview> {
  final codeColor = [900, 800, 700, 600, 500, 400, 300, 200, 100];

  List data = [
    {
      'imgUrl': 'https://i.pravatar.cc/500?img=1',
      'name': 'Jhon Doe',
      'addres': 'jalan mawar'
    },
    {
      'imgUrl': 'https://i.pravatar.cc/500?img=2',
      'name': 'Jane Doe',
      'addres': 'jalan melati'
    },
    {
      'imgUrl': 'https://i.pravatar.cc/500?img=3',
      'name': 'Bambang',
      'addres': 'jalan Jatinegara'
    },
    {
      'imgUrl': 'https://i.pravatar.cc/500?img=4',
      'name': 'Bambang',
      'addres': 'jalan Jatinegara'
    },
    {
      'imgUrl': 'https://i.pravatar.cc/500?img=5',
      'name': 'Bambang',
      'addres': 'jalan Jatinegara'
    },
    {
      'imgUrl': 'https://i.pravatar.cc/500?img=6',
      'name': 'Bambang',
      'addres': 'jalan Jatinegara'
    },
    {
      'imgUrl': 'https://i.pravatar.cc/500?img=7',
      'name': 'Bambang',
      'addres': 'jalan Jatinegara'
    },
    {
      'imgUrl': 'https://i.pravatar.cc/500?img=8',
      'name': 'Bambang',
      'addres': 'jalan Jatinegara'
    },
    {
      'imgUrl': 'https://i.pravatar.cc/500?img=9',
      'name': 'Bambang',
      'addres': 'jalan Jatinegara'
    },
    {
      'imgUrl': 'https://i.pravatar.cc/500?img=10',
      'name': 'Bambang',
      'addres': 'jalan Jatinegara'
    },
    {
      'imgUrl': 'https://i.pravatar.cc/500?img=11',
      'name': 'Bambang',
      'addres': 'jalan Jatinegara'
    },
    {
      'imgUrl': 'https://i.pravatar.cc/500?img=12',
      'name': 'Bambang',
      'addres': 'jalan Jatinegara'
    },
    {
      'imgUrl': 'https://i.pravatar.cc/500?img=13',
      'name': 'Bambang',
      'addres': 'jalan Jatinegara'
    },
  ];

  int _selectedIndex = 0;

  void _onTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  List<Widget> pages = [
    Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        backgroundColor: Colors.green,
        leading: Icon(Icons.camera_alt_outlined),
        actions: [
          Container(
            margin: EdgeInsets.fromLTRB(0, 0, 10, 0),
            child: Icon(
              Icons.message_outlined,
              size: 26,
            ),
          )
        ],
        centerTitle: true,
      ),
      body: ListView.separated(
        padding: EdgeInsets.fromLTRB(5, 10, 5, 0),
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              radius: 30,
              backgroundImage: NetworkImage('https://i.pravatar.cc/500'),
            ),
            title: Text('name'),
            subtitle: Text('addres'),
            trailing: Icon(
              Icons.more_vert_outlined,
            ),
            tileColor: Colors.white70,
          );
        },
        itemCount: 15,
        separatorBuilder: (context, index) {
          return Divider(
            height: 5,
            thickness: 1,
            color: Colors.black12,
            indent: 85,
            endIndent: 10,
          );
        },
      ),
    ),
    Scaffold(
      appBar: AppBar(
        title: const Text('Favorite'),
        backgroundColor: Colors.green,
        leading: Icon(Icons.camera_alt_outlined),
        actions: [
          Container(
            margin: EdgeInsets.fromLTRB(0, 0, 10, 0),
            child: Icon(
              Icons.message_outlined,
              size: 26,
            ),
          )
        ],
        centerTitle: true,
      ),
    ),
    Scaffold(
      appBar: AppBar(
        title: const Text('Search'),
        backgroundColor: Colors.green,
        leading: Icon(Icons.camera_alt_outlined),
        actions: [
          Container(
            margin: EdgeInsets.fromLTRB(0, 0, 10, 0),
            child: Icon(
              Icons.message_outlined,
              size: 26,
            ),
          )
        ],
        centerTitle: true,
      ),
    ),
    Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
        backgroundColor: Colors.green,
        leading: Icon(Icons.camera_alt_outlined),
        actions: [
          Container(
            margin: EdgeInsets.fromLTRB(0, 0, 10, 0),
            child: Icon(
              Icons.message_outlined,
              size: 26,
            ),
          )
        ],
        centerTitle: true,
      ),
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text('Bottom Bar'),
      //   backgroundColor: Colors.deepOrangeAccent,
      //   leading: Icon(Icons.camera_alt_outlined),
      //   actions: [
      //     Container(
      //       margin: EdgeInsets.fromLTRB(0, 0, 10, 0),
      //       child: Icon(
      //         Icons.message_outlined,
      //         size: 26,
      //       ),
      //     )
      //   ],
      //   centerTitle: true,
      // ),
      body: pages[_selectedIndex],

      // Bottom Bar
      bottomNavigationBar: BottomNavigationBar(
          selectedIconTheme: IconThemeData(size: 30),
          type: BottomNavigationBarType.fixed,
          showUnselectedLabels: false,
          currentIndex: _selectedIndex,
          onTap: _onTap,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
              label: 'Beranda',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.favorite_border_outlined,
                color: Color.fromARGB(186, 233, 82, 132),
              ),
              label: 'Favorite',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'Settings',
            ),
          ]),
    );
  }
}
