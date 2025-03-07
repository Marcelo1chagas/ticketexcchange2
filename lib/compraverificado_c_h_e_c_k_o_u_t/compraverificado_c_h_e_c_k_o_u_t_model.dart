import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_data.dart';
import 'dart:ui';
import '/index.dart';
import 'compraverificado_c_h_e_c_k_o_u_t_widget.dart'
    show CompraverificadoCHECKOUTWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CompraverificadoCHECKOUTModel
    extends FlutterFlowModel<CompraverificadoCHECKOUTWidget> {
  ///  State fields for stateful widgets in this page.

  bool isDataUploading1 = false;
  FFUploadedFile uploadedLocalFile1 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl1 = '';

  bool isDataUploading2 = false;
  FFUploadedFile uploadedLocalFile2 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl2 = '';

  // Stores action output result for [Backend Call - API (GerarPagamento PIX)] action in Button widget.
  ApiCallResponse? pedidoPIX2;
  // Stores action output result for [Backend Call - API (GerarPagamento PIX)] action in Button widget.
  ApiCallResponse? pedidoPIX;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
