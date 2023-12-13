import 'package:flutter/material.dart';
import 'package:lava/views/constantsClolor.dart';

class StorePage extends StatelessWidget {
  const StorePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: WhiteColor,
        title: Text('Store'),
      ),
    );
  }
}
