import 'package:flutter/material.dart';

Widget RowStatus(String text1, text2) {
  return Column(
    children: [
      Text(
        text1,
        style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
      ),
      Text(
        text2,
        style: TextStyle(fontSize: 18, fontWeight: FontWeight.normal),
      ),
    ],
  );
}

Widget ButtonProfile(String text) {
  return ElevatedButton(
    onPressed: () {},
    style: ButtonStyle(
      backgroundColor: MaterialStateProperty.all(Colors.grey.shade300),
    ),
    child:  Text(
      text,
      style: const TextStyle(color: Colors.black),
    ),
  );
}
