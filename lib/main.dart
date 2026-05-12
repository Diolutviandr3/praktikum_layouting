import 'package:flutter/material.dart';
import 'package:praktikum_layouting/item_card.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Praktikum Layouting',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final List<Map<String, String>> items = [
    {'avatar': 'F', 'title': 'Flutter Layouting', 'description': 'Belajar Row, Column, Expanded'},
    {'avatar': 'S', 'title': 'Styling UI', 'description': 'Padding, margin, border radius, shadow'},
    {'avatar': 'L', 'title': 'ListView Builder', 'description': 'Menampilkan data dinamis dengan performa baik'},
    {'avatar': 'R', 'title': 'Responsif', 'description': 'Layout menyesuaikan lebar layar'},
    {'avatar': 'P', 'title': 'Performansi', 'description': 'ListView.builder untuk data besar'},
    {'avatar': 'I', 'title': 'InkWell', 'description': 'Efek ripple saat ditekan'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Daftar Item')),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          final item = items[index];
          return ItemCard(
            avatar: item['avatar']!,
            title: item['title']!,
            description: item['description']!,
          );
        },
      ),
    );
  }
}