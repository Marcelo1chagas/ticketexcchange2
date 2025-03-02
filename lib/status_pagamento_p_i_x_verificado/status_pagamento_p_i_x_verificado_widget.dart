import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/backend/push_notifications/push_notifications_util.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 'dart:async';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'status_pagamento_p_i_x_verificado_model.dart';
export 'status_pagamento_p_i_x_verificado_model.dart';

class StatusPagamentoPIXVerificadoWidget extends StatefulWidget {
  const StatusPagamentoPIXVerificadoWidget({
    super.key,
    required this.usersREF,
  });

  final DocumentReference? usersREF;

  static String routeName = 'statusPagamentoPIXVerificado';
  static String routePath = 'statusPagamentoPIXVerificado';

  @override
  State<StatusPagamentoPIXVerificadoWidget> createState() =>
      _StatusPagamentoPIXVerificadoWidgetState();
}

class _StatusPagamentoPIXVerificadoWidgetState
    extends State<StatusPagamentoPIXVerificadoWidget> {
  late StatusPagamentoPIXVerificadoModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => StatusPagamentoPIXVerificadoModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'statusPagamentoPIXVerificado'});
    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return FutureBuilder<ApiCallResponse>(
      future: (_model.apiRequestCompleter ??= Completer<ApiCallResponse>()
            ..complete(ObterPagamentoPagarMECall.call(
              chargeId: FFAppState().idCobrancaPAGARME,
            )))
          .future,
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Scaffold(
            backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
            body: Center(
              child: SizedBox(
                width: 50.0,
                height: 50.0,
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(
                    FlutterFlowTheme.of(context).primary,
                  ),
                ),
              ),
            ),
          );
        }
        final statusPagamentoPIXVerificadoObterPagamentoPagarMEResponse =
            snapshot.data!;

        return Title(
            title: 'Notificações',
            color: FlutterFlowTheme.of(context).primary.withAlpha(0XFF),
            child: GestureDetector(
              onTap: () {
                FocusScope.of(context).unfocus();
                FocusManager.instance.primaryFocus?.unfocus();
              },
              child: Scaffold(
                key: scaffoldKey,
                backgroundColor:
                    FlutterFlowTheme.of(context).secondaryBackground,
                body: SafeArea(
                  top: true,
                  child: StreamBuilder<UsersRecord>(
                    stream: UsersRecord.getDocument(widget!.usersREF!),
                    builder: (context, snapshot) {
                      // Customize what your widget looks like when it's loading.
                      if (!snapshot.hasData) {
                        return Center(
                          child: SizedBox(
                            width: 50.0,
                            height: 50.0,
                            child: CircularProgressIndicator(
                              valueColor: AlwaysStoppedAnimation<Color>(
                                FlutterFlowTheme.of(context).primary,
                              ),
                            ),
                          ),
                        );
                      }

                      final columnUsersRecord = snapshot.data!;

                      return SingleChildScrollView(
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            SingleChildScrollView(
                              primary: false,
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            16.0, 0.0, 0.0, 0.0),
                                        child: Text(
                                          'Status Pagamento ',
                                          style: FlutterFlowTheme.of(context)
                                              .headlineSmall
                                              .override(
                                                fontFamily:
                                                    FlutterFlowTheme.of(context)
                                                        .headlineSmallFamily,
                                                letterSpacing: 0.0,
                                                useGoogleFonts: GoogleFonts
                                                        .asMap()
                                                    .containsKey(FlutterFlowTheme
                                                            .of(context)
                                                        .headlineSmallFamily),
                                              ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            16.0, 4.0, 0.0, 0.0),
                                        child: Text(
                                          'Realize o pagamento e atualize antes de sair da página.',
                                          style: FlutterFlowTheme.of(context)
                                              .labelMedium
                                              .override(
                                                fontFamily:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMediumFamily,
                                                letterSpacing: 0.0,
                                                useGoogleFonts: GoogleFonts
                                                        .asMap()
                                                    .containsKey(
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .labelMediumFamily),
                                              ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Align(
                                    alignment: AlignmentDirectional(0.0, -1.0),
                                    child: Padding(
                                      padding: EdgeInsets.all(16.0),
                                      child: Container(
                                        width: double.infinity,
                                        constraints: BoxConstraints(
                                          maxWidth: 1170.0,
                                        ),
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(12.0),
                                          border: Border.all(
                                            color: FlutterFlowTheme.of(context)
                                                .primaryBackground,
                                            width: 2.0,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        24.0, 0.0, 24.0, 0.0),
                                    child: SingleChildScrollView(
                                      primary: false,
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Material(
                                            color: Colors.transparent,
                                            elevation: 2.0,
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(16.0),
                                            ),
                                            child: Container(
                                              width: MediaQuery.sizeOf(context)
                                                      .width *
                                                  0.9,
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryBackground,
                                                borderRadius:
                                                    BorderRadius.circular(16.0),
                                              ),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        24.0, 24.0, 24.0, 24.0),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  children: [
                                                    Container(
                                                      width: 250.0,
                                                      height: 250.0,
                                                      decoration: BoxDecoration(
                                                        color: Colors.white,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(16.0),
                                                        border: Border.all(
                                                          color:
                                                              Color(0xFFE0E0E0),
                                                          width: 2.0,
                                                        ),
                                                      ),
                                                      child: ClipRRect(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8.0),
                                                        child: Image.network(
                                                          '',
                                                          width: 200.0,
                                                          height: 200.0,
                                                          fit: BoxFit.cover,
                                                        ),
                                                      ),
                                                    ),
                                                    Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      children: [
                                                        Text(
                                                          ' QR Code ou Chave Pix',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .titleMedium
                                                              .override(
                                                                fontFamily: FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleMediumFamily,
                                                                letterSpacing:
                                                                    0.0,
                                                                useGoogleFonts: GoogleFonts
                                                                        .asMap()
                                                                    .containsKey(
                                                                        FlutterFlowTheme.of(context)
                                                                            .titleMediumFamily),
                                                              ),
                                                        ),
                                                        Text(
                                                          FFAppState()
                                                              .ChavePixPagarME,
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodySmall
                                                              .override(
                                                                fontFamily: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodySmallFamily,
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryText,
                                                                letterSpacing:
                                                                    0.0,
                                                                useGoogleFonts: GoogleFonts
                                                                        .asMap()
                                                                    .containsKey(
                                                                        FlutterFlowTheme.of(context)
                                                                            .bodySmallFamily),
                                                              ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      15.0,
                                                                      0.0,
                                                                      0.0),
                                                          child: InkWell(
                                                            splashColor: Colors
                                                                .transparent,
                                                            focusColor: Colors
                                                                .transparent,
                                                            hoverColor: Colors
                                                                .transparent,
                                                            highlightColor:
                                                                Colors
                                                                    .transparent,
                                                            onTap: () async {
                                                              logFirebaseEvent(
                                                                  'STATUS_PAGAMENTO_P_I_X_VERIFICADO_Row_xi');
                                                              logFirebaseEvent(
                                                                  'Row_copy_to_clipboard');
                                                              await Clipboard.setData(
                                                                  ClipboardData(
                                                                      text: FFAppState()
                                                                          .ChavePixPagarME));
                                                              logFirebaseEvent(
                                                                  'Row_alert_dialog');
                                                              await showDialog(
                                                                context:
                                                                    context,
                                                                builder:
                                                                    (alertDialogContext) {
                                                                  return AlertDialog(
                                                                    title: Text(
                                                                        'CHAVE COPIADA'),
                                                                    content: Text(
                                                                        'Agora, basta ir em seu pix e colar a chave e realizar o pagamento!'),
                                                                    actions: [
                                                                      TextButton(
                                                                        onPressed:
                                                                            () =>
                                                                                Navigator.pop(alertDialogContext),
                                                                        child: Text(
                                                                            'Ok'),
                                                                      ),
                                                                    ],
                                                                  );
                                                                },
                                                              );
                                                            },
                                                            child: Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .spaceBetween,
                                                              children: [
                                                                Text(
                                                                  'Copiar e Colar - Chave Pix',
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight:
                                                                            FontWeight.normal,
                                                                        useGoogleFonts:
                                                                            GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                      ),
                                                                ),
                                                                Align(
                                                                  alignment:
                                                                      AlignmentDirectional(
                                                                          0.0,
                                                                          0.0),
                                                                  child:
                                                                      FlutterFlowIconButton(
                                                                    borderRadius:
                                                                        20.0,
                                                                    buttonSize:
                                                                        35.0,
                                                                    fillColor:
                                                                        Color(
                                                                            0xFF2E4FE8),
                                                                    icon: Icon(
                                                                      Icons
                                                                          .content_copy,
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryBackground,
                                                                      size:
                                                                          17.0,
                                                                    ),
                                                                    onPressed:
                                                                        () async {
                                                                      logFirebaseEvent(
                                                                          'STATUS_PAGAMENTO_P_I_X_VERIFICADO_conten');
                                                                      logFirebaseEvent(
                                                                          'IconButton_copy_to_clipboard');
                                                                      await Clipboard.setData(
                                                                          ClipboardData(
                                                                              text: FFAppState().ChavePixPagarME));
                                                                      logFirebaseEvent(
                                                                          'IconButton_alert_dialog');
                                                                      await showDialog(
                                                                        context:
                                                                            context,
                                                                        builder:
                                                                            (alertDialogContext) {
                                                                          return AlertDialog(
                                                                            title:
                                                                                Text('CHAVE COPIADA'),
                                                                            content:
                                                                                Text('Agora, basta ir em seu pix e colar a chave e realizar o pagamento!'),
                                                                            actions: [
                                                                              TextButton(
                                                                                onPressed: () => Navigator.pop(alertDialogContext),
                                                                                child: Text('Ok'),
                                                                              ),
                                                                            ],
                                                                          );
                                                                        },
                                                                      );
                                                                    },
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                      ].divide(SizedBox(
                                                          height: 8.0)),
                                                    ),
                                                  ].divide(
                                                      SizedBox(height: 24.0)),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 24.0, 0.0, 0.0),
                                            child: Material(
                                              color: Colors.transparent,
                                              elevation: 2.0,
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(16.0),
                                              ),
                                              child: Container(
                                                width:
                                                    MediaQuery.sizeOf(context)
                                                            .width *
                                                        0.9,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryBackground,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          16.0),
                                                ),
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(24.0, 24.0,
                                                          24.0, 24.0),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Text(
                                                        'Detalhes do Pagamento',
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .headlineSmall
                                                                .override(
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .headlineSmallFamily,
                                                                  fontSize:
                                                                      19.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  useGoogleFonts: GoogleFonts
                                                                          .asMap()
                                                                      .containsKey(
                                                                          FlutterFlowTheme.of(context)
                                                                              .headlineSmallFamily),
                                                                ),
                                                      ),
                                                      Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Text(
                                                            'Valor',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMediumFamily,
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryText,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  useGoogleFonts: GoogleFonts
                                                                          .asMap()
                                                                      .containsKey(
                                                                          FlutterFlowTheme.of(context)
                                                                              .bodyMediumFamily),
                                                                ),
                                                          ),
                                                          Text(
                                                            'R\$ 29,90',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .headlineSmall
                                                                .override(
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .headlineSmallFamily,
                                                                  color: Color(
                                                                      0xFF2E4FE8),
                                                                  letterSpacing:
                                                                      0.0,
                                                                  useGoogleFonts: GoogleFonts
                                                                          .asMap()
                                                                      .containsKey(
                                                                          FlutterFlowTheme.of(context)
                                                                              .headlineSmallFamily),
                                                                ),
                                                          ),
                                                        ],
                                                      ),
                                                      Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Text(
                                                            'Produto:',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMediumFamily,
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryText,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  useGoogleFonts: GoogleFonts
                                                                          .asMap()
                                                                      .containsKey(
                                                                          FlutterFlowTheme.of(context)
                                                                              .bodyMediumFamily),
                                                                ),
                                                          ),
                                                          Text(
                                                            'Verificado',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyLarge
                                                                .override(
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyLargeFamily,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  useGoogleFonts: GoogleFonts
                                                                          .asMap()
                                                                      .containsKey(
                                                                          FlutterFlowTheme.of(context)
                                                                              .bodyLargeFamily),
                                                                ),
                                                          ),
                                                        ],
                                                      ),
                                                      Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Text(
                                                            'Usuário',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMediumFamily,
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryText,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  useGoogleFonts: GoogleFonts
                                                                          .asMap()
                                                                      .containsKey(
                                                                          FlutterFlowTheme.of(context)
                                                                              .bodyMediumFamily),
                                                                ),
                                                          ),
                                                          Text(
                                                            columnUsersRecord
                                                                .name,
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyLarge
                                                                .override(
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyLargeFamily,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  useGoogleFonts: GoogleFonts
                                                                          .asMap()
                                                                      .containsKey(
                                                                          FlutterFlowTheme.of(context)
                                                                              .bodyLargeFamily),
                                                                ),
                                                          ),
                                                        ],
                                                      ),
                                                    ].divide(
                                                        SizedBox(height: 16.0)),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 24.0, 0.0, 0.0),
                                            child: Material(
                                              color: Colors.transparent,
                                              elevation: 2.0,
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(16.0),
                                              ),
                                              child: Container(
                                                width:
                                                    MediaQuery.sizeOf(context)
                                                            .width *
                                                        0.9,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryBackground,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          16.0),
                                                ),
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(24.0, 24.0,
                                                          24.0, 24.0),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    children: [
                                                      Stack(
                                                        children: [
                                                          if (ObterPagamentoPagarMECall
                                                                  .statusPedido(
                                                                statusPagamentoPIXVerificadoObterPagamentoPagarMEResponse
                                                                    .jsonBody,
                                                              ) ==
                                                              'pending')
                                                            Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                Icon(
                                                                  Icons.pending,
                                                                  color: Color(
                                                                      0xFFFFC107),
                                                                  size: 24.0,
                                                                ),
                                                                Text(
                                                                  'Aguardando Confirmação de Pagamento',
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            FlutterFlowTheme.of(context).titleMediumFamily,
                                                                        fontSize:
                                                                            12.0,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        useGoogleFonts:
                                                                            GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).titleMediumFamily),
                                                                      ),
                                                                ),
                                                              ].divide(SizedBox(
                                                                  width: 8.0)),
                                                            ),
                                                          if (ObterPagamentoPagarMECall
                                                                  .statusPedido(
                                                                statusPagamentoPIXVerificadoObterPagamentoPagarMEResponse
                                                                    .jsonBody,
                                                              ) ==
                                                              'paid')
                                                            Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                Icon(
                                                                  Icons
                                                                      .check_circle,
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .success,
                                                                  size: 24.0,
                                                                ),
                                                                Text(
                                                                  'Pagamento Confirmado',
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            FlutterFlowTheme.of(context).titleMediumFamily,
                                                                        fontSize:
                                                                            12.0,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        useGoogleFonts:
                                                                            GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).titleMediumFamily),
                                                                      ),
                                                                ),
                                                              ].divide(SizedBox(
                                                                  width: 8.0)),
                                                            ),
                                                          if (ObterPagamentoPagarMECall
                                                                  .statusPedido(
                                                                statusPagamentoPIXVerificadoObterPagamentoPagarMEResponse
                                                                    .jsonBody,
                                                              ) ==
                                                              'failed')
                                                            Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                Icon(
                                                                  Icons.cancel,
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .error,
                                                                  size: 24.0,
                                                                ),
                                                                Text(
                                                                  'Pagamento Cancelado',
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            FlutterFlowTheme.of(context).titleMediumFamily,
                                                                        fontSize:
                                                                            12.0,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        useGoogleFonts:
                                                                            GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).titleMediumFamily),
                                                                      ),
                                                                ),
                                                              ].divide(SizedBox(
                                                                  width: 8.0)),
                                                            ),
                                                        ],
                                                      ),
                                                      Text(
                                                        'Por favor, complete o pagamento via Pix utilizando o QR code ou chave acima.',
                                                        textAlign:
                                                            TextAlign.center,
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMediumFamily,
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryText,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  useGoogleFonts: GoogleFonts
                                                                          .asMap()
                                                                      .containsKey(
                                                                          FlutterFlowTheme.of(context)
                                                                              .bodyMediumFamily),
                                                                ),
                                                      ),
                                                      Container(
                                                        width:
                                                            MediaQuery.sizeOf(
                                                                        context)
                                                                    .width *
                                                                1.0,
                                                        decoration:
                                                            BoxDecoration(
                                                          color:
                                                              Color(0xFFFFF8E1),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                        ),
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      16.0,
                                                                      16.0,
                                                                      16.0,
                                                                      16.0),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            children: [
                                                              Icon(
                                                                Icons
                                                                    .info_outline,
                                                                color: Color(
                                                                    0xFFFF6F00),
                                                                size: 20.0,
                                                              ),
                                                              Text(
                                                                'Confirme o pagamento para continuar',
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodySmall
                                                                    .override(
                                                                      fontFamily:
                                                                          FlutterFlowTheme.of(context)
                                                                              .bodySmallFamily,
                                                                      color: Color(
                                                                          0xFFFF6F00),
                                                                      fontSize:
                                                                          12.0,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      useGoogleFonts: GoogleFonts
                                                                              .asMap()
                                                                          .containsKey(
                                                                              FlutterFlowTheme.of(context).bodySmallFamily),
                                                                    ),
                                                              ),
                                                            ].divide(SizedBox(
                                                                width: 8.0)),
                                                          ),
                                                        ),
                                                      ),
                                                    ].divide(
                                                        SizedBox(height: 16.0)),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Column(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Expanded(
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 24.0, 0.0, 0.0),
                                                  child: FFButtonWidget(
                                                    onPressed: () async {
                                                      logFirebaseEvent(
                                                          'STATUS_PAGAMENTO_P_I_X_VERIFICADO_ATUALI');
                                                      logFirebaseEvent(
                                                          'Button_refresh_database_request');
                                                      safeSetState(() => _model
                                                              .apiRequestCompleter =
                                                          null);
                                                      await _model
                                                          .waitForApiRequestCompleted();
                                                      if (ObterPagamentoPagarMECall
                                                              .statusPedido(
                                                            statusPagamentoPIXVerificadoObterPagamentoPagarMEResponse
                                                                .jsonBody,
                                                          ) ==
                                                          'paid') {
                                                        logFirebaseEvent(
                                                            'Button_backend_call');

                                                        await CompraVerificadoRecord
                                                            .collection
                                                            .doc()
                                                            .set(
                                                                createCompraVerificadoRecordData(
                                                              cpf: valueOrDefault(
                                                                  currentUserDocument
                                                                      ?.cpf,
                                                                  ''),
                                                              email:
                                                                  currentUserEmail,
                                                              nomedousuario:
                                                                  columnUsersRecord
                                                                      .name,
                                                              numerodecelular:
                                                                  columnUsersRecord
                                                                      .phoneNumber,
                                                              usersREF:
                                                                  currentUserReference,
                                                              datadacompra:
                                                                  getCurrentTimestamp,
                                                              valordacompra:
                                                                  '12.90',
                                                              imagemIdentidade:
                                                                  '',
                                                            ));
                                                        logFirebaseEvent(
                                                            'Button_backend_call');

                                                        await WalletExtratoRecord
                                                                .createDoc(
                                                                    currentUserReference!)
                                                            .set(
                                                                createWalletExtratoRecordData(
                                                          tipoDeTransacao:
                                                              'Compra ',
                                                          dataDaTransacao:
                                                              getCurrentTimestamp,
                                                          valorDaTransacao:
                                                              1290,
                                                          compradoDe: '',
                                                          iconeVermelho: true,
                                                          nomedafesta:
                                                              'Verificado',
                                                          vendidoPara: '',
                                                          primeiraVenda: false,
                                                          iconeVerde: false,
                                                          addSaldo: false,
                                                          retirarSaldo: false,
                                                        ));
                                                        logFirebaseEvent(
                                                            'Button_backend_call');

                                                        await VerificadoCompraRecord
                                                                .createDoc(
                                                                    currentUserReference!)
                                                            .set(
                                                                createVerificadoCompraRecordData(
                                                          nomedousuario:
                                                              valueOrDefault(
                                                                  currentUserDocument
                                                                      ?.name,
                                                                  ''),
                                                          usersREF:
                                                              currentUserReference,
                                                          datadacompra:
                                                              getCurrentTimestamp,
                                                          numerodocelular:
                                                              currentPhoneNumber,
                                                          email:
                                                              currentUserEmail,
                                                          cpf: valueOrDefault(
                                                              currentUserDocument
                                                                  ?.cpf,
                                                              ''),
                                                          frenteIdentidade:
                                                              columnUsersRecord
                                                                  .frenteComprovanteDeIdentidade,
                                                          versoIdentidade:
                                                              columnUsersRecord
                                                                  .versoComprovanteIdentidade,
                                                          valordacompra:
                                                              '12.90',
                                                        ));
                                                        logFirebaseEvent(
                                                            'Button_update_app_state');
                                                        FFAppState()
                                                                .NotificationTOTAL =
                                                            FFAppState()
                                                                    .NotificationTOTAL +
                                                                1.0;
                                                        safeSetState(() {});
                                                        logFirebaseEvent(
                                                            'Button_backend_call');
                                                        await BFEmailverificadocompra2804Group
                                                            .emailverificadocompra2804Call
                                                            .call(
                                                          to: currentUserEmail,
                                                          subject:
                                                              'Sua compra do selo de verificação, foi confirmada com sucesso! ✅',
                                                          name: valueOrDefault(
                                                              currentUserDocument
                                                                  ?.name,
                                                              ''),
                                                        );

                                                        logFirebaseEvent(
                                                            'Button_backend_call');

                                                        await currentUserReference!
                                                            .update(
                                                                createUsersRecordData(
                                                          verificado: true,
                                                        ));
                                                        logFirebaseEvent(
                                                            'Button_trigger_push_notification');
                                                        triggerPushNotification(
                                                          notificationTitle:
                                                              '🛒 Compra Realizada!',
                                                          notificationText:
                                                              '${valueOrDefault(currentUserDocument?.name, '')}: Sua compra do selo verificado no valor de: 12,90, Foi confirmada com sucesso! ✅',
                                                          notificationSound:
                                                              'default',
                                                          userRefs: [
                                                            currentUserReference!
                                                          ],
                                                          initialPageName:
                                                              'notifcaao',
                                                          parameterData: {},
                                                        );
                                                        logFirebaseEvent(
                                                            'Button_navigate_to');

                                                        context.pushNamed(
                                                            SucesspaymentVerificadoWidget
                                                                .routeName);
                                                      } else {
                                                        return;
                                                      }
                                                    },
                                                    text: 'Atualizar Status',
                                                    options: FFButtonOptions(
                                                      width: double.infinity,
                                                      height: 56.0,
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  0.0,
                                                                  0.0,
                                                                  0.0),
                                                      iconPadding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  0.0,
                                                                  0.0,
                                                                  0.0),
                                                      color: Color(0xFF2E4FE8),
                                                      textStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .titleMedium
                                                              .override(
                                                                fontFamily: FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleMediumFamily,
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryBackground,
                                                                letterSpacing:
                                                                    0.0,
                                                                useGoogleFonts: GoogleFonts
                                                                        .asMap()
                                                                    .containsKey(
                                                                        FlutterFlowTheme.of(context)
                                                                            .titleMediumFamily),
                                                              ),
                                                      elevation: 3.0,
                                                      borderSide: BorderSide(
                                                        color:
                                                            Colors.transparent,
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              28.0),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ].divide(SizedBox(height: 16.0)),
                                          ),
                                          Column(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              if (ObterPagamentoPagarMECall
                                                      .statusPedido(
                                                    statusPagamentoPIXVerificadoObterPagamentoPagarMEResponse
                                                        .jsonBody,
                                                  ) ==
                                                  'paid')
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 10.0, 0.0, 0.0),
                                                  child: FFButtonWidget(
                                                    onPressed: () async {
                                                      logFirebaseEvent(
                                                          'STATUS_PAGAMENTO_P_I_X_VERIFICADO_VOLTAR');
                                                      logFirebaseEvent(
                                                          'Button_backend_call');

                                                      await CompraVerificadoRecord
                                                          .collection
                                                          .doc()
                                                          .set(
                                                              createCompraVerificadoRecordData(
                                                            cpf: valueOrDefault(
                                                                currentUserDocument
                                                                    ?.cpf,
                                                                ''),
                                                            email:
                                                                currentUserEmail,
                                                            nomedousuario:
                                                                columnUsersRecord
                                                                    .name,
                                                            numerodecelular:
                                                                columnUsersRecord
                                                                    .phoneNumber,
                                                            usersREF:
                                                                currentUserReference,
                                                            datadacompra:
                                                                getCurrentTimestamp,
                                                            valordacompra:
                                                                '12.90',
                                                            imagemIdentidade:
                                                                '',
                                                          ));
                                                      logFirebaseEvent(
                                                          'Button_backend_call');

                                                      await VerificadoCompraRecord
                                                              .createDoc(
                                                                  currentUserReference!)
                                                          .set(
                                                              createVerificadoCompraRecordData(
                                                        nomedousuario:
                                                            valueOrDefault(
                                                                currentUserDocument
                                                                    ?.name,
                                                                ''),
                                                        usersREF:
                                                            currentUserReference,
                                                        datadacompra:
                                                            getCurrentTimestamp,
                                                        numerodocelular:
                                                            currentPhoneNumber,
                                                        email: currentUserEmail,
                                                        cpf: valueOrDefault(
                                                            currentUserDocument
                                                                ?.cpf,
                                                            ''),
                                                        frenteIdentidade:
                                                            columnUsersRecord
                                                                .frenteComprovanteDeIdentidade,
                                                        versoIdentidade:
                                                            columnUsersRecord
                                                                .versoComprovanteIdentidade,
                                                        valordacompra: '12.90',
                                                      ));
                                                      logFirebaseEvent(
                                                          'Button_update_app_state');
                                                      FFAppState()
                                                              .NotificationTOTAL =
                                                          FFAppState()
                                                                  .NotificationTOTAL +
                                                              1.0;
                                                      safeSetState(() {});
                                                      logFirebaseEvent(
                                                          'Button_backend_call');
                                                      await BFEmailverificadocompra2804Group
                                                          .emailverificadocompra2804Call
                                                          .call(
                                                        to: currentUserEmail,
                                                        subject:
                                                            'Sua compra do selo de verificação, foi confirmada com sucesso! ✅',
                                                        name: valueOrDefault(
                                                            currentUserDocument
                                                                ?.name,
                                                            ''),
                                                      );

                                                      logFirebaseEvent(
                                                          'Button_backend_call');

                                                      await currentUserReference!
                                                          .update(
                                                              createUsersRecordData(
                                                        verificado: true,
                                                      ));
                                                      logFirebaseEvent(
                                                          'Button_trigger_push_notification');
                                                      triggerPushNotification(
                                                        notificationTitle:
                                                            '🛒 Compra Realizada!',
                                                        notificationText:
                                                            '${valueOrDefault(currentUserDocument?.name, '')}: Sua compra do selo verificado no valor de: 12,90, Foi confirmada com sucesso! ✅',
                                                        notificationSound:
                                                            'default',
                                                        userRefs: [
                                                          currentUserReference!
                                                        ],
                                                        initialPageName:
                                                            'notifcaao',
                                                        parameterData: {},
                                                      );
                                                      logFirebaseEvent(
                                                          'Button_navigate_to');

                                                      context.pushNamed(
                                                          UserspageWidget
                                                              .routeName);
                                                    },
                                                    text:
                                                        'Voltar para página de usuário',
                                                    options: FFButtonOptions(
                                                      width: double.infinity,
                                                      height: 56.0,
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  0.0,
                                                                  0.0,
                                                                  0.0),
                                                      iconPadding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  0.0,
                                                                  0.0,
                                                                  0.0),
                                                      color: FlutterFlowTheme
                                                              .of(context)
                                                          .secondaryBackground,
                                                      textStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .titleMedium
                                                              .override(
                                                                fontFamily: FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleMediumFamily,
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryText,
                                                                letterSpacing:
                                                                    0.0,
                                                                useGoogleFonts: GoogleFonts
                                                                        .asMap()
                                                                    .containsKey(
                                                                        FlutterFlowTheme.of(context)
                                                                            .titleMediumFamily),
                                                              ),
                                                      elevation: 3.0,
                                                      borderSide: BorderSide(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary,
                                                        width: 2.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              28.0),
                                                    ),
                                                  ),
                                                ),
                                            ].divide(SizedBox(height: 16.0)),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 24.0, 0.0, 0.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Icon(
                                                  Icons.lock,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .success,
                                                  size: 20.0,
                                                ),
                                                Text(
                                                  'Pagamento Seguro Protegido',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodySmall
                                                      .override(
                                                        fontFamily:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodySmallFamily,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .success,
                                                        letterSpacing: 0.0,
                                                        useGoogleFonts: GoogleFonts
                                                                .asMap()
                                                            .containsKey(
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodySmallFamily),
                                                      ),
                                                ),
                                              ].divide(SizedBox(width: 8.0)),
                                            ),
                                          ),
                                          if (ObterPagamentoPagarMECall
                                                  .statusPedido(
                                                statusPagamentoPIXVerificadoObterPagamentoPagarMEResponse
                                                    .jsonBody,
                                              ) ==
                                              'paid')
                                            Align(
                                              alignment: AlignmentDirectional(
                                                  -1.0, 0.0),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 15.0, 0.0, 4.0),
                                                child: Text(
                                                  'Importante!',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Montserrat',
                                                        color:
                                                            Color(0xFFDA1313),
                                                        fontSize: 18.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        useGoogleFonts:
                                                            GoogleFonts.asMap()
                                                                .containsKey(
                                                                    'Montserrat'),
                                                      ),
                                                ),
                                              ),
                                            ),
                                          if (ObterPagamentoPagarMECall
                                                  .statusPedido(
                                                statusPagamentoPIXVerificadoObterPagamentoPagarMEResponse
                                                    .jsonBody,
                                              ) ==
                                              'paid')
                                            Align(
                                              alignment: AlignmentDirectional(
                                                  -1.0, 0.0),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 6.0, 0.0),
                                                child: Text(
                                                  'Confira que sua compra foi confirmada! É de extrema importância conferir sua compra, qualquer problema, entre em contato com o suporte!',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Montserrat',
                                                        fontSize: 16.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.normal,
                                                        useGoogleFonts:
                                                            GoogleFonts.asMap()
                                                                .containsKey(
                                                                    'Montserrat'),
                                                      ),
                                                ),
                                              ),
                                            ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 30.0),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                if (ObterPagamentoPagarMECall
                                                        .statusPedido(
                                                      statusPagamentoPIXVerificadoObterPagamentoPagarMEResponse
                                                          .jsonBody,
                                                    ) ==
                                                    'paid')
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 15.0,
                                                                0.0, 30.0),
                                                    child: FFButtonWidget(
                                                      onPressed: () async {
                                                        logFirebaseEvent(
                                                            'STATUS_PAGAMENTO_P_I_X_VERIFICADO_VEJA_S');
                                                        logFirebaseEvent(
                                                            'Button_backend_call');

                                                        await CompraVerificadoRecord
                                                            .collection
                                                            .doc()
                                                            .set(
                                                                createCompraVerificadoRecordData(
                                                              cpf: valueOrDefault(
                                                                  currentUserDocument
                                                                      ?.cpf,
                                                                  ''),
                                                              email:
                                                                  currentUserEmail,
                                                              nomedousuario:
                                                                  columnUsersRecord
                                                                      .name,
                                                              numerodecelular:
                                                                  columnUsersRecord
                                                                      .phoneNumber,
                                                              usersREF:
                                                                  currentUserReference,
                                                              datadacompra:
                                                                  getCurrentTimestamp,
                                                              valordacompra:
                                                                  '12.90',
                                                              imagemIdentidade:
                                                                  '',
                                                            ));
                                                        logFirebaseEvent(
                                                            'Button_backend_call');

                                                        await VerificadoCompraRecord
                                                                .createDoc(
                                                                    currentUserReference!)
                                                            .set(
                                                                createVerificadoCompraRecordData(
                                                          nomedousuario:
                                                              valueOrDefault(
                                                                  currentUserDocument
                                                                      ?.name,
                                                                  ''),
                                                          usersREF:
                                                              currentUserReference,
                                                          datadacompra:
                                                              getCurrentTimestamp,
                                                          numerodocelular:
                                                              currentPhoneNumber,
                                                          email:
                                                              currentUserEmail,
                                                          cpf: valueOrDefault(
                                                              currentUserDocument
                                                                  ?.cpf,
                                                              ''),
                                                          frenteIdentidade:
                                                              columnUsersRecord
                                                                  .frenteComprovanteDeIdentidade,
                                                          versoIdentidade:
                                                              columnUsersRecord
                                                                  .versoComprovanteIdentidade,
                                                          valordacompra:
                                                              '12.90',
                                                        ));
                                                        logFirebaseEvent(
                                                            'Button_update_app_state');
                                                        FFAppState()
                                                                .NotificationTOTAL =
                                                            FFAppState()
                                                                    .NotificationTOTAL +
                                                                1.0;
                                                        safeSetState(() {});
                                                        logFirebaseEvent(
                                                            'Button_backend_call');

                                                        await currentUserReference!
                                                            .update(
                                                                createUsersRecordData(
                                                          verificado: true,
                                                        ));
                                                        logFirebaseEvent(
                                                            'Button_backend_call');
                                                        await BFEmailverificadocompra2804Group
                                                            .emailverificadocompra2804Call
                                                            .call(
                                                          to: currentUserEmail,
                                                          subject:
                                                              'Sua compra do selo de verificação, foi confirmada com sucesso! ✅',
                                                          name: valueOrDefault(
                                                              currentUserDocument
                                                                  ?.name,
                                                              ''),
                                                        );

                                                        logFirebaseEvent(
                                                            'Button_trigger_push_notification');
                                                        triggerPushNotification(
                                                          notificationTitle:
                                                              '🛒 Compra Realizada!',
                                                          notificationText:
                                                              '${valueOrDefault(currentUserDocument?.name, '')}: Sua compra do selo verificado no valor de: 12,90, Foi confirmada com sucesso! ✅',
                                                          notificationSound:
                                                              'default',
                                                          userRefs: [
                                                            currentUserReference!
                                                          ],
                                                          initialPageName:
                                                              'notifcaao',
                                                          parameterData: {},
                                                        );
                                                        logFirebaseEvent(
                                                            'Button_navigate_to');

                                                        context.pushNamed(
                                                            Paginaverificado1Widget
                                                                .routeName);
                                                      },
                                                      text:
                                                          'Veja seu verificado',
                                                      options: FFButtonOptions(
                                                        width: double.infinity,
                                                        height: 56.0,
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    0.0,
                                                                    0.0,
                                                                    0.0),
                                                        iconPadding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    0.0,
                                                                    0.0,
                                                                    0.0),
                                                        color: Colors.white,
                                                        textStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .titleMedium
                                                                .override(
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleMediumFamily,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  useGoogleFonts: GoogleFonts
                                                                          .asMap()
                                                                      .containsKey(
                                                                          FlutterFlowTheme.of(context)
                                                                              .titleMediumFamily),
                                                                ),
                                                        elevation: 3.0,
                                                        borderSide: BorderSide(
                                                          color:
                                                              Color(0xFFBCBDBD),
                                                          width: 2.0,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(28.0),
                                                      ),
                                                    ),
                                                  ),
                                              ].divide(SizedBox(height: 16.0)),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ),
            ));
      },
    );
  }
}
