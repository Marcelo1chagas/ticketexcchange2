import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class NotifcationALCANCE1diaRecord extends FirestoreRecord {
  NotifcationALCANCE1diaRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "users" field.
  DocumentReference? _users;
  DocumentReference? get users => _users;
  bool hasUsers() => _users != null;

  // "time" field.
  DateTime? _time;
  DateTime? get time => _time;
  bool hasTime() => _time != null;

  // "ingressoREF" field.
  DocumentReference? _ingressoREF;
  DocumentReference? get ingressoREF => _ingressoREF;
  bool hasIngressoREF() => _ingressoREF != null;

  // "nomedafesta" field.
  String? _nomedafesta;
  String get nomedafesta => _nomedafesta ?? '';
  bool hasNomedafesta() => _nomedafesta != null;

  void _initializeFields() {
    _users = snapshotData['users'] as DocumentReference?;
    _time = snapshotData['time'] as DateTime?;
    _ingressoREF = snapshotData['ingressoREF'] as DocumentReference?;
    _nomedafesta = snapshotData['nomedafesta'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('notifcation-ALCANCE_1dia');

  static Stream<NotifcationALCANCE1diaRecord> getDocument(
          DocumentReference ref) =>
      ref.snapshots().map((s) => NotifcationALCANCE1diaRecord.fromSnapshot(s));

  static Future<NotifcationALCANCE1diaRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => NotifcationALCANCE1diaRecord.fromSnapshot(s));

  static NotifcationALCANCE1diaRecord fromSnapshot(DocumentSnapshot snapshot) =>
      NotifcationALCANCE1diaRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static NotifcationALCANCE1diaRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      NotifcationALCANCE1diaRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'NotifcationALCANCE1diaRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is NotifcationALCANCE1diaRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createNotifcationALCANCE1diaRecordData({
  DocumentReference? users,
  DateTime? time,
  DocumentReference? ingressoREF,
  String? nomedafesta,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'users': users,
      'time': time,
      'ingressoREF': ingressoREF,
      'nomedafesta': nomedafesta,
    }.withoutNulls,
  );

  return firestoreData;
}

class NotifcationALCANCE1diaRecordDocumentEquality
    implements Equality<NotifcationALCANCE1diaRecord> {
  const NotifcationALCANCE1diaRecordDocumentEquality();

  @override
  bool equals(
      NotifcationALCANCE1diaRecord? e1, NotifcationALCANCE1diaRecord? e2) {
    return e1?.users == e2?.users &&
        e1?.time == e2?.time &&
        e1?.ingressoREF == e2?.ingressoREF &&
        e1?.nomedafesta == e2?.nomedafesta;
  }

  @override
  int hash(NotifcationALCANCE1diaRecord? e) => const ListEquality()
      .hash([e?.users, e?.time, e?.ingressoREF, e?.nomedafesta]);

  @override
  bool isValidKey(Object? o) => o is NotifcationALCANCE1diaRecord;
}
