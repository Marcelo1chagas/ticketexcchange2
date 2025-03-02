// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PagarMEPIXStruct extends FFFirebaseStruct {
  PagarMEPIXStruct({
    String? chavePIX,
    String? qrCodeURL,
    String? status,
    String? mensagemERRO,
    String? idCobranca,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _chavePIX = chavePIX,
        _qrCodeURL = qrCodeURL,
        _status = status,
        _mensagemERRO = mensagemERRO,
        _idCobranca = idCobranca,
        super(firestoreUtilData);

  // "ChavePIX" field.
  String? _chavePIX;
  String get chavePIX => _chavePIX ?? '';
  set chavePIX(String? val) => _chavePIX = val;

  bool hasChavePIX() => _chavePIX != null;

  // "QrCodeURL" field.
  String? _qrCodeURL;
  String get qrCodeURL => _qrCodeURL ?? '';
  set qrCodeURL(String? val) => _qrCodeURL = val;

  bool hasQrCodeURL() => _qrCodeURL != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  set status(String? val) => _status = val;

  bool hasStatus() => _status != null;

  // "mensagemERRO" field.
  String? _mensagemERRO;
  String get mensagemERRO => _mensagemERRO ?? '';
  set mensagemERRO(String? val) => _mensagemERRO = val;

  bool hasMensagemERRO() => _mensagemERRO != null;

  // "idCobranca" field.
  String? _idCobranca;
  String get idCobranca => _idCobranca ?? '';
  set idCobranca(String? val) => _idCobranca = val;

  bool hasIdCobranca() => _idCobranca != null;

  static PagarMEPIXStruct fromMap(Map<String, dynamic> data) =>
      PagarMEPIXStruct(
        chavePIX: data['ChavePIX'] as String?,
        qrCodeURL: data['QrCodeURL'] as String?,
        status: data['status'] as String?,
        mensagemERRO: data['mensagemERRO'] as String?,
        idCobranca: data['idCobranca'] as String?,
      );

  static PagarMEPIXStruct? maybeFromMap(dynamic data) => data is Map
      ? PagarMEPIXStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'ChavePIX': _chavePIX,
        'QrCodeURL': _qrCodeURL,
        'status': _status,
        'mensagemERRO': _mensagemERRO,
        'idCobranca': _idCobranca,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'ChavePIX': serializeParam(
          _chavePIX,
          ParamType.String,
        ),
        'QrCodeURL': serializeParam(
          _qrCodeURL,
          ParamType.String,
        ),
        'status': serializeParam(
          _status,
          ParamType.String,
        ),
        'mensagemERRO': serializeParam(
          _mensagemERRO,
          ParamType.String,
        ),
        'idCobranca': serializeParam(
          _idCobranca,
          ParamType.String,
        ),
      }.withoutNulls;

  static PagarMEPIXStruct fromSerializableMap(Map<String, dynamic> data) =>
      PagarMEPIXStruct(
        chavePIX: deserializeParam(
          data['ChavePIX'],
          ParamType.String,
          false,
        ),
        qrCodeURL: deserializeParam(
          data['QrCodeURL'],
          ParamType.String,
          false,
        ),
        status: deserializeParam(
          data['status'],
          ParamType.String,
          false,
        ),
        mensagemERRO: deserializeParam(
          data['mensagemERRO'],
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
  String toString() => 'PagarMEPIXStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is PagarMEPIXStruct &&
        chavePIX == other.chavePIX &&
        qrCodeURL == other.qrCodeURL &&
        status == other.status &&
        mensagemERRO == other.mensagemERRO &&
        idCobranca == other.idCobranca;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([chavePIX, qrCodeURL, status, mensagemERRO, idCobranca]);
}

PagarMEPIXStruct createPagarMEPIXStruct({
  String? chavePIX,
  String? qrCodeURL,
  String? status,
  String? mensagemERRO,
  String? idCobranca,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    PagarMEPIXStruct(
      chavePIX: chavePIX,
      qrCodeURL: qrCodeURL,
      status: status,
      mensagemERRO: mensagemERRO,
      idCobranca: idCobranca,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

PagarMEPIXStruct? updatePagarMEPIXStruct(
  PagarMEPIXStruct? pagarMEPIX, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    pagarMEPIX
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addPagarMEPIXStructData(
  Map<String, dynamic> firestoreData,
  PagarMEPIXStruct? pagarMEPIX,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (pagarMEPIX == null) {
    return;
  }
  if (pagarMEPIX.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && pagarMEPIX.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final pagarMEPIXData = getPagarMEPIXFirestoreData(pagarMEPIX, forFieldValue);
  final nestedData = pagarMEPIXData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = pagarMEPIX.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getPagarMEPIXFirestoreData(
  PagarMEPIXStruct? pagarMEPIX, [
  bool forFieldValue = false,
]) {
  if (pagarMEPIX == null) {
    return {};
  }
  final firestoreData = mapToFirestore(pagarMEPIX.toMap());

  // Add any Firestore field values
  pagarMEPIX.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getPagarMEPIXListFirestoreData(
  List<PagarMEPIXStruct>? pagarMEPIXs,
) =>
    pagarMEPIXs?.map((e) => getPagarMEPIXFirestoreData(e, true)).toList() ?? [];
