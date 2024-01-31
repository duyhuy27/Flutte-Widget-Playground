import 'package:flutter/material.dart';

Widget RowIcon(String text, IconData icon) {
  return Row(
    children: [Text(text), const  SizedBox(width: 5), Icon(icon)],
  );
}
