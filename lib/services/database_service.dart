import 'package:catch_card/modals/entry.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseService {

  final CollectionReference database = Firestore.instance.collection('2019');

  Future submitCatchLog(LogEntry entry, String permit) async {
    return await database.document(permit).setData({
      'logs':entry
    },
    merge: true);
  }

}