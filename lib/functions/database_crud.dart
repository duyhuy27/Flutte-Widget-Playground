import 'package:cloud_firestore/cloud_firestore.dart';

create(
  String col,
  doc,
  name,
  gender,
  int age,
) async {
  await FirebaseFirestore.instance
      .collection(col)
      .doc(doc)
      .set({'name': name, 'gender': gender, 'age': age});
  print('Insert ok');
}

update(String col, doc, namefield, agefield, var fiedValueName,
    agefieldValue) async {
  await FirebaseFirestore.instance
      .collection(col)
      .doc(doc)
      .update({namefield: fiedValueName, agefield: agefieldValue});
  print('Update ok');
}

delete(String col, doc) async {
  await FirebaseFirestore.instance.collection(col).doc(doc).delete();
  print('Delete Document');
}
