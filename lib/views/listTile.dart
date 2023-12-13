// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:lava/views/constantsClolor.dart';

class ListTileWidget extends StatelessWidget {
  ListTileWidget({
    super.key,
    required this.ListTileName,
    required this.leadingIcon,
    required this.borderRadius,
    required this.onTap,
  });

  final String ListTileName;
  final Icon leadingIcon;
  final BorderRadius borderRadius;
  final Function() onTap;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      shape: RoundedRectangleBorder(
        borderRadius: borderRadius,
        side: BorderSide(color: GreyColor.withOpacity(0.3), width: 1),
      ),
      // selectedTileColor: Colors.orange[100],
      title: Text(ListTileName),
      selectedColor: GreyColor,
      selected: true,
      leading: leadingIcon,
      onTap: onTap,
    );
  }
}
