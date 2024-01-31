import 'package:flutter/material.dart';

class AlertDialogWidget extends StatefulWidget {
  const AlertDialogWidget({super.key});

  @override
  State<AlertDialogWidget> createState() => _AlertDialogWidgetState();
}

class _AlertDialogWidgetState extends State<AlertDialogWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AlertDialog Example '),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            _showDialogExample(context);
          },
          child: const Text('Show Dialog'),
        ),
      ),
    );
  }
}

Future<void> _showDialogExample(BuildContext context) async {
  return showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          //! Độ nâng của hộp thoại, tức là từ background đến với dialog
          // ! Hiểu đơn giản là độ nổi lên trên widget
          elevation: 1,
          //! Định dạng đường viên xung quanh
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
          // ! set tiêu đề to cho dialog
          title: const Text('AlertDialog example'),
          // ! set nội dụng liên quan ở phần thân dialog
          // ! sử dụng SingleChildScrollView để có thể cuộn mượt hơn tùy kích thượng màn hình nếu quá dialog có nội dung dài
          content: const SingleChildScrollView(
            // ! widget này cho phép các widget con hiển thị bên trong dưới dạng list
            child: ListBody(
              children: [
                // ! Ở đây có thể tùy chỉnh bằng bất kì widget con hay bằng layout này theo thiết kế
                Text('Username'),
                TextField(),
                SizedBox(
                  height: 10,
                ),
                Text('Password'),
                TextField(),
              ],
            ),
          ),
          // ! Thêm các event bằng các button ( có thể tùy chỉnh custom tùy ý )
          actions: [
            TextButton(
              onPressed: () {},
              child: const Text('Submit'),
            ),
            TextButton(
              onPressed: () {},
              child: const Text('No'),
            ),
          ],
        );
      });
}
