import 'package:flutter/material.dart';

class BottomSheetDialogWidget extends StatefulWidget {
  const BottomSheetDialogWidget({super.key});

  @override
  State<BottomSheetDialogWidget> createState() =>
      _BottomSheetDialogWidgetState();
}

class _BottomSheetDialogWidgetState extends State<BottomSheetDialogWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bottom Sheet Dialog'),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              //! show bottom dialog
              //! ở đây khi sử dụng hàm này thì đã show được bottom dialog
              //! return lại 1 widget tree nào đó để xây dựng UI của dialog
              showModalBottomSheet(
                  //! những version của flutter cao hơn thì thường đã có bo góc
                  //! nên không nhất phải sử dụng shape
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20)),
                  ),
                  //! độ nổi của dialog
                  elevation: 0,
                  //! màu nền của dialog
                  backgroundColor: Colors.purple,
                  //! context và builder là 2 param required (bắt buộc phải có )
                  context: context,
                  builder: (context) {
                    //! return lại bất kì 1 tree widget để xây dựng UI của dialog
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        // ! sử dụng mainAxisSize để định dạng khoảng trống của column
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const Text('Username'),
                          const TextField(),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text('Password'),
                          const TextField(),
                          Row(
                            children: [
                              ElevatedButton(
                                  onPressed: () {},
                                  child: const Text('Submit')),
                              ElevatedButton(
                                  onPressed: () {},
                                  child: const Text('Cancel')),
                            ],
                          )
                        ],
                      ),
                    );
                  });
            },
            child: const Text('Show BottomDialog')),
      ),
    );
  }
}
