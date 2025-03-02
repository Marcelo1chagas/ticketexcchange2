import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:math';
import 'dart:ui';
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'c_h_e_c_k_o_u_tleilao_widget.dart' show CHECKOUTleilaoWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CHECKOUTleilaoModel extends FlutterFlowModel<CHECKOUTleilaoWidget> {
  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (GerarPagamento PIX)] action in pix widget.
  ApiCallResponse? pedidoPix;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
