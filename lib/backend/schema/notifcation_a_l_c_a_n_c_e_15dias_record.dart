import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class NotifcationALCANCE15diasRecord extends FirestoreRecord {
  NotifcationALCANCE15diasRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "users" field.
  DocumentReference? _users;
  DocumentReference? get users => _users;
  bool hasUsers() => _users != null;

  // "ingressoREF" field.
  DocumentReference? _ingressoREF;
  DocumentReference? get ingressoREF => _ingressoREF;
  bool hasIngressoREF() => _ingressoREF != null;

  // "time" field.
  DateTime? _time;
  DateTime? get time => _time;
  bool hasTime() => _time != null;

  // "nomedafesta" field.
  String? _nomedafesta;
  String get nomedafesta => _nomedafesta ?? '';
  bool hasNomedafesta() => _nomedafesta != null;

  void _initializeFields() {
    _users = snapshotData['users'] as DocumentReference?;
    _ingressoREF = snapshotData['ingressoREF'] as DocumentReference?;
    _time = snapshotData['time'] as DateTime?;
    _nomedafesta = snapshotData['nomedafesta'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('notifcation-ALCANCE_15dias');

  static Stream<NotifcationALCANCE15diasRecord> getDocument(
          DocumentReference ref) =>
      ref
          .snapshots()
          .map((s) => NotifcationALCANCE15diasRecord.fromSnapshot(s));

  static Future<NotifcationALCANCE15diasRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => NotifcationALCANCE15diasRecord.fromSnapshot(s));

  static NotifcationALCANCE15diasRecord fromSnapshot(
          DocumentSnapshot snapshot) =>
      NotifcationALCANCE15diasRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static NotifcationALCANCE15diasRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      NotifcationALCANCE15diasRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'NotifcationALCANCE15diasRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is NotifcationALCANCE15diasRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createNotifcationALCANCE15diasRecordData({
  DocumentReference? users,
  DocumentReference? ingressoREF,
  DateTime? time,
  String? nomedafesta,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'users': users,
      'ingressoREF': ingressoREF,
      'time': time,
      'nomedafesta': nomedafesta,
    }.withoutNulls,
  );

  return firestoreData;
}

class NotifcationALCANCE15diasRecordDocumentEquality
    implements Equality<NotifcationALCANCE15diasRecord> {
  const NotifcationALCANCE15diasRecordDocumentEquality();

  @override
  bool equals(
      NotifcationALCANCE15diasRecord? e1, NotifcationALCANCE15diasRecord? e2) {
    return e1?.users == e2?.users &&
        e1?.ingressoREF == e2?.ingressoREF &&
        e1?.time == e2?.time &&
        e1?.nomedafesta == e2?.nomedafesta;
  }

  @override
  int hash(NotifcationALCANCE15diasRecord? e) => const ListEquality()
      .hash([e?.users, e?.ingressoREF, e?.time, e?.nomedafesta]);

  @override
  bool isValidKey(Object? o) => o is NotifcationALCANCE15diasRecord;
}
