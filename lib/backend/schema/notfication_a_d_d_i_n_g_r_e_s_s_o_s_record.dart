import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class NotficationADDINGRESSOSRecord extends FirestoreRecord {
  NotficationADDINGRESSOSRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "users" field.
  DocumentReference? _users;
  DocumentReference? get users => _users;
  bool hasUsers() => _users != null;

  // "ingresso" field.
  DocumentReference? _ingresso;
  DocumentReference? get ingresso => _ingresso;
  bool hasIngresso() => _ingresso != null;

  // "time_created" field.
  DateTime? _timeCreated;
  DateTime? get timeCreated => _timeCreated;
  bool hasTimeCreated() => _timeCreated != null;

  // "nomedafesta" field.
  String? _nomedafesta;
  String get nomedafesta => _nomedafesta ?? '';
  bool hasNomedafesta() => _nomedafesta != null;

  void _initializeFields() {
    _users = snapshotData['users'] as DocumentReference?;
    _ingresso = snapshotData['ingresso'] as DocumentReference?;
    _timeCreated = snapshotData['time_created'] as DateTime?;
    _nomedafesta = snapshotData['nomedafesta'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('notfication-ADD-INGRESSOS');

  static Stream<NotficationADDINGRESSOSRecord> getDocument(
          DocumentReference ref) =>
      ref.snapshots().map((s) => NotficationADDINGRESSOSRecord.fromSnapshot(s));

  static Future<NotficationADDINGRESSOSRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => NotficationADDINGRESSOSRecord.fromSnapshot(s));

  static NotficationADDINGRESSOSRecord fromSnapshot(
          DocumentSnapshot snapshot) =>
      NotficationADDINGRESSOSRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static NotficationADDINGRESSOSRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      NotficationADDINGRESSOSRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'NotficationADDINGRESSOSRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is NotficationADDINGRESSOSRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createNotficationADDINGRESSOSRecordData({
  DocumentReference? users,
  DocumentReference? ingresso,
  DateTime? timeCreated,
  String? nomedafesta,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'users': users,
      'ingresso': ingresso,
      'time_created': timeCreated,
      'nomedafesta': nomedafesta,
    }.withoutNulls,
  );

  return firestoreData;
}

class NotficationADDINGRESSOSRecordDocumentEquality
    implements Equality<NotficationADDINGRESSOSRecord> {
  const NotficationADDINGRESSOSRecordDocumentEquality();

  @override
  bool equals(
      NotficationADDINGRESSOSRecord? e1, NotficationADDINGRESSOSRecord? e2) {
    return e1?.users == e2?.users &&
        e1?.ingresso == e2?.ingresso &&
        e1?.timeCreated == e2?.timeCreated &&
        e1?.nomedafesta == e2?.nomedafesta;
  }

  @override
  int hash(NotficationADDINGRESSOSRecord? e) => const ListEquality()
      .hash([e?.users, e?.ingresso, e?.timeCreated, e?.nomedafesta]);

  @override
  bool isValidKey(Object? o) => o is NotficationADDINGRESSOSRecord;
}
