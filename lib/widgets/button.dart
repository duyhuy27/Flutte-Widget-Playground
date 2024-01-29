import 'dart:math';

import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Button Widget Tutorial'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              style: ButtonStyle(
                //set background sau khi click cho textbutton
                overlayColor: MaterialStateProperty.all(Colors.teal),
                //set shadow ( do bong cho text button)
                elevation: MaterialStateProperty.all(20),
                // set background cho textbutton
                backgroundColor: MaterialStateProperty.all(Colors.yellow),
              ),
              onPressed: () {},
              child: const Text(
                'Button Widget Tutorial',
                style: TextStyle(color: Colors.black),
              ),
            ),
            const SizedBox(
              height: 50,
            ),

            // su dung container de dinh dang kich thuong cua button
            Container(
              width: 300,
              height: 50,
              child: ElevatedButton(
                // style rieng cho button
                style: ButtonStyle(
                    //set background
                    backgroundColor: MaterialStateProperty.all(Colors.blue),
                    //set hinh dang, co the la bo tron, ... cho button
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100),
                    ))),
                onPressed: () {
                  print('object');
                },
                // long click ( giu button 1 thoi gian !)
                onLongPress: () {
                  print('this is long click');
                },
                child: const Text(
                  "Press me",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
