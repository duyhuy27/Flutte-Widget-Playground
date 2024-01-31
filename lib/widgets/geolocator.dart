import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:geolocator/geolocator.dart';

class GeoLocatorWidget extends StatefulWidget {
  const GeoLocatorWidget({super.key});

  @override
  State<GeoLocatorWidget> createState() => _GeoLocatorWidgetState();
}

class _GeoLocatorWidgetState extends State<GeoLocatorWidget> {
  //! Tạo biến lưu trữ vị trí
  Position? postion;

  fetchLocation() async {
    //!
    bool servicedEnable;
    LocationPermission permission;

    //!! Kiểm tra trạng thái xem của quyền định vị
    //! Hàm isLocationServiceEnabled() được từ thư viện geolocator để kiểm tra xem quyền định vị được bật hay chưa
    servicedEnable = await Geolocator.isLocationServiceEnabled();
    if (!servicedEnable) {
      Fluttertoast.showToast(msg: 'Loation permission is disable');
    }
    //! Check xem permisstion được cấp hay chưa
    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      //! chưa cấp thì sẽ yêu cầu cấp quyền định vị
      permission = await Geolocator.requestPermission();
      //! Thông báo khi người dùng không đồng ý cấp quyền
      if (permission == LocationPermission.denied) {
        Fluttertoast.showToast(msg: 'Loation permission is denied');
      }
    }
    //! Xử lý khi người dùng không cấp quyền vĩnh viễn
    if (permission == LocationPermission.deniedForever) {
      Fluttertoast.showToast(msg: 'Loation permission is denied fovever');
    }
    //! Lấy thông tin vị trí hiện tại và set giá trị cho biến position
    Position? currentPosition = await Geolocator.getCurrentPosition();
    setState(() {
      postion = currentPosition;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Getch Location'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(postion == null ? 'Location' : postion.toString()),
            ElevatedButton(
                onPressed: () {
                  fetchLocation();
                },
                child: const Text('Get Location'))
          ],
        ),
      ),
    );
  }
}
