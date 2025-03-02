import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/backend/push_notifications/push_notifications_util.dart';
import '/components/ingresso_adicionado_widget.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/upload_data.dart';
import 'dart:ui';
import '/flutter_flow/random_data_util.dart' as random_data;
import '/index.dart';
import 'adicionar_ingresso_widget.dart' show AdicionarIngressoWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:provider/provider.dart';
import 'package:share_plus/share_plus.dart';

class AdicionarIngressoModel extends FlutterFlowModel<AdicionarIngressoWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for nomedoevento widget.
  FocusNode? nomedoeventoFocusNode;
  TextEditingController? nomedoeventoTextController;
  String? Function(BuildContext, String?)? nomedoeventoTextControllerValidator;
  String? _nomedoeventoTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo Obrigatório';
    }

    return null;
  }

  // State field(s) for valordoingresso widget.
  FocusNode? valordoingressoFocusNode;
  TextEditingController? valordoingressoTextController;
  String? Function(BuildContext, String?)?
      valordoingressoTextControllerValidator;
  String? _valordoingressoTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo Obrigatório';
    }

    return null;
  }

  // State field(s) for valororiginal widget.
  FocusNode? valororiginalFocusNode;
  TextEditingController? valororiginalTextController;
  String? Function(BuildContext, String?)? valororiginalTextControllerValidator;
  String? _valororiginalTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo Obrigatório';
    }

    return null;
  }

  // State field(s) for localdoevento widget.
  FocusNode? localdoeventoFocusNode;
  TextEditingController? localdoeventoTextController;
  String? Function(BuildContext, String?)? localdoeventoTextControllerValidator;
  String? _localdoeventoTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo Obrigatório';
    }

    return null;
  }

  // State field(s) for datadoevento widget.
  FocusNode? datadoeventoFocusNode;
  TextEditingController? datadoeventoTextController;
  final datadoeventoMask = MaskTextInputFormatter(mask: '##/##?33');
  String? Function(BuildContext, String?)? datadoeventoTextControllerValidator;
  String? _datadoeventoTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo Obrigatório';
    }

    return null;
  }

  // State field(s) for plataformaoficicial widget.
  FocusNode? plataformaoficicialFocusNode;
  TextEditingController? plataformaoficicialTextController;
  String? Function(BuildContext, String?)?
      plataformaoficicialTextControllerValidator;
  String? _plataformaoficicialTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo Obrigatório';
    }

    return null;
  }

  // State field(s) for descricao widget.
  FocusNode? descricaoFocusNode;
  TextEditingController? descricaoTextController;
  String? Function(BuildContext, String?)? descricaoTextControllerValidator;
  String? _descricaoTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo Obrigatório';
    }

    return null;
  }

  // State field(s) for DropCid widget.
  String? dropCidValue;
  FormFieldController<String>? dropCidValueController;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  String currentPageLink = '';

  @override
  void initState(BuildContext context) {
    nomedoeventoTextControllerValidator = _nomedoeventoTextControllerValidator;
    valordoingressoTextControllerValidator =
        _valordoingressoTextControllerValidator;
    valororiginalTextControllerValidator =
        _valororiginalTextControllerValidator;
    localdoeventoTextControllerValidator =
        _localdoeventoTextControllerValidator;
    datadoeventoTextControllerValidator = _datadoeventoTextControllerValidator;
    plataformaoficicialTextControllerValidator =
        _plataformaoficicialTextControllerValidator;
    descricaoTextControllerValidator = _descricaoTextControllerValidator;
  }

  @override
  void dispose() {
    nomedoeventoFocusNode?.dispose();
    nomedoeventoTextController?.dispose();

    valordoingressoFocusNode?.dispose();
    valordoingressoTextController?.dispose();

    valororiginalFocusNode?.dispose();
    valororiginalTextController?.dispose();

    localdoeventoFocusNode?.dispose();
    localdoeventoTextController?.dispose();

    datadoeventoFocusNode?.dispose();
    datadoeventoTextController?.dispose();

    plataformaoficicialFocusNode?.dispose();
    plataformaoficicialTextController?.dispose();

    descricaoFocusNode?.dispose();
    descricaoTextController?.dispose();
  }
}
