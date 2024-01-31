import 'package:flutter/material.dart';
import 'package:basic_widget_30_1/components/card_friend.dart';
import 'package:basic_widget_30_1/components/row_status.dart';

class Day20UI extends StatefulWidget {
  const Day20UI({Key? key}) : super(key: key);

  @override
  _Day20UIState createState() => _Day20UIState();
}

class _Day20UIState extends State<Day20UI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: Row(
          children: [
            const Text('2z.tzy'),
            const SizedBox(width: 5),
            const Icon(Icons.arrow_downward_outlined),
            const SizedBox(width: 5),
            Container(
              width: 10,
              height: 10,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.red,
              ),
            ),
          ],
        ),
        actions: const [
          Icon(
            Icons.add_box_outlined,
            size: 30,
          ),
          SizedBox(width: 10),
          Icon(
            Icons.menu,
            size: 30,
          ),
          SizedBox(width: 5),
        ],
      ),
      body: Container(
        child: Column(
          children: [
            Container(
              height: 200,
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: const EdgeInsets.all(3),
                          decoration: BoxDecoration(
                            border: Border.all(),
                            shape: BoxShape.circle,
                            color: Colors.grey,
                          ),
                          child: const CircleAvatar(
                            radius: 60,
                            backgroundImage: NetworkImage(
                              'https://scontent.fhan14-3.fna.fbcdn.net/v/t39.30808-6/417781839_344460121869446_1233461574458003244_n.jpg?_nc_cat=103&ccb=1-7&_nc_sid=efb6e6&_nc_eui2=AeGE6-sh8w8STx2GpeThbzPTbcJiDOqLi7VtwmIM6ouLtb5mwnWITJbtAAkDzkczOmFvaU8KwpXYeE6vR8JETK2i&_nc_ohc=rAoSyyGiCxYAX8aqukA&_nc_ht=scontent.fhan14-3.fna&oh=00_AfD16tK14V2lU6RlE8k6eyAkGrGA-DV0RyW0inVY4TKkag&oe=65BDF734',
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const Text(
                          'Huy Nguyen',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.only(top: 50, left: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            child: RowStatus('4', 'Post'),
                          ),
                          Container(
                            child: RowStatus('49', 'Followers'),
                          ),
                          Container(
                            child: RowStatus('205', 'Following'),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 80,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const SizedBox(width: 10),
                  Expanded(child: ButtonProfile('Edit Profile')),
                  const SizedBox(width: 10),
                  Expanded(child: ButtonProfile('Share Profile')),
                  const SizedBox(width: 10),
                ],
              ),
            ),
            Container(
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.all(12),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Explore more friends',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'See all',
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 12),
                    height: 300,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 6,
                      itemBuilder: (builder, context) {
                        return CardFrends(); // Corrected the typo in CardFriends
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                ],
              ),
            ),
            Container(
              height: 120,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 6,
                itemBuilder: (builder, context) {
                  return Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 20),
                        decoration: BoxDecoration(
                          border: Border.all(),
                          shape: BoxShape.circle,
                          color: Colors.grey,
                        ),
                        child: const CircleAvatar(
                          radius: 40,
                          backgroundImage: NetworkImage(
                            'https://scontent.fhan14-3.fna.fbcdn.net/v/t39.30808-6/417781839_344460121869446_1233461574458003244_n.jpg?_nc_cat=103&ccb=1-7&_nc_sid=efb6e6&_nc_eui2=AeGE6-sh8w8STx2GpeThbzPTbcJiDOqLi7VtwmIM6ouLtb5mwnWITJbtAAkDzkczOmFvaU8KwpXYeE6vR8JETK2i&_nc_ohc=rAoSyyGiCxYAX8aqukA&_nc_ht=scontent.fhan14-3.fna&oh=00_AfD16tK14V2lU6RlE8k6eyAkGrGA-DV0RyW0inVY4TKkag&oe=65BDF734',
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text('data'),
                    ],
                  );
                },
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Flexible(
              child: Container(
                child: Container(
                  child: GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      crossAxisSpacing: 10.0,
                      mainAxisSpacing: 10.0,
                    ),
                    itemCount: 6,
                    itemBuilder: (context, index) {
                      return Container(
                        height: 100,
                        width: 100,
                        margin: const EdgeInsets.all(10),
                        child: Stack(
                          children: [
                            const Positioned(
                              right: 0,
                              top: 10,
                              child: Icon(Icons.video_collection_outlined),
                            ),
                            Positioned.fill(
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(8.0),
                                child: Image.network(
                                  'https://scontent.fhan14-3.fna.fbcdn.net/v/t39.30808-6/355103968_215794938069299_451551051807636056_n.jpg?_nc_cat=110&ccb=1-7&_nc_sid=9c7eae&_nc_eui2=AeGN3al-R-BE6g0fulpVlJhf3uG8fWvN8qne4bx9a83yqXPU_qllcFSSe18HgyFFMCdz_uHbtcHv0GxAFnCxUovN&_nc_ohc=ExFD0ii1ApwAX9KKNzH&_nc_ht=scontent.fhan14-3.fna&oh=00_AfBUlPJhjvNKQinoeDCmkTuF0NgFIJV6ImRfTjJbnTbTAA&oe=65BEEA43',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
