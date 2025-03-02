import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'ativarnotficacao_widget.dart' show AtivarnotficacaoWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AtivarnotficacaoModel extends FlutterFlowModel<AtivarnotficacaoWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for SwitchDOAPP widget.
  bool? switchDOAPPValue;
  // State field(s) for SwitchEMAIL widget.
  bool? switchEMAILValue;
  // State field(s) for SwitchNOAPP widget.
  bool? switchNOAPPValue;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
