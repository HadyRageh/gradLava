// ignore_for_file: avoid_init_to_null, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:lava/views/constantsClolor.dart';

class AppBarWidget extends StatelessWidget {
  AppBarWidget({super.key});
  var selectedItem = null;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          // constraints: const BoxConstraints(
          //   maxWidth: 200,
          // ),
          width: 100,
          child: DropdownSearch<String>(
            popupProps: PopupProps.modalBottomSheet(
              showSelectedItems: true,

              //disabledItemFn: (String s) => s.startsWith('I'),
              showSearchBox: true,
            ),
            items: [
              "Cairo",
              "Alexandra ",
              "Gizeh ",
              'Shubra El-Kheima',
              'Port Said',
              'Suez',
              'Luxor',
              'al-Mansura	',
              'El-Mahalla El-Kubra',
              'Tanta',
              '	Asyut',
              'Ismailia',
              'Kafr el-Sheikh',
              'Kafr el-Dawwar'
            ],
            dropdownDecoratorProps: DropDownDecoratorProps(
              dropdownSearchDecoration: InputDecoration(
                border: InputBorder.none,
                hintText: "Select Area",
              ),
            ),
            onChanged: (value) {
              print(value);
            },
            selectedItem: selectedItem,
          ),
        )
      ],
    );
  }
}
