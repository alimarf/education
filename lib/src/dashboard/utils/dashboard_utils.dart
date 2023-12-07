import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:firebase_auth/firebase_auth.dart';

import '../../../core/services/injection_container.dart';
import '../../auth/data/models/user_model.dart';

class DashboardUtils {
  const DashboardUtils._();

  static Stream<LocalUserModel> get userDataStream => sl<FirebaseFirestore>()
      .collection('users')
      .doc(sl<FirebaseAuth>().currentUser!.uid)
      .snapshots()
      .map((event) => LocalUserModel.fromMap(event.data()!));
}
