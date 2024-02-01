import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class Day21UI extends StatefulWidget {
  const Day21UI({super.key});

  @override
  State<Day21UI> createState() => _Day21UIState();
}

class _Day21UIState extends State<Day21UI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // s
      body: SingleChildScrollView(
        child: Column(
          children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Stack(
                    children: [
                      Container(
                        height: 400,
                        width: double.infinity,
                        decoration: const BoxDecoration(
                            color: Colors.blue,
                            image: DecorationImage(
                                image: NetworkImage(
                                    'https://bizweb.dktcdn.net/100/438/408/files/fashionista-la-gi-yodyvn3.jpg?v=1668666987549'),
                                fit: BoxFit.cover),
                            borderRadius: BorderRadiusDirectional.all(
                                Radius.circular(20))),
                      ),
                      Positioned(
                          right: 20,
                          top: 40,
                          child: Container(
                            height: 40,
                            width: 40,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white,
                            ),
                            child: const Icon(Icons.favorite),
                          )),
                      Positioned(
                          left: 20,
                          top: 40,
                          child: Container(
                            height: 40,
                            width: 40,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white,
                            ),
                            child: const Center(child: Icon(Icons.arrow_back)),
                          )),
                    ],
                  ),
                ),
                Container(
                  height: 100,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 20, right: 20),
                        child: Text(
                          'Modern Light Clothes',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 24,
                              fontWeight: FontWeight.bold),
                          maxLines: 1,
                        ),
                      ),
                      Expanded(
                          child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            height: 30,
                            width: 30,
                            decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(blurRadius: 1, color: Colors.grey)
                                ]),
                            child: const Icon(Icons.add),
                          ),
                          const Text(
                            '1',
                            style: TextStyle(fontSize: 22),
                          ),
                          Container(
                            height: 30,
                            width: 30,
                            decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(blurRadius: 1, color: Colors.grey)
                                ]),
                            child: const Icon(Icons.remove),
                          )
                        ],
                      ))
                    ],
                  ),
                ),
                Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(left: 20),
                      child: RatingBar.builder(
                        initialRating: 3,
                        minRating: 1,
                        direction: Axis.horizontal,
                        allowHalfRating: true,
                        itemCount: 5,
                        itemSize: 25,
                        itemPadding:
                            const EdgeInsets.symmetric(horizontal: 3.0),
                        itemBuilder: (context, _) => const Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                        onRatingUpdate: (rating) {
                          // Text(rating.toString());
                        },
                      ),
                    ),
                    const Text(
                      '5.0',
                      style: TextStyle(color: Colors.grey, fontSize: 18),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const Text(
                      '7932 reviews',
                      style: TextStyle(
                          color: Colors.blue,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                const SizedBox(
                  height: 16,
                ),
                const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text(
                      "Các fashionista đang mặc gì? Có điều gì mới mẻ trên các trang cá nhân của những ngôi sao không? Vào cuối tuần bạn đang thấy giới trẻ diện những outfit gì? Hãy theo dõi thật nhiều người nổi tiếng, biết cách dẫn đầu xu hướng nhất có thể. Từ đó, mọi người sẽ có cái nhìn bao quát hơn về trend thời trang đang diễn ra. Chưa kể, hiện nay cũng có rất nhiều tạp trí, show thời trang hỗ trợ bạn trong quá trình trở thành 1 fashionista thực thụ. Mọi người có thể dễ dàng cập nhật được những thông tin bổ ích về thời trang qua bài blog, video, hình ảnh,.."),
                ),
                const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text(
                      "Một tín đồ thời trang thường không dành cả tháng lương để hùa theo những trend thời trang nào đó. Mọi người hoàn toàn có thể mặc đẹp theo cách của riêng mình mà không cần đến những mẫu áo cardigan đang hot trend nếu kinh tế không đáp ứng được."),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 16.0, right: 16),
                  child: Divider(),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Choose Size',
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: 12,
                          ),
                          Row(
                            children: [
                              Container(
                                height: 30,
                                width: 30,
                                decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                          blurRadius: 1, color: Colors.grey)
                                    ]),
                                child: const Center(
                                  child: Text(
                                    'S',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 12,
                              ),
                              Container(
                                height: 30,
                                width: 30,
                                decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.black,
                                    boxShadow: [
                                      BoxShadow(
                                          blurRadius: 1, color: Colors.grey)
                                    ]),
                                child: const Center(
                                  child: Text(
                                    'M',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 12,
                              ),
                              Container(
                                height: 30,
                                width: 30,
                                decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                          blurRadius: 1, color: Colors.grey)
                                    ]),
                                child: const Center(
                                  child: Text(
                                    'L',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 12,
                              ),
                              Container(
                                height: 30,
                                width: 30,
                                decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                          blurRadius: 1, color: Colors.grey)
                                    ]),
                                child: const Center(
                                  child: Text(
                                    'XL',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Choose Color',
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: 12,
                          ),
                          Row(
                            children: [
                              Container(
                                height: 30,
                                width: 30,
                                decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.black,
                                    boxShadow: [
                                      BoxShadow(
                                          blurRadius: 1, color: Colors.grey)
                                    ]),
                                child: const Center(
                                  child: Text(
                                    'S',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 12,
                              ),
                              Container(
                                height: 30,
                                width: 30,
                                decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.red,
                                    boxShadow: [
                                      BoxShadow(
                                          blurRadius: 1, color: Colors.grey)
                                    ]),
                                child: const Center(
                                  child: Text(
                                    'M',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.red),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 12,
                              ),
                              Container(
                                height: 30,
                                width: 30,
                                decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.blue,
                                    boxShadow: [
                                      BoxShadow(
                                          blurRadius: 1, color: Colors.grey)
                                    ]),
                              ),
                              const SizedBox(
                                width: 12,
                              ),
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.black,
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: const [
                      BoxShadow(blurRadius: 1, spreadRadius: 2)
                    ]),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.shopping_bag,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Add To Card | 100.000',
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    );
  }
}
