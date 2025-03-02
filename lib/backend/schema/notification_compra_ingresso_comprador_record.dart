import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class NotificationCompraIngressoCompradorRecord extends FirestoreRecord {
  NotificationCompraIngressoCompradorRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "users" field.
  DocumentReference? _users;
  DocumentReference? get users => _users;
  bool hasUsers() => _users != null;

  // "fav" field.
  DocumentReference? _fav;
  DocumentReference? get fav => _fav;
  bool hasFav() => _fav != null;

  // "ingresso" field.
  DocumentReference? _ingresso;
  DocumentReference? get ingresso => _ingresso;
  bool hasIngresso() => _ingresso != null;

  // "time" field.
  DateTime? _time;
  DateTime? get time => _time;
  bool hasTime() => _time != null;

  // "nomedafesta" field.
  String? _nomedafesta;
  String get nomedafesta => _nomedafesta ?? '';
  bool hasNomedafesta() => _nomedafesta != null;

  // "compradoREF" field.
  DocumentReference? _compradoREF;
  DocumentReference? get compradoREF => _compradoREF;
  bool hasCompradoREF() => _compradoREF != null;

  // "recebimeuingresso" field.
  bool? _recebimeuingresso;
  bool get recebimeuingresso => _recebimeuingresso ?? false;
  bool hasRecebimeuingresso() => _recebimeuingresso != null;

  // "nomedousuario" field.
  String? _nomedousuario;
  String get nomedousuario => _nomedousuario ?? '';
  bool hasNomedousuario() => _nomedousuario != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "plataforma_oficial" field.
  String? _plataformaOficial;
  String get plataformaOficial => _plataformaOficial ?? '';
  bool hasPlataformaOficial() => _plataformaOficial != null;

  // "donoingressoREF" field.
  DocumentReference? _donoingressoREF;
  DocumentReference? get donoingressoREF => _donoingressoREF;
  bool hasDonoingressoREF() => _donoingressoREF != null;

  // "valordoingresso" field.
  int? _valordoingresso;
  int get valordoingresso => _valordoingresso ?? 0;
  bool hasValordoingresso() => _valordoingresso != null;

  // "datadafesta" field.
  String? _datadafesta;
  String get datadafesta => _datadafesta ?? '';
  bool hasDatadafesta() => _datadafesta != null;

  void _initializeFields() {
    _users = snapshotData['users'] as DocumentReference?;
    _fav = snapshotData['fav'] as DocumentReference?;
    _ingresso = snapshotData['ingresso'] as DocumentReference?;
    _time = snapshotData['time'] as DateTime?;
    _nomedafesta = snapshotData['nomedafesta'] as String?;
    _compradoREF = snapshotData['compradoREF'] as DocumentReference?;
    _recebimeuingresso = snapshotData['recebimeuingresso'] as bool?;
    _nomedousuario = snapshotData['nomedousuario'] as String?;
    _email = snapshotData['email'] as String?;
    _plataformaOficial = snapshotData['plataforma_oficial'] as String?;
    _donoingressoREF = snapshotData['donoingressoREF'] as DocumentReference?;
    _valordoingresso = castToType<int>(snapshotData['valordoingresso']);
    _datadafesta = snapshotData['datadafesta'] as String?;
  }

  static CollectionReference get collection => FirebaseFirestore.instance
      .collection('notification-Compra_Ingresso-Comprador');

  static Stream<NotificationCompraIngressoCompradorRecord> getDocument(
          DocumentReference ref) =>
      ref.snapshots().map(
          (s) => NotificationCompraIngressoCompradorRecord.fromSnapshot(s));

  static Future<NotificationCompraIngressoCompradorRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then(
          (s) => NotificationCompraIngressoCompradorRecord.fromSnapshot(s));

  static NotificationCompraIngressoCompradorRecord fromSnapshot(
          DocumentSnapshot snapshot) =>
      NotificationCompraIngressoCompradorRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static NotificationCompraIngressoCompradorRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      NotificationCompraIngressoCompradorRecord._(
          reference, mapFromFirestore(data));

  @override
  String toString() =>
      'NotificationCompraIngressoCompradorRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is NotificationCompraIngressoCompradorRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createNotificationCompraIngressoCompradorRecordData({
  DocumentReference? users,
  DocumentReference? fav,
  DocumentReference? ingresso,
  DateTime? time,
  String? nomedafesta,
  DocumentReference? compradoREF,
  bool? recebimeuingresso,
  String? nomedousuario,
  String? email,
  String? plataformaOficial,
  DocumentReference? donoingressoREF,
  int? valordoingresso,
  String? datadafesta,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'users': users,
      'fav': fav,
      'ingresso': ingresso,
      'time': time,
      'nomedafesta': nomedafesta,
      'compradoREF': compradoREF,
      'recebimeuingresso': recebimeuingresso,
      'nomedousuario': nomedousuario,
      'email': email,
      'plataforma_oficial': plataformaOficial,
      'donoingressoREF': donoingressoREF,
      'valordoingresso': valordoingresso,
      'datadafesta': datadafesta,
    }.withoutNulls,
  );

  return firestoreData;
}

class NotificationCompraIngressoCompradorRecordDocumentEquality
    implements Equality<NotificationCompraIngressoCompradorRecord> {
  const NotificationCompraIngressoCompradorRecordDocumentEquality();

  @override
  bool equals(NotificationCompraIngressoCompradorRecord? e1,
      NotificationCompraIngressoCompradorRecord? e2) {
    return e1?.users == e2?.users &&
        e1?.fav == e2?.fav &&
        e1?.ingresso == e2?.ingresso &&
        e1?.time == e2?.time &&
        e1?.nomedafesta == e2?.nomedafesta &&
        e1?.compradoREF == e2?.compradoREF &&
        e1?.recebimeuingresso == e2?.recebimeuingresso &&
        e1?.nomedousuario == e2?.nomedousuario &&
        e1?.email == e2?.email &&
        e1?.plataformaOficial == e2?.plataformaOficial &&
        e1?.donoingressoREF == e2?.donoingressoREF &&
        e1?.valordoingresso == e2?.valordoingresso &&
        e1?.datadafesta == e2?.datadafesta;
  }

  @override
  int hash(NotificationCompraIngressoCompradorRecord? e) =>
      const ListEquality().hash([
        e?.users,
        e?.fav,
        e?.ingresso,
        e?.time,
        e?.nomedafesta,
        e?.compradoREF,
        e?.recebimeuingresso,
        e?.nomedousuario,
        e?.email,
        e?.plataformaOficial,
        e?.donoingressoREF,
        e?.valordoingresso,
        e?.datadafesta
      ]);

  @override
  bool isValidKey(Object? o) => o is NotificationCompraIngressoCompradorRecord;
}
