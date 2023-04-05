import 'package:flutter/material.dart';

class MappingList extends StatelessWidget {
  MappingList({super.key});

  final List<Map<String, dynamic>> listMap = [
    {
      "name": "Jhon",
      "umur": 20,
      "favColor": ['red', 'green'],
    },
    {
      "name": "Jane",
      "umur": 23,
      "favColor": ['amber', 'green'],
    },
    {
      "name": "Bambang",
      "umur": 32,
      "favColor": ['red', 'blue', 'grey'],
    },
    {
      "name": "Basrul",
      "umur": 22,
      "favColor": ['black', 'yellow', 'green', 'black', 'yellow', 'green'],
    },
    {
      "name": "Peter",
      "umur": 30,
      "favColor": ['red', 'black', 'green'],
    },
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mapping',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text('Mapping List'),
          centerTitle: true,
        ),
        body: ListView(
          children: listMap.map((data) {
            List _mapFavColor = data['favColor'];
            return Padding(
              padding: const EdgeInsets.all(10),
              child: Card(
                elevation: 1,
                borderOnForeground: false,
                color: Colors.white38,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Profile
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Row(
                          children: [
                            CircleAvatar(
                              radius: 30,
                              backgroundImage: NetworkImage(
                                  'https://i.pravatar.cc/300?img=$data'),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Name : ${data['name']}'),
                                  Text('Age : ${data['umur']}'),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: _mapFavColor.map((color) {
                            return Container(
                              padding: EdgeInsets.all(10),
                              margin: EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 10),
                              color: Colors.yellow,
                              child: Text(color),
                            );
                          }).toList(),
                        ),
                      )
                    ]),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
