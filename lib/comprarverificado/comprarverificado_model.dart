import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/components/errodesconhecido_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 'comprarverificado_widget.dart' show ComprarverificadoWidget;
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:share_plus/share_plus.dart';

class ComprarverificadoModel extends FlutterFlowModel<ComprarverificadoWidget> {
  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (Criar Plano de Assinatura PagarME)] action in Button widget.
  ApiCallResponse? planoCriado;
  String currentPageLink = '';

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
