import 'package:faker/faker.dart';
import 'package:flutter/material.dart';

class SampleDismissible extends StatelessWidget {
  SampleDismissible({super.key});
  final Faker faker = Faker();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dismissible"),
        centerTitle: true,
        leading: BackButton(),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.symmetric(vertical: 5),
        itemCount: 20,
        itemBuilder: (context, index) {
          return Dismissible(
            confirmDismiss: (direction) {
              return showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    title: const Text('Delete Data!'),
                    content: const Text('Are you sure??'),
                    actions: [
                      TextButton(
                          onPressed: () {
                            Navigator.of(context).pop(false);
                          },
                          child: const Text("No")),
                      TextButton(
                          onPressed: () {
                            Navigator.of(context).pop(true);
                          },
                          child: const Text("Yes"))
                    ],
                  );
                },
              );
            },
            background: Container(
              color: Colors.redAccent,
              child: Icon(
                Icons.delete_forever,
                size: 33,
              ),
              alignment: Alignment.centerRight,
              padding: EdgeInsets.only(right: 15),
            ),
            key: Key(index.toString()),
            child: ListTile(
              title: Text(faker.person.name()),
              subtitle: Text(faker.lorem.sentence()),
              leading: CircleAvatar(
                radius: 25,
                backgroundImage:
                    NetworkImage('https://i.pravatar.cc/150?img=$index'),
              ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
    );
  }
}
