import 'package:flutter/material.dart';

class StackWidget extends StatefulWidget {
  const StackWidget({super.key});

  @override
  State<StackWidget> createState() => _StackWidgetState();
}

class _StackWidgetState extends State<StackWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stack Example'),
      ),
      //! Stack cho phép các widget có thể nằm lên nhau
      body: Stack(
        children: [
          Container(
            height: 300,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/img1.jpeg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          //! Positioned cho phép cân chỉnh các widget ở stack dưới theo vị trí top left bottom right
          //! Positioned thường dùng cho các vị trí chính xác của widget dựa vào 4 thuộc tính ở trên
          //! 4 thuộc tính trên sẽ cho phép căn chỉnh widget con ở mép widget Stack
          Positioned(
              top: 20,
              left: 20,
              child: Container(
                height: 50,
                width: 50,
                color: Colors.red,
              )),
          //! Align căn chỉnh các widget con theo thuộc tính alignment
          //! Align sẽ cho phép căn chỉnh dọc theo một trong các góc hoặc điểm ở trung tâm
          //! Linh hoạt cho việc xác định vị trí mà không cần con số cụ thể căn chỉnh ở các mép Stack
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 50,
              width: 50,
              color: Colors.red,
            ),
          )
        ],
      ),
    );
  }
}
