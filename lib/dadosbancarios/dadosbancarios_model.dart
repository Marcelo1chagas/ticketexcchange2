import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/dadosbancarios_sucesso_widget.dart';
import '/flutter_flow/flutter_flow_choice_chips.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:ui';
import '/index.dart';
import 'dadosbancarios_widget.dart' show DadosbancariosWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:provider/provider.dart';
import 'package:share_plus/share_plus.dart';

class DadosbancariosModel extends FlutterFlowModel<DadosbancariosWidget> {
  ///  Local state fields for this page.

  bool chaveCPF = false;

  bool chaveEmail = false;

  bool chaveTelefone = false;

  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  String? _textController1Validator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo Obrigatório';
    }

    return null;
  }

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  String? _textController2Validator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo Obrigatório';
    }

    return null;
  }

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode3;
  TextEditingController? textController3;
  final textFieldMask3 = MaskTextInputFormatter(mask: '#######-#');
  String? Function(BuildContext, String?)? textController3Validator;
  String? _textController3Validator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo Obrigatório';
    }

    return null;
  }

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode4;
  TextEditingController? textController4;
  final textFieldMask4 = MaskTextInputFormatter(mask: '####');
  String? Function(BuildContext, String?)? textController4Validator;
  String? _textController4Validator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo Obrigatório';
    }

    return null;
  }

  // State field(s) for DropCid widget.
  String? dropCidValue;
  FormFieldController<String>? dropCidValueController;
  // State field(s) for ChoiceChips widget.
  FormFieldController<List<String>>? choiceChipsValueController;
  String? get choiceChipsValue =>
      choiceChipsValueController?.value?.firstOrNull;
  set choiceChipsValue(String? val) =>
      choiceChipsValueController?.value = val != null ? [val] : [];
  // State field(s) for chavepix_celular widget.
  FocusNode? chavepixCelularFocusNode;
  TextEditingController? chavepixCelularTextController;
  final chavepixCelularMask = MaskTextInputFormatter(mask: '(##) #####-####');
  String? Function(BuildContext, String?)?
      chavepixCelularTextControllerValidator;
  // State field(s) for chavepix_CPF widget.
  FocusNode? chavepixCPFFocusNode;
  TextEditingController? chavepixCPFTextController;
  final chavepixCPFMask = MaskTextInputFormatter(mask: '###.###.###-##');
  String? Function(BuildContext, String?)? chavepixCPFTextControllerValidator;
  // State field(s) for chavepix_email widget.
  FocusNode? chavepixEmailFocusNode;
  TextEditingController? chavepixEmailTextController;
  String? Function(BuildContext, String?)? chavepixEmailTextControllerValidator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode5;
  TextEditingController? textController8;
  String? Function(BuildContext, String?)? textController8Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode6;
  TextEditingController? textController9;
  String? Function(BuildContext, String?)? textController9Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode7;
  TextEditingController? textController10;
  String? Function(BuildContext, String?)? textController10Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode8;
  TextEditingController? textController11;
  String? Function(BuildContext, String?)? textController11Validator;
  String currentPageLink = '';

  @override
  void initState(BuildContext context) {
    textController1Validator = _textController1Validator;
    textController2Validator = _textController2Validator;
    textController3Validator = _textController3Validator;
    textController4Validator = _textController4Validator;
  }

  @override
  void dispose() {
    textFieldFocusNode1?.dispose();
    textController1?.dispose();

    textFieldFocusNode2?.dispose();
    textController2?.dispose();

    textFieldFocusNode3?.dispose();
    textController3?.dispose();

    textFieldFocusNode4?.dispose();
    textController4?.dispose();

    chavepixCelularFocusNode?.dispose();
    chavepixCelularTextController?.dispose();

    chavepixCPFFocusNode?.dispose();
    chavepixCPFTextController?.dispose();

    chavepixEmailFocusNode?.dispose();
    chavepixEmailTextController?.dispose();

    textFieldFocusNode5?.dispose();
    textController8?.dispose();

    textFieldFocusNode6?.dispose();
    textController9?.dispose();

    textFieldFocusNode7?.dispose();
    textController10?.dispose();

    textFieldFocusNode8?.dispose();
    textController11?.dispose();
  }
}
