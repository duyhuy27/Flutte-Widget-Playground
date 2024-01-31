import 'package:flutter/material.dart';

class CardFrends extends StatelessWidget {
  const CardFrends({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: 200,
      child: Card(
        color: Colors.white,
        elevation: 1,
        child: Stack(
          children: [
            Positioned(
              right: 10,
              top: 10,
              child: Icon(
                Icons.close,
                color: Colors.grey,
              ),
            ),
            Container(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 50,
                      backgroundImage: NetworkImage(
                          'https://scontent.fhan14-3.fna.fbcdn.net/v/t39.30808-6/417781839_344460121869446_1233461574458003244_n.jpg?_nc_cat=103&ccb=1-7&_nc_sid=efb6e6&_nc_eui2=AeGE6-sh8w8STx2GpeThbzPTbcJiDOqLi7VtwmIM6ouLtb5mwnWITJbtAAkDzkczOmFvaU8KwpXYeE6vR8JETK2i&_nc_ohc=rAoSyyGiCxYAX8aqukA&_nc_ht=scontent.fhan14-3.fna&oh=00_AfD16tK14V2lU6RlE8k6eyAkGrGA-DV0RyW0inVY4TKkag&oe=65BDF734'),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Nguyen Duy Huy',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                    Text(
                      'Folowed you',
                      style: TextStyle(color: Colors.grey, fontSize: 14),
                    ),
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                margin: EdgeInsets.only(bottom: 10),
                width: 160,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'Follow',
                    style: TextStyle(color: Colors.white),
                  ),
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.blue)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
