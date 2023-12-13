import 'package:flutter/material.dart';
import 'package:lava/views/constantsClolor.dart';

class CardPage extends StatelessWidget {
  const CardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: WhiteColor,
        title: Text('Card'),
      ),
    );
  }
}
