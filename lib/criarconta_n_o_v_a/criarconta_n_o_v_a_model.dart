import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/backend/push_notifications/push_notifications_util.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:math';
import 'dart:ui';
import '/flutter_flow/random_data_util.dart' as random_data;
import '/index.dart';
import 'criarconta_n_o_v_a_widget.dart' show CriarcontaNOVAWidget;
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:provider/provider.dart';

class CriarcontaNOVAModel extends FlutterFlowModel<CriarcontaNOVAWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for nome widget.
  FocusNode? nomeFocusNode;
  TextEditingController? nomeTextController;
  String? Function(BuildContext, String?)? nomeTextControllerValidator;
  String? _nomeTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo Obrigatório';
    }

    return null;
  }

  // State field(s) for email widget.
  FocusNode? emailFocusNode;
  TextEditingController? emailTextController;
  String? Function(BuildContext, String?)? emailTextControllerValidator;
  String? _emailTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo Obrigatório';
    }

    if (!RegExp(kTextValidatorEmailRegex).hasMatch(val)) {
      return 'Inválido';
    }
    return null;
  }

  // State field(s) for cpf widget.
  FocusNode? cpfFocusNode;
  TextEditingController? cpfTextController;
  final cpfMask = MaskTextInputFormatter(mask: '###########');
  String? Function(BuildContext, String?)? cpfTextControllerValidator;
  String? _cpfTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo Obrigatório';
    }

    return null;
  }

  // State field(s) for ddd widget.
  FocusNode? dddFocusNode;
  TextEditingController? dddTextController;
  final dddMask = MaskTextInputFormatter(mask: '##');
  String? Function(BuildContext, String?)? dddTextControllerValidator;
  String? _dddTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo Obrigatório';
    }

    return null;
  }

  // State field(s) for celular widget.
  FocusNode? celularFocusNode;
  TextEditingController? celularTextController;
  final celularMask = MaskTextInputFormatter(mask: '#########');
  String? Function(BuildContext, String?)? celularTextControllerValidator;
  String? _celularTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo Obrigatório';
    }

    return null;
  }

  // State field(s) for datadenascimento widget.
  FocusNode? datadenascimentoFocusNode;
  TextEditingController? datadenascimentoTextController;
  final datadenascimentoMask = MaskTextInputFormatter(mask: '##/##/####');
  String? Function(BuildContext, String?)?
      datadenascimentoTextControllerValidator;
  String? _datadenascimentoTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo Obrigatório';
    }

    return null;
  }

  // State field(s) for cep widget.
  FocusNode? cepFocusNode;
  TextEditingController? cepTextController;
  final cepMask = MaskTextInputFormatter(mask: '########');
  String? Function(BuildContext, String?)? cepTextControllerValidator;
  String? _cepTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'CEP (Código Postal) is required';
    }

    return null;
  }

  // State field(s) for endereco widget.
  FocusNode? enderecoFocusNode;
  TextEditingController? enderecoTextController;
  String? Function(BuildContext, String?)? enderecoTextControllerValidator;
  String? _enderecoTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Endereço is required';
    }

    return null;
  }

  // State field(s) for uf widget.
  FocusNode? ufFocusNode;
  TextEditingController? ufTextController;
  String? Function(BuildContext, String?)? ufTextControllerValidator;
  String? _ufTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo Obrigatório';
    }

    return null;
  }

  // State field(s) for cidade widget.
  FocusNode? cidadeFocusNode;
  TextEditingController? cidadeTextController;
  String? Function(BuildContext, String?)? cidadeTextControllerValidator;
  String? _cidadeTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo Obrigatório';
    }

    return null;
  }

  // State field(s) for senha widget.
  FocusNode? senhaFocusNode;
  TextEditingController? senhaTextController;
  late bool senhaVisibility;
  String? Function(BuildContext, String?)? senhaTextControllerValidator;
  String? _senhaTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo Obrigatório';
    }

    return null;
  }

  // State field(s) for confirmarsenha widget.
  FocusNode? confirmarsenhaFocusNode;
  TextEditingController? confirmarsenhaTextController;
  late bool confirmarsenhaVisibility;
  String? Function(BuildContext, String?)?
      confirmarsenhaTextControllerValidator;
  String? _confirmarsenhaTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo Obrigatório';
    }

    return null;
  }

  // Stores action output result for [Backend Call - API (Criar Cliente PagarME)] action in Button widget.
  ApiCallResponse? sucessoCliente1;

  @override
  void initState(BuildContext context) {
    nomeTextControllerValidator = _nomeTextControllerValidator;
    emailTextControllerValidator = _emailTextControllerValidator;
    cpfTextControllerValidator = _cpfTextControllerValidator;
    dddTextControllerValidator = _dddTextControllerValidator;
    celularTextControllerValidator = _celularTextControllerValidator;
    datadenascimentoTextControllerValidator =
        _datadenascimentoTextControllerValidator;
    cepTextControllerValidator = _cepTextControllerValidator;
    enderecoTextControllerValidator = _enderecoTextControllerValidator;
    ufTextControllerValidator = _ufTextControllerValidator;
    cidadeTextControllerValidator = _cidadeTextControllerValidator;
    senhaVisibility = false;
    senhaTextControllerValidator = _senhaTextControllerValidator;
    confirmarsenhaVisibility = false;
    confirmarsenhaTextControllerValidator =
        _confirmarsenhaTextControllerValidator;
  }

  @override
  void dispose() {
    nomeFocusNode?.dispose();
    nomeTextController?.dispose();

    emailFocusNode?.dispose();
    emailTextController?.dispose();

    cpfFocusNode?.dispose();
    cpfTextController?.dispose();

    dddFocusNode?.dispose();
    dddTextController?.dispose();

    celularFocusNode?.dispose();
    celularTextController?.dispose();

    datadenascimentoFocusNode?.dispose();
    datadenascimentoTextController?.dispose();

    cepFocusNode?.dispose();
    cepTextController?.dispose();

    enderecoFocusNode?.dispose();
    enderecoTextController?.dispose();

    ufFocusNode?.dispose();
    ufTextController?.dispose();

    cidadeFocusNode?.dispose();
    cidadeTextController?.dispose();

    senhaFocusNode?.dispose();
    senhaTextController?.dispose();

    confirmarsenhaFocusNode?.dispose();
    confirmarsenhaTextController?.dispose();
  }
}
