import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/components/dadosalterados_sucesso_widget.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/upload_data.dart';
import 'dart:ui';
import '/index.dart';
import 'editaringresso_widget.dart' show EditaringressoWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:provider/provider.dart';
import 'package:share_plus/share_plus.dart';

class EditaringressoModel extends FlutterFlowModel<EditaringressoWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for nomedoevento widget.
  FocusNode? nomedoeventoFocusNode;
  TextEditingController? nomedoeventoTextController;
  String? Function(BuildContext, String?)? nomedoeventoTextControllerValidator;
  // State field(s) for valordoingresso widget.
  FocusNode? valordoingressoFocusNode;
  TextEditingController? valordoingressoTextController;
  String? Function(BuildContext, String?)?
      valordoingressoTextControllerValidator;
  // State field(s) for localdoevento widget.
  FocusNode? localdoeventoFocusNode;
  TextEditingController? localdoeventoTextController;
  String? Function(BuildContext, String?)? localdoeventoTextControllerValidator;
  // State field(s) for datadoevento widget.
  FocusNode? datadoeventoFocusNode;
  TextEditingController? datadoeventoTextController;
  final datadoeventoMask = MaskTextInputFormatter(mask: '##/##?33');
  String? Function(BuildContext, String?)? datadoeventoTextControllerValidator;
  // State field(s) for descricao widget.
  FocusNode? descricaoFocusNode;
  TextEditingController? descricaoTextController;
  String? Function(BuildContext, String?)? descricaoTextControllerValidator;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  String currentPageLink = '';

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    nomedoeventoFocusNode?.dispose();
    nomedoeventoTextController?.dispose();

    valordoingressoFocusNode?.dispose();
    valordoingressoTextController?.dispose();

    localdoeventoFocusNode?.dispose();
    localdoeventoTextController?.dispose();

    datadoeventoFocusNode?.dispose();
    datadoeventoTextController?.dispose();

    descricaoFocusNode?.dispose();
    descricaoTextController?.dispose();
  }
}
