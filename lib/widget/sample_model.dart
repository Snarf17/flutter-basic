import 'dart:math';

import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:learn_flutter/model/product.dart';

class SampleModel extends StatelessWidget {
  SampleModel({super.key});
  Faker faker = Faker();

  @override
  Widget build(BuildContext context) {
    List<Product> dummyData = List.generate(100, (index) {
      return Product(
          faker.food.restaurant(),
          'https://picsum.photos/id/$index/200',
          1000 + Random().nextInt(30000),
          faker.lorem.sentence());
    });
    return Scaffold(
      appBar: AppBar(
        title: const Text('Model'),
        centerTitle: true,
      ),
      body: GridView.builder(
        padding: EdgeInsets.all(10),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 30,
            crossAxisSpacing: 40,
            childAspectRatio: 5 / 7),
        itemBuilder: (context, index) {
          return GridTile(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.network(dummyData[index].ImgURL),
                Text(dummyData[index].Judul),
                Text('Harga : Rp.${dummyData[index].harga.toString()}'),
                Text(dummyData[index].Deskripsi[10])
              ],
            ),
          );
        },
        itemCount: 20,
      ),
    );
  }
}
