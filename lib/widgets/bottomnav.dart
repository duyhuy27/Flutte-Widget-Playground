import 'package:basic_widget_30_1/widgets/bottomSheetDialog.dart';
import 'package:basic_widget_30_1/widgets/drawerWidget.dart';
import 'package:basic_widget_30_1/widgets/images.dart';
import 'package:basic_widget_30_1/widgets/list_grid.dart';
import 'package:flutter/material.dart';

class BottomNavigationWidget extends StatefulWidget {
  const BottomNavigationWidget({super.key});

  @override
  State<BottomNavigationWidget> createState() => _BottomNavigationWidgetState();
}

class _BottomNavigationWidgetState extends State<BottomNavigationWidget> {
  //! lưu trữ index khi chọn bottom navigation
  int selectedIndexBottomNav = 0;

  //! quản lý việc chuyển các page
  final PageController _pageControllerBottomNav = PageController();

  //! hàm để cập nhật index khi người dùng nhấn ở bottom navigation
  void onTapBottomNav(int index) {
    setState(() {
      selectedIndexBottomNav = index;
    });
    _pageControllerBottomNav.jumpToPage(index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        //! controller
        controller: _pageControllerBottomNav,
        //! chứa các trang tương ứng khi chọn bottom nav
        children: const [
          ImageWidget(),
          BottomSheetDialogWidget(),
          ListGridWidget(),
          DrawerWidget(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(icon: Icon(Icons.list), label: 'List'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
        //! màu khi các item ở bottom nav không được chọn
        unselectedItemColor: Colors.grey,
        //! màu khi các item ở bottom nav  được chọn
        selectedItemColor: Colors.white,
        //! xử lý event khi click vào bottom
        onTap: onTapBottomNav,
        //! set mục nào được chọn
        currentIndex: selectedIndexBottomNav,
      ),
    );
  }
}
