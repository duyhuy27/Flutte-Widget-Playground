import 'package:flutter/material.dart';

class DropdownList extends StatefulWidget {
  const DropdownList({super.key});

  @override
  State<DropdownList> createState() => _DropdownListState();
}

class _DropdownListState extends State<DropdownList> {
  //! biến thể hiện giá trị được chọn
  String selectedValue = 'Huy';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dropdown List Example'),
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Center(
            //! Widget chưa dropdown list
            child: DropdownButton<String>(
              //! Icon hiển thị
              icon: const Icon(Icons.arrow_downward_sharp),
              //! Màu của list dropdown
              dropdownColor: Colors.blue,
              //! cho phép mở rộng ra phủ kín chiều rộng
              isExpanded: true,
              //! Giá trị được chọn ở hiện tại
              value: selectedValue,
              //! được gọi khi giá trị thay đổi
              onChanged: (String? newValue) {
                //! cập nhật giá trị được chọn thông qua setState
                setState(
                  () {
                    selectedValue = newValue!;
                  },
                );
              },
              //! Danh sách các mục trong list được tạo bằng cách sử dụng map
              //! và chuyển đổi thành các DropdownItem chứa những giá trị nội dung của các mục
              items: <String>['Huy', 'Son', 'Thang']
                  .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
          ),
        ),
      ),
    );
  }
}
