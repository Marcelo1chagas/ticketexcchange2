// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class IdClientePagarMEStruct extends FFFirebaseStruct {
  IdClientePagarMEStruct({
    String? idCliente,
    String? idCobranca,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _idCliente = idCliente,
        _idCobranca = idCobranca,
        super(firestoreUtilData);

  // "idCliente" field.
  String? _idCliente;
  String get idCliente => _idCliente ?? '';
  set idCliente(String? val) => _idCliente = val;

  bool hasIdCliente() => _idCliente != null;

  // "idCobranca" field.
  String? _idCobranca;
  String get idCobranca => _idCobranca ?? '';
  set idCobranca(String? val) => _idCobranca = val;

  bool hasIdCobranca() => _idCobranca != null;

  static IdClientePagarMEStruct fromMap(Map<String, dynamic> data) =>
      IdClientePagarMEStruct(
        idCliente: data['idCliente'] as String?,
        idCobranca: data['idCobranca'] as String?,
      );

  static IdClientePagarMEStruct? maybeFromMap(dynamic data) => data is Map
      ? IdClientePagarMEStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'idCliente': _idCliente,
        'idCobranca': _idCobranca,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'idCliente': serializeParam(
          _idCliente,
          ParamType.String,
        ),
        'idCobranca': serializeParam(
          _idCobranca,
          ParamType.String,
        ),
      }.withoutNulls;

  static IdClientePagarMEStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      IdClientePagarMEStruct(
        idCliente: deserializeParam(
          data['idCliente'],
          ParamType.String,
          false,
        ),
        idCobranca: deserializeParam(
          data['idCobranca'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'IdClientePagarMEStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is IdClientePagarMEStruct &&
        idCliente == other.idCliente &&
        idCobranca == other.idCobranca;
  }

  @override
  int get hashCode => const ListEquality().hash([idCliente, idCobranca]);
}

IdClientePagarMEStruct createIdClientePagarMEStruct({
  String? idCliente,
  String? idCobranca,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    IdClientePagarMEStruct(
      idCliente: idCliente,
      idCobranca: idCobranca,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

IdClientePagarMEStruct? updateIdClientePagarMEStruct(
  IdClientePagarMEStruct? idClientePagarME, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    idClientePagarME
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addIdClientePagarMEStructData(
  Map<String, dynamic> firestoreData,
  IdClientePagarMEStruct? idClientePagarME,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (idClientePagarME == null) {
    return;
  }
  if (idClientePagarME.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && idClientePagarME.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final idClientePagarMEData =
      getIdClientePagarMEFirestoreData(idClientePagarME, forFieldValue);
  final nestedData =
      idClientePagarMEData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = idClientePagarME.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getIdClientePagarMEFirestoreData(
  IdClientePagarMEStruct? idClientePagarME, [
  bool forFieldValue = false,
]) {
  if (idClientePagarME == null) {
    return {};
  }
  final firestoreData = mapToFirestore(idClientePagarME.toMap());

  // Add any Firestore field values
  idClientePagarME.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getIdClientePagarMEListFirestoreData(
  List<IdClientePagarMEStruct>? idClientePagarMEs,
) =>
    idClientePagarMEs
        ?.map((e) => getIdClientePagarMEFirestoreData(e, true))
        .toList() ??
    [];
