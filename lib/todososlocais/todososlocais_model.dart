import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:ui';
import '/index.dart';
import 'todososlocais_widget.dart' show TodososlocaisWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class TodososlocaisModel extends FlutterFlowModel<TodososlocaisWidget> {
  ///  Local state fields for this page.

  bool belohorizonte = false;

  bool saopaulo = false;

  bool riodejaneiro = false;

  bool curitiba = false;

  bool vitoria = false;

  bool brasilia = false;

  bool recife = false;

  bool balneario = false;

  bool florianopolis = false;

  bool fortaleza = false;

  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // State field(s) for DropCid widget.
  String? dropCidValue;
  FormFieldController<String>? dropCidValueController;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
