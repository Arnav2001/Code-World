import "package:cloud_firestore/cloud_firestore.dart";

class DatabaseService {
  final String uid;
  DatabaseService({required this.uid});

  final CollectionReference myCollection = FirebaseFirestore.instance
      .collection('userInfo');

  Future updateUserData(String name, String email, int phoneNo, String image, List list, bool isVerified) async {
    return await myCollection.doc(uid).set({
      'name': name,
      'email': email,
      'phoneNo': phoneNo,
      'image': image,
      'list': list,
      'isVerified':isVerified
    });
  }
}
