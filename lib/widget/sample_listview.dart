import 'package:flutter/material.dart';

class SampleListview extends StatelessWidget {
  SampleListview({super.key});

  final codeColor = [900, 800, 700, 600, 500, 400, 300, 200, 100];
  final List data = [
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Listview'),
          backgroundColor: Colors.deepOrangeAccent,
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
                backgroundImage: NetworkImage(data[index]['imgUrl']),
              ),
              title: Text(data[index]['name']),
              subtitle: Text(data[index]['addres']),
              trailing: Icon(
                Icons.more_vert_outlined,
              ),
              tileColor: Colors.white70,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                  side: BorderSide(color: Colors.black26)),
            );
          },
          itemCount: data.length,
          separatorBuilder: (context, index) {
            return Divider(
              height: 5,
              thickness: 1,
              color: Colors.black12,
              indent: 85,
              endIndent: 10,
            );
          },
        ));
  }
}
