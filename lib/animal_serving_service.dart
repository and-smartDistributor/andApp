import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class AnimalServingService extends ChangeNotifier {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<void> create(String foodGram, String petName) async {
    try {
      // 'pet' 컬렉션에서 'petname' 필드 값이 petName과 일치하는 문서를 찾습니다.
      QuerySnapshot querySnapshot = await _firestore.collection('pet')
          .where('petname', isEqualTo: petName)
          .get();

      if (querySnapshot.docs.isNotEmpty) {
        // 일치하는 문서가 있다면 첫 번째 문서를 참조합니다.
        DocumentReference petRef = querySnapshot.docs.first.reference;

        // 찾은 문서의 'food_gram' 필드를 업데이트합니다.
        await petRef.update({
          'food_gram': foodGram
        });
      } else {
        // 일치하는 문서가 없으면 오류를 출력합니다.
        print("Error: No document found with pet name: $petName");
      }

      notifyListeners(); // 화면 갱신
    } catch (e) {
      // 오류 처리
      print(e);
    }
  }
}
