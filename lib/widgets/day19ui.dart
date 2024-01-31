import 'package:basic_widget_30_1/components/row_icon.dart';
import 'package:flutter/material.dart';

class Day19UI extends StatefulWidget {
  const Day19UI({super.key});

  @override
  State<Day19UI> createState() => _Day19UIState();
}

class _Day19UIState extends State<Day19UI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Positioned(
                    child: SizedBox(
                        height: 500,
                        child: Stack(
                          children: [
                            Positioned(
                              child: Container(
                                height: 450,
                                decoration: const BoxDecoration(
                                  image: DecorationImage(
                                      image: NetworkImage(
                                        'https://images.pexels.com/photos/1036148/pexels-photo-1036148.jpeg?cs=srgb&dl=pexels-noel-mcshane-1036148.jpg&fm=jpg',
                                      ),
                                      fit: BoxFit.cover),
                                ),
                              ),
                            ),
                            const Positioned(
                              right: 30,
                              top: 60,
                              child: Icon(
                                Icons.favorite_border_outlined,
                                color: Colors.white,
                                size: 30,
                              ),
                            ),
                            const Positioned(
                              left: 30,
                              top: 60,
                              child: Icon(
                                Icons.arrow_back,
                                color: Colors.white,
                                size: 30,
                              ),
                            ),
                            const Positioned(
                              bottom: 0,
                              right: 20,
                              child: CircleAvatar(
                                radius: 50,
                                backgroundImage: NetworkImage(
                                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT_DsloK474CAv8XEwoVikZj-u_EV9jtHKoQA&usqp=CAU'),
                              ),
                            ),
                          ],
                        )))
              ],
            ),
            Container(
              padding: const EdgeInsets.only(left: 12, right: 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Madrid city tour for desginer',
                    style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Text(
                    'Made glorious summer by this sun of York; ',
                    style: TextStyle(color: Colors.grey.shade800),
                  )
                ],
              ),
            ),
            const SizedBox(height: 16),
            SizedBox(
              height: 50,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  RowIcon('20', Icons.favorite),
                  RowIcon('35', Icons.upload),
                  RowIcon('82', Icons.message),
                  RowIcon('295', Icons.emoji_emotions),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 12, right: 12, top: 12),
              child: const Text(
                "In the first place we have granted to God, and by this our present charter confirmed for us and our heirs forever that the English Church shall be free, and shall have her rights entire, and her liberties inviolate; and we will that it be thus observed; which is apparent from this that the freedom of elections, which is reckoned most important and very essential to the English Church, we, of our pure and unconstrained will, did grant, and did by our charter confirm and did obtain the ratification of the same from our lord, Pope Innocent III, before the quarrel arose between us and our barons: and this we will observe, and our will is that it be observed in good faith by our heirs forever. We have also granted to all freemen of our kingdom, for us and our heirs forever, all the underwritten liberties, to be had and held by them and their heirs, of us and our heirs forever.",
                style: TextStyle(fontSize: 14),
              ),
            )
          ],
        ),
      ),
    );
  }
}
