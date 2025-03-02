import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AVALIACAODeUSUARIORecord extends FirestoreRecord {
  AVALIACAODeUSUARIORecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "avaliacao" field.
  String? _avaliacao;
  String get avaliacao => _avaliacao ?? '';
  bool hasAvaliacao() => _avaliacao != null;

  // "nomedafesta" field.
  String? _nomedafesta;
  String get nomedafesta => _nomedafesta ?? '';
  bool hasNomedafesta() => _nomedafesta != null;

  // "nomedocliente" field.
  String? _nomedocliente;
  String get nomedocliente => _nomedocliente ?? '';
  bool hasNomedocliente() => _nomedocliente != null;

  // "time" field.
  DateTime? _time;
  DateTime? get time => _time;
  bool hasTime() => _time != null;

  // "usersREF" field.
  DocumentReference? _usersREF;
  DocumentReference? get usersREF => _usersREF;
  bool hasUsersREF() => _usersREF != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  // "ratings" field.
  List<int>? _ratings;
  List<int> get ratings => _ratings ?? const [];
  bool hasRatings() => _ratings != null;

  // "rating" field.
  int? _rating;
  int get rating => _rating ?? 0;
  bool hasRating() => _rating != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _avaliacao = snapshotData['avaliacao'] as String?;
    _nomedafesta = snapshotData['nomedafesta'] as String?;
    _nomedocliente = snapshotData['nomedocliente'] as String?;
    _time = snapshotData['time'] as DateTime?;
    _usersREF = snapshotData['usersREF'] as DocumentReference?;
    _image = snapshotData['image'] as String?;
    _ratings = getDataList(snapshotData['ratings']);
    _rating = castToType<int>(snapshotData['rating']);
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('AVALIACAO_de_USUARIO')
          : FirebaseFirestore.instance.collectionGroup('AVALIACAO_de_USUARIO');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('AVALIACAO_de_USUARIO').doc(id);

  static Stream<AVALIACAODeUSUARIORecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AVALIACAODeUSUARIORecord.fromSnapshot(s));

  static Future<AVALIACAODeUSUARIORecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => AVALIACAODeUSUARIORecord.fromSnapshot(s));

  static AVALIACAODeUSUARIORecord fromSnapshot(DocumentSnapshot snapshot) =>
      AVALIACAODeUSUARIORecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AVALIACAODeUSUARIORecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AVALIACAODeUSUARIORecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AVALIACAODeUSUARIORecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AVALIACAODeUSUARIORecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAVALIACAODeUSUARIORecordData({
  String? avaliacao,
  String? nomedafesta,
  String? nomedocliente,
  DateTime? time,
  DocumentReference? usersREF,
  String? image,
  int? rating,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'avaliacao': avaliacao,
      'nomedafesta': nomedafesta,
      'nomedocliente': nomedocliente,
      'time': time,
      'usersREF': usersREF,
      'image': image,
      'rating': rating,
    }.withoutNulls,
  );

  return firestoreData;
}

class AVALIACAODeUSUARIORecordDocumentEquality
    implements Equality<AVALIACAODeUSUARIORecord> {
  const AVALIACAODeUSUARIORecordDocumentEquality();

  @override
  bool equals(AVALIACAODeUSUARIORecord? e1, AVALIACAODeUSUARIORecord? e2) {
    const listEquality = ListEquality();
    return e1?.avaliacao == e2?.avaliacao &&
        e1?.nomedafesta == e2?.nomedafesta &&
        e1?.nomedocliente == e2?.nomedocliente &&
        e1?.time == e2?.time &&
        e1?.usersREF == e2?.usersREF &&
        e1?.image == e2?.image &&
        listEquality.equals(e1?.ratings, e2?.ratings) &&
        e1?.rating == e2?.rating;
  }

  @override
  int hash(AVALIACAODeUSUARIORecord? e) => const ListEquality().hash([
        e?.avaliacao,
        e?.nomedafesta,
        e?.nomedocliente,
        e?.time,
        e?.usersREF,
        e?.image,
        e?.ratings,
        e?.rating
      ]);

  @override
  bool isValidKey(Object? o) => o is AVALIACAODeUSUARIORecord;
}
