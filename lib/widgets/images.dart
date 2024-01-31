import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class ImageWidget extends StatefulWidget {
  const ImageWidget({super.key});

  @override
  State<ImageWidget> createState() => _ImageWidgetState();
}

class _ImageWidgetState extends State<ImageWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Image Example'),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              width: 150,
              height: 200,
              // đạnh dạng trang trí cho container,
              decoration: BoxDecoration(
                // tạo hiệu ứng đổ bóng cho container
                boxShadow: const [
                  BoxShadow(
                    //bán kính độ mờ áp dúng cho đổ bóng
                    // tạo ra hiệu ứng có đọi mờ tương ứng với đơn vị tùy chỉnh xung quanh object được đổ bóng
                    blurRadius: 30,
                    color: Colors.yellow,
                    //bán kính lan tỏa của độ bóng
                    // xác định mức mở rộng của đổ bóng ra xung quanh
                    // sẽ đố bóng theo đơn vị từ widget ra thêm ... đơn vị
                    spreadRadius: 5,
                  ),
                ],
                borderRadius: BorderRadius.circular(20),
                color: Colors.red,
                image: const DecorationImage(
                    image: NetworkImage(
                        'https://th.bing.com/th/id/OIG.MxQxUggA0RKmKdTjwAqw'),
                    fit: BoxFit.cover),
              ),
            ),

            SizedBox(
              height: 50,
            ),

//! Lấy hình ảnh trong asset
// vào file pubspec.yml , bỏ comment ở mục assets
            Container(
              width: 150,
              height: 200,
              // đạnh dạng trang trí cho container,
              decoration: BoxDecoration(
                // tạo hiệu ứng đổ bóng cho container
                boxShadow: const [
                  BoxShadow(
                    //bán kính độ mờ áp dúng cho đổ bóng
                    // tạo ra hiệu ứng có đọi mờ tương ứng với đơn vị tùy chỉnh xung quanh object được đổ bóng
                    blurRadius: 30,
                    color: Colors.red,
                    //bán kính lan tỏa của độ bóng
                    // xác định mức mở rộng của đổ bóng ra xung quanh
                    // sẽ đố bóng theo đơn vị từ widget ra thêm ... đơn vị
                    spreadRadius: 5,
                  ),
                ],
                borderRadius: BorderRadius.circular(20),
                color: Colors.red,
                image: const DecorationImage(
                    image: AssetImage('assets/img1.jpeg'), fit: BoxFit.cover),
              ),
            ),

            const SizedBox(
              height: 50,
            ),
//! Cached Image network được sử dụng để load ảnh từ network sau đó sẽ lưu vào bộ nhớ cục bộ
//Cải thiện hiệu suất và load ảnh mượt mà hơn vì nếu cùng 1 request lên ảnh đó thì nó sẽ lôi từ trong bộ nhớ mà không cần phải đợi tín hiệu từ internet
            Container(
              width: 150,
              height: 200,
              child: CachedNetworkImage(
                imageUrl:
                    "https://pixlr.com/images/index/ai-image-generator-two.webp",
                imageBuilder: (context, imageProvider) => Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 10, color: Colors.white, spreadRadius: 20)
                    ],
                    image: DecorationImage(
                        image: imageProvider,
                        fit: BoxFit.cover,
                        colorFilter:
                            ColorFilter.mode(Colors.red, BlendMode.colorBurn)),
                  ),
                ),
                placeholder: (context, url) =>
                    Center(child: CircularProgressIndicator()),
                errorWidget: (context, url, error) => Icon(Icons.error),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
