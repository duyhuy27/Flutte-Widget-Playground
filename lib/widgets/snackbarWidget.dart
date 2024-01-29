import 'package:flutter/material.dart';

class SnackbarWidget extends StatelessWidget {
  const SnackbarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Snack bar demo'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            /*  content: Là nội dung chính của Snackbar, được đặt trong một widget Text. Trong trường hợp này, nội dung là chuỗi "This is snackbar", và có màu trắng.

                backgroundColor: Màu nền của Snackbar, được đặt là màu đỏ.

                behavior: Xác định cách mà Snackbar hoạt động. Trong trường hợp này, SnackBarBehavior.floating cho biết Snackbar sẽ có hiệu ứng floating (nổi lên).

                duration: Thời gian hiển thị của Snackbar, được đặt là 3 giây.

                shape: Xác định hình dạng của Snackbar, trong trường hợp này, nó là một hình dạng hình tròn được định nghĩa bởi RoundedRectangleBorder với BorderRadius.circular(20).

                action: Là một SnackBarAction, thêm một hành động thực hiện được bởi người dùng. Trong trường hợp này, có một nút 'Undo' với màu chữ là màu vàng. Khi người dùng nhấp vào nút này, một hàm được thực hiện (trong trường hợp này là in ra một dòng thông báo "Under the action").

                onPressed: Hàm được gọi khi nút hành động được nhấn. Trong trường hợp này, nó in ra dòng thông báo "Under the action".

                textColor: Màu chữ của văn bản trong nút hành động. Trong trường hợp này, màu chữ là màu vàng.

                ScaffoldMessenger.of(context).showSnackBar(snackbar); được sử dụng để hiển thị Snackbar trên giao diện người dùng.*/
            final snackbar = SnackBar(
              content: Text(
                'This is snackbar',
                style: TextStyle(color: Colors.white),
              ),
              backgroundColor: Colors.red,
              behavior: SnackBarBehavior.floating,
              duration: const Duration(seconds: 3),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              action: SnackBarAction(
                label: 'Undo',
                onPressed: () {
                  print('Under the action');
                },
                textColor: Colors.yellow,
              ),
            );
            ScaffoldMessenger.of(context).showSnackBar(snackbar);
          },
          child: Text('Click show snackbar'),
        ),
      ),
    );
  }
}
