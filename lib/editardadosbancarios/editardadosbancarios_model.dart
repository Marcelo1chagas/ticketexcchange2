import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/dadosalterados_sucesso_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_choice_chips.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:math';
import 'dart:ui';
import '/index.dart';
import 'editardadosbancarios_widget.dart' show EditardadosbancariosWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:provider/provider.dart';

class EditardadosbancariosModel
    extends FlutterFlowModel<EditardadosbancariosWidget> {
  ///  Local state fields for this page.

  bool chaveCPF = false;

  bool chaveCelular = false;

  bool chaveEmail = false;

  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode3;
  TextEditingController? textController3;
  final textFieldMask3 = MaskTextInputFormatter(mask: '#######-#');
  String? Function(BuildContext, String?)? textController3Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode4;
  TextEditingController? textController4;
  String? Function(BuildContext, String?)? textController4Validator;
  // State field(s) for DropCid widget.
  String? dropCidValue;
  FormFieldController<String>? dropCidValueController;
  // State field(s) for ChoiceChips widget.
  FormFieldController<List<String>>? choiceChipsValueController;
  String? get choiceChipsValue =>
      choiceChipsValueController?.value?.firstOrNull;
  set choiceChipsValue(String? val) =>
      choiceChipsValueController?.value = val != null ? [val] : [];
  // State field(s) for chavepix_CPF widget.
  FocusNode? chavepixCPFFocusNode;
  TextEditingController? chavepixCPFTextController;
  final chavepixCPFMask = MaskTextInputFormatter(mask: '###.###.###-##');
  String? Function(BuildContext, String?)? chavepixCPFTextControllerValidator;
  // State field(s) for chavepix_Celular widget.
  FocusNode? chavepixCelularFocusNode;
  TextEditingController? chavepixCelularTextController;
  final chavepixCelularMask = MaskTextInputFormatter(mask: '(##) #####-####');
  String? Function(BuildContext, String?)?
      chavepixCelularTextControllerValidator;
  // State field(s) for chavepix_Email widget.
  FocusNode? chavepixEmailFocusNode;
  TextEditingController? chavepixEmailTextController;
  String? Function(BuildContext, String?)? chavepixEmailTextControllerValidator;
  // State field(s) for chavepix_antiga widget.
  FocusNode? chavepixAntigaFocusNode;
  TextEditingController? chavepixAntigaTextController;
  String? Function(BuildContext, String?)?
      chavepixAntigaTextControllerValidator;

  @override
  void initState(BuildContext context) {}

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

    chavepixCPFFocusNode?.dispose();
    chavepixCPFTextController?.dispose();

    chavepixCelularFocusNode?.dispose();
    chavepixCelularTextController?.dispose();

    chavepixEmailFocusNode?.dispose();
    chavepixEmailTextController?.dispose();

    chavepixAntigaFocusNode?.dispose();
    chavepixAntigaTextController?.dispose();
  }
}
