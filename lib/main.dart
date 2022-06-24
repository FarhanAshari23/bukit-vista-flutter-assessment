import 'package:bukit_vista/Pages/list_guest.dart';
import 'package:flutter/material.dart';

import 'Pages/list_guest.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ListGuest(),
    );
  }
}
