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
import 'status_pagamento_p_i_x_alcance5dias30_o_f_f_model.dart';
export 'status_pagamento_p_i_x_alcance5dias30_o_f_f_model.dart';

class StatusPagamentoPIXAlcance5dias30OFFWidget extends StatefulWidget {
  const StatusPagamentoPIXAlcance5dias30OFFWidget({
    super.key,
    required this.ingressoPagamentoCheckout,
  });

  final DocumentReference? ingressoPagamentoCheckout;

  static String routeName = 'statusPagamentoPIXAlcance5dias30OFF';
  static String routePath = 'statusPagamentoPIXAlcance5dias30OFF';

  @override
  State<StatusPagamentoPIXAlcance5dias30OFFWidget> createState() =>
      _StatusPagamentoPIXAlcance5dias30OFFWidgetState();
}

class _StatusPagamentoPIXAlcance5dias30OFFWidgetState
    extends State<StatusPagamentoPIXAlcance5dias30OFFWidget> {
  late StatusPagamentoPIXAlcance5dias30OFFModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model =
        createModel(context, () => StatusPagamentoPIXAlcance5dias30OFFModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'statusPagamentoPIXAlcance5dias30OFF'});
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
        final statusPagamentoPIXAlcance5dias30OFFObterPagamentoPagarMEResponse =
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
                  child: StreamBuilder<IngressosRecord>(
                    stream: IngressosRecord.getDocument(
                        widget!.ingressoPagamentoCheckout!),
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

                      final columnIngressosRecord = snapshot.data!;

                      return SingleChildScrollView(
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  24.0, 0.0, 24.0, 0.0),
                              child: SingleChildScrollView(
                                primary: false,
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  16.0, 0.0, 0.0, 0.0),
                                          child: Text(
                                            'Status Pagamento ',
                                            style: FlutterFlowTheme.of(context)
                                                .headlineSmall
                                                .override(
                                                  fontFamily:
                                                      FlutterFlowTheme.of(
                                                              context)
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
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  16.0, 4.0, 0.0, 0.0),
                                          child: Text(
                                            'Realize o pagamento e atualize antes de sair da página.',
                                            style: FlutterFlowTheme.of(context)
                                                .labelMedium
                                                .override(
                                                  fontFamily:
                                                      FlutterFlowTheme.of(
                                                              context)
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
                                      alignment:
                                          AlignmentDirectional(0.0, -1.0),
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
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryBackground,
                                              width: 2.0,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Material(
                                      color: Colors.transparent,
                                      elevation: 2.0,
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(16.0),
                                      ),
                                      child: Container(
                                        width:
                                            MediaQuery.sizeOf(context).width *
                                                0.9,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .primaryBackground,
                                          borderRadius:
                                              BorderRadius.circular(16.0),
                                        ),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  24.0, 24.0, 24.0, 24.0),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Container(
                                                width: 250.0,
                                                height: 250.0,
                                                decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          16.0),
                                                  border: Border.all(
                                                    color: Color(0xFFE0E0E0),
                                                    width: 2.0,
                                                  ),
                                                ),
                                                child: ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                  child: Image.network(
                                                    '',
                                                    width: 200.0,
                                                    height: 200.0,
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                              ),
                                              Column(
                                                mainAxisSize: MainAxisSize.max,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: [
                                                  Text(
                                                    ' QR Code ou Chave Pix',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .titleMedium
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .titleMediumFamily,
                                                          letterSpacing: 0.0,
                                                          useGoogleFonts: GoogleFonts
                                                                  .asMap()
                                                              .containsKey(
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleMediumFamily),
                                                        ),
                                                  ),
                                                  Text(
                                                    FFAppState()
                                                        .ChavePixPagarME,
                                                    textAlign: TextAlign.center,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodySmall
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodySmallFamily,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryText,
                                                          letterSpacing: 0.0,
                                                          useGoogleFonts: GoogleFonts
                                                                  .asMap()
                                                              .containsKey(
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodySmallFamily),
                                                        ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 15.0,
                                                                0.0, 0.0),
                                                    child: InkWell(
                                                      splashColor:
                                                          Colors.transparent,
                                                      focusColor:
                                                          Colors.transparent,
                                                      hoverColor:
                                                          Colors.transparent,
                                                      highlightColor:
                                                          Colors.transparent,
                                                      onTap: () async {
                                                        logFirebaseEvent(
                                                            'STATUS_PAGAMENTO_P_I_X_ALCANCE5DIAS30_O_');
                                                        logFirebaseEvent(
                                                            'Row_copy_to_clipboard');
                                                        await Clipboard.setData(
                                                            ClipboardData(
                                                                text: FFAppState()
                                                                    .ChavePixPagarME));
                                                        logFirebaseEvent(
                                                            'Row_alert_dialog');
                                                        await showDialog(
                                                          context: context,
                                                          builder:
                                                              (alertDialogContext) {
                                                            return AlertDialog(
                                                              title: Text(
                                                                  'CHAVE COPIADA'),
                                                              content: Text(
                                                                  'Agora, basta ir em seu pix e colar a chave e realizar o pagamento!'),
                                                              actions: [
                                                                TextButton(
                                                                  onPressed: () =>
                                                                      Navigator.pop(
                                                                          alertDialogContext),
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
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Text(
                                                            'Copiar e Colar - Chave Pix',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMediumFamily,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .normal,
                                                                  useGoogleFonts: GoogleFonts
                                                                          .asMap()
                                                                      .containsKey(
                                                                          FlutterFlowTheme.of(context)
                                                                              .bodyMediumFamily),
                                                                ),
                                                          ),
                                                          Align(
                                                            alignment:
                                                                AlignmentDirectional(
                                                                    0.0, 0.0),
                                                            child:
                                                                FlutterFlowIconButton(
                                                              borderRadius:
                                                                  20.0,
                                                              buttonSize: 35.0,
                                                              fillColor: Color(
                                                                  0xFF2E4FE8),
                                                              icon: Icon(
                                                                Icons
                                                                    .content_copy,
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryBackground,
                                                                size: 17.0,
                                                              ),
                                                              onPressed:
                                                                  () async {
                                                                logFirebaseEvent(
                                                                    'STATUS_PAGAMENTO_P_I_X_ALCANCE5DIAS30_O_');
                                                                logFirebaseEvent(
                                                                    'IconButton_copy_to_clipboard');
                                                                await Clipboard.setData(
                                                                    ClipboardData(
                                                                        text: FFAppState()
                                                                            .ChavePixPagarME));
                                                                logFirebaseEvent(
                                                                    'IconButton_alert_dialog');
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
                                                                          onPressed: () =>
                                                                              Navigator.pop(alertDialogContext),
                                                                          child:
                                                                              Text('Ok'),
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
                                                ].divide(SizedBox(height: 8.0)),
                                              ),
                                            ].divide(SizedBox(height: 24.0)),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
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
                                              MediaQuery.sizeOf(context).width *
                                                  0.9,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .primaryBackground,
                                            borderRadius:
                                                BorderRadius.circular(16.0),
                                          ),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    24.0, 24.0, 24.0, 24.0),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Text(
                                                  'Detalhes do Pagamento',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .headlineSmall
                                                      .override(
                                                        fontFamily:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .headlineSmallFamily,
                                                        fontSize: 19.0,
                                                        letterSpacing: 0.0,
                                                        useGoogleFonts: GoogleFonts
                                                                .asMap()
                                                            .containsKey(
                                                                FlutterFlowTheme.of(
                                                                        context)
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
                                                    Text(
                                                      'R\$ 17,50',
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
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
                                                    Text(
                                                      'Aumento de Alcance - 5 dias',
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
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
                                                      'Ingresso:',
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
                                                    Text(
                                                      columnIngressosRecord
                                                          .nomedafesta,
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
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
                                              ].divide(SizedBox(height: 16.0)),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
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
                                              MediaQuery.sizeOf(context).width *
                                                  0.9,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .primaryBackground,
                                            borderRadius:
                                                BorderRadius.circular(16.0),
                                          ),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    24.0, 24.0, 24.0, 24.0),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Stack(
                                                  children: [
                                                    if (ObterPagamentoPagarMECall
                                                            .statusPedido(
                                                          statusPagamentoPIXAlcance5dias30OFFObterPagamentoPagarMEResponse
                                                              .jsonBody,
                                                        ) ==
                                                        'pending')
                                                      Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Icon(
                                                            Icons.pending,
                                                            color: Color(
                                                                0xFFFFC107),
                                                            size: 24.0,
                                                          ),
                                                          Text(
                                                            'Aguardando Confirmação de Pagamento',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .titleMedium
                                                                .override(
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleMediumFamily,
                                                                  fontSize:
                                                                      12.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  useGoogleFonts: GoogleFonts
                                                                          .asMap()
                                                                      .containsKey(
                                                                          FlutterFlowTheme.of(context)
                                                                              .titleMediumFamily),
                                                                ),
                                                          ),
                                                        ].divide(SizedBox(
                                                            width: 8.0)),
                                                      ),
                                                    if (ObterPagamentoPagarMECall
                                                            .statusPedido(
                                                          statusPagamentoPIXAlcance5dias30OFFObterPagamentoPagarMEResponse
                                                              .jsonBody,
                                                        ) ==
                                                        'paid')
                                                      Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Icon(
                                                            Icons.check_circle,
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .success,
                                                            size: 24.0,
                                                          ),
                                                          Text(
                                                            'Pagamento Confirmado',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .titleMedium
                                                                .override(
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleMediumFamily,
                                                                  fontSize:
                                                                      12.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  useGoogleFonts: GoogleFonts
                                                                          .asMap()
                                                                      .containsKey(
                                                                          FlutterFlowTheme.of(context)
                                                                              .titleMediumFamily),
                                                                ),
                                                          ),
                                                        ].divide(SizedBox(
                                                            width: 8.0)),
                                                      ),
                                                    if (ObterPagamentoPagarMECall
                                                            .statusPedido(
                                                          statusPagamentoPIXAlcance5dias30OFFObterPagamentoPagarMEResponse
                                                              .jsonBody,
                                                        ) ==
                                                        'failed')
                                                      Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Icon(
                                                            Icons.cancel,
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .error,
                                                            size: 24.0,
                                                          ),
                                                          Text(
                                                            'Pagamento Cancelado',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .titleMedium
                                                                .override(
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleMediumFamily,
                                                                  fontSize:
                                                                      12.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  useGoogleFonts: GoogleFonts
                                                                          .asMap()
                                                                      .containsKey(
                                                                          FlutterFlowTheme.of(context)
                                                                              .titleMediumFamily),
                                                                ),
                                                          ),
                                                        ].divide(SizedBox(
                                                            width: 8.0)),
                                                      ),
                                                  ],
                                                ),
                                                Text(
                                                  'Por favor, complete o pagamento via Pix utilizando o QR code ou chave acima.',
                                                  textAlign: TextAlign.center,
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMediumFamily,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondaryText,
                                                        letterSpacing: 0.0,
                                                        useGoogleFonts: GoogleFonts
                                                                .asMap()
                                                            .containsKey(
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily),
                                                      ),
                                                ),
                                                Container(
                                                  width:
                                                      MediaQuery.sizeOf(context)
                                                              .width *
                                                          1.0,
                                                  decoration: BoxDecoration(
                                                    color: Color(0xFFFFF8E1),
                                                    borderRadius:
                                                        BorderRadius.circular(
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
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        Icon(
                                                          Icons.info_outline,
                                                          color:
                                                              Color(0xFFFF6F00),
                                                          size: 20.0,
                                                        ),
                                                        Text(
                                                          'Confirme o pagamento para continuar',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodySmall
                                                              .override(
                                                                fontFamily: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodySmallFamily,
                                                                color: Color(
                                                                    0xFFFF6F00),
                                                                fontSize: 12.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                useGoogleFonts: GoogleFonts
                                                                        .asMap()
                                                                    .containsKey(
                                                                        FlutterFlowTheme.of(context)
                                                                            .bodySmallFamily),
                                                              ),
                                                        ),
                                                      ].divide(
                                                          SizedBox(width: 8.0)),
                                                    ),
                                                  ),
                                                ),
                                              ].divide(SizedBox(height: 16.0)),
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
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 24.0, 0.0, 0.0),
                                            child: FFButtonWidget(
                                              onPressed: () async {
                                                logFirebaseEvent(
                                                    'STATUS_PAGAMENTO_P_I_X_ALCANCE5DIAS30_O_');
                                                logFirebaseEvent(
                                                    'Button_refresh_database_request');
                                                safeSetState(() =>
                                                    _model.apiRequestCompleter =
                                                        null);
                                                await _model
                                                    .waitForApiRequestCompleted();
                                                if (ObterPagamentoPagarMECall
                                                        .statusPedido(
                                                      statusPagamentoPIXAlcance5dias30OFFObterPagamentoPagarMEResponse
                                                          .jsonBody,
                                                    ) ==
                                                    'paid') {
                                                  logFirebaseEvent(
                                                      'Button_backend_call');

                                                  await CompraAUMENTARALCANCE5diasRecord
                                                      .collection
                                                      .doc()
                                                      .set(
                                                          createCompraAUMENTARALCANCE5diasRecordData(
                                                        nomedocomprador:
                                                            valueOrDefault(
                                                                currentUserDocument
                                                                    ?.name,
                                                                ''),
                                                        cpf: valueOrDefault(
                                                            currentUserDocument
                                                                ?.cpf,
                                                            ''),
                                                        numerodetelefone:
                                                            currentPhoneNumber,
                                                        email: currentUserEmail,
                                                        usersREF:
                                                            currentUserReference,
                                                        nomedafesta:
                                                            columnIngressosRecord
                                                                .nomedafesta,
                                                        datadacompra:
                                                            getCurrentTimestamp,
                                                      ));
                                                  logFirebaseEvent(
                                                      'Button_backend_call');

                                                  await WalletExtratoRecord
                                                          .createDoc(
                                                              currentUserReference!)
                                                      .set(
                                                          createWalletExtratoRecordData(
                                                    tipoDeTransacao: 'Compra ',
                                                    dataDaTransacao:
                                                        getCurrentTimestamp,
                                                    valorDaTransacao: 1750,
                                                    compradoDe: '',
                                                    iconeVermelho: true,
                                                    nomedafesta:
                                                        'Aumento de Alcance 5 dias',
                                                    vendidoPara: '',
                                                    primeiraVenda: false,
                                                    iconeVerde: false,
                                                    addSaldo: false,
                                                    retirarSaldo: false,
                                                  ));
                                                  logFirebaseEvent(
                                                      'Button_backend_call');

                                                  await columnIngressosRecord
                                                      .reference
                                                      .update(
                                                          createIngressosRecordData(
                                                    melhoraralcance5dias: true,
                                                    melhoraralcance1dia: true,
                                                    melhoraroferta: true,
                                                    datacompraalcance:
                                                        getCurrentTimestamp,
                                                  ));
                                                  logFirebaseEvent(
                                                      'Button_backend_call');

                                                  await NotificationALCANCE5diasRecord
                                                      .collection
                                                      .doc()
                                                      .set(
                                                          createNotificationALCANCE5diasRecordData(
                                                        users:
                                                            currentUserReference,
                                                        time:
                                                            getCurrentTimestamp,
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
                                                      'Button_trigger_push_notification');
                                                  triggerPushNotification(
                                                    notificationTitle:
                                                        '🛒 Compra Realizada! ',
                                                    notificationText:
                                                        '${valueOrDefault(currentUserDocument?.name, '')} o aumento do alcance de 5 dias foi realizado com sucesso! ✅',
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
                                                      SucesspaymentalcanceWidget
                                                          .routeName);
                                                } else {
                                                  return;
                                                }
                                              },
                                              text: 'Atualizar Status',
                                              options: FFButtonOptions(
                                                width: double.infinity,
                                                height: 56.0,
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 0.0, 0.0),
                                                iconPadding:
                                                    EdgeInsetsDirectional
                                                        .fromSTEB(
                                                            0.0, 0.0, 0.0, 0.0),
                                                color: Color(0xFF2E4FE8),
                                                textStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .titleMedium
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .titleMediumFamily,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryBackground,
                                                          letterSpacing: 0.0,
                                                          useGoogleFonts: GoogleFonts
                                                                  .asMap()
                                                              .containsKey(
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleMediumFamily),
                                                        ),
                                                elevation: 3.0,
                                                borderSide: BorderSide(
                                                  color: Colors.transparent,
                                                  width: 1.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(28.0),
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
                                              statusPagamentoPIXAlcance5dias30OFFObterPagamentoPagarMEResponse
                                                  .jsonBody,
                                            ) ==
                                            'paid')
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 10.0, 0.0, 0.0),
                                            child: FFButtonWidget(
                                              onPressed: () async {
                                                logFirebaseEvent(
                                                    'STATUS_PAGAMENTO_P_I_X_ALCANCE5DIAS30_O_');
                                                logFirebaseEvent(
                                                    'Button_backend_call');

                                                await CompraAUMENTARALCANCE5diasRecord
                                                    .collection
                                                    .doc()
                                                    .set(
                                                        createCompraAUMENTARALCANCE5diasRecordData(
                                                      nomedocomprador:
                                                          valueOrDefault(
                                                              currentUserDocument
                                                                  ?.name,
                                                              ''),
                                                      cpf: valueOrDefault(
                                                          currentUserDocument
                                                              ?.cpf,
                                                          ''),
                                                      numerodetelefone:
                                                          currentPhoneNumber,
                                                      email: currentUserEmail,
                                                      usersREF:
                                                          currentUserReference,
                                                      nomedafesta:
                                                          columnIngressosRecord
                                                              .nomedafesta,
                                                      datadacompra:
                                                          getCurrentTimestamp,
                                                    ));
                                                logFirebaseEvent(
                                                    'Button_backend_call');

                                                await WalletExtratoRecord
                                                        .createDoc(
                                                            currentUserReference!)
                                                    .set(
                                                        createWalletExtratoRecordData(
                                                  tipoDeTransacao: 'Compra ',
                                                  dataDaTransacao:
                                                      getCurrentTimestamp,
                                                  valorDaTransacao: 1750,
                                                  compradoDe: '',
                                                  iconeVermelho: true,
                                                  nomedafesta:
                                                      'Aumento de Alcance 5 dias',
                                                  vendidoPara: '',
                                                  primeiraVenda: false,
                                                  iconeVerde: false,
                                                  addSaldo: false,
                                                  retirarSaldo: false,
                                                ));
                                                logFirebaseEvent(
                                                    'Button_backend_call');

                                                await columnIngressosRecord
                                                    .reference
                                                    .update(
                                                        createIngressosRecordData(
                                                  melhoraralcance5dias: true,
                                                  melhoraralcance1dia: true,
                                                  melhoraroferta: true,
                                                  datacompraalcance:
                                                      getCurrentTimestamp,
                                                ));
                                                logFirebaseEvent(
                                                    'Button_backend_call');

                                                await NotificationALCANCE5diasRecord
                                                    .collection
                                                    .doc()
                                                    .set(
                                                        createNotificationALCANCE5diasRecordData(
                                                      users:
                                                          currentUserReference,
                                                      time: getCurrentTimestamp,
                                                    ));
                                                logFirebaseEvent(
                                                    'Button_update_app_state');
                                                FFAppState().NotificationTOTAL =
                                                    FFAppState()
                                                            .NotificationTOTAL +
                                                        1.0;
                                                safeSetState(() {});
                                                logFirebaseEvent(
                                                    'Button_trigger_push_notification');
                                                triggerPushNotification(
                                                  notificationTitle:
                                                      '🛒 Compra Realizada! ',
                                                  notificationText:
                                                      '${valueOrDefault(currentUserDocument?.name, '')} o aumento do alcance de 5 dias foi realizado com sucesso! ✅',
                                                  notificationSound: 'default',
                                                  userRefs: [
                                                    currentUserReference!
                                                  ],
                                                  initialPageName: 'notifcaao',
                                                  parameterData: {},
                                                );
                                                logFirebaseEvent(
                                                    'Button_navigate_to');

                                                context.pushNamed(
                                                    IngressosCompradosvendidosWidget
                                                        .routeName);
                                              },
                                              text: 'Voltar para ingressos',
                                              options: FFButtonOptions(
                                                width: double.infinity,
                                                height: 56.0,
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 0.0, 0.0),
                                                iconPadding:
                                                    EdgeInsetsDirectional
                                                        .fromSTEB(
                                                            0.0, 0.0, 0.0, 0.0),
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                                textStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .titleMedium
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .titleMediumFamily,
                                                          letterSpacing: 0.0,
                                                          useGoogleFonts: GoogleFonts
                                                                  .asMap()
                                                              .containsKey(
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleMediumFamily),
                                                        ),
                                                elevation: 3.0,
                                                borderSide: BorderSide(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primary,
                                                  width: 2.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(28.0),
                                              ),
                                            ),
                                          ),
                                      ].divide(SizedBox(height: 16.0)),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 24.0, 0.0, 0.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Icon(
                                            Icons.lock,
                                            color: FlutterFlowTheme.of(context)
                                                .success,
                                            size: 20.0,
                                          ),
                                          Text(
                                            'Pagamento Seguro Protegido',
                                            style: FlutterFlowTheme.of(context)
                                                .bodySmall
                                                .override(
                                                  fontFamily:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodySmallFamily,
                                                  color: FlutterFlowTheme.of(
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
                                    if (ObterPagamentoPagarMECall.statusPedido(
                                          statusPagamentoPIXAlcance5dias30OFFObterPagamentoPagarMEResponse
                                              .jsonBody,
                                        ) ==
                                        'paid')
                                      Align(
                                        alignment:
                                            AlignmentDirectional(-1.0, 0.0),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 15.0, 0.0, 4.0),
                                          child: Text(
                                            'Importante!',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Montserrat',
                                                  color: Color(0xFFDA1313),
                                                  fontSize: 18.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w500,
                                                  useGoogleFonts:
                                                      GoogleFonts.asMap()
                                                          .containsKey(
                                                              'Montserrat'),
                                                ),
                                          ),
                                        ),
                                      ),
                                    if (ObterPagamentoPagarMECall.statusPedido(
                                          statusPagamentoPIXAlcance5dias30OFFObterPagamentoPagarMEResponse
                                              .jsonBody,
                                        ) ==
                                        'paid')
                                      Align(
                                        alignment:
                                            AlignmentDirectional(-1.0, 0.0),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 6.0, 0.0),
                                          child: Text(
                                            'Confira que sua compra foi confirmada! É de extrema importância conferir sua compra, qualquer problema, entre em contato com o suporte!',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Montserrat',
                                                  fontSize: 16.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.normal,
                                                  useGoogleFonts:
                                                      GoogleFonts.asMap()
                                                          .containsKey(
                                                              'Montserrat'),
                                                ),
                                          ),
                                        ),
                                      ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 0.0, 30.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 15.0, 0.0, 20.0),
                                            child: FFButtonWidget(
                                              onPressed: () async {
                                                logFirebaseEvent(
                                                    'STATUS_PAGAMENTO_P_I_X_ALCANCE5DIAS30_O_');
                                                logFirebaseEvent(
                                                    'Button_backend_call');

                                                await CompraAUMENTARALCANCE5diasRecord
                                                    .collection
                                                    .doc()
                                                    .set(
                                                        createCompraAUMENTARALCANCE5diasRecordData(
                                                      nomedocomprador:
                                                          valueOrDefault(
                                                              currentUserDocument
                                                                  ?.name,
                                                              ''),
                                                      cpf: valueOrDefault(
                                                          currentUserDocument
                                                              ?.cpf,
                                                          ''),
                                                      numerodetelefone:
                                                          currentPhoneNumber,
                                                      email: currentUserEmail,
                                                      usersREF:
                                                          currentUserReference,
                                                      nomedafesta:
                                                          columnIngressosRecord
                                                              .nomedafesta,
                                                      datadacompra:
                                                          getCurrentTimestamp,
                                                    ));
                                                logFirebaseEvent(
                                                    'Button_backend_call');

                                                await columnIngressosRecord
                                                    .reference
                                                    .update(
                                                        createIngressosRecordData(
                                                  melhoraralcance5dias: true,
                                                  melhoraralcance1dia: true,
                                                  melhoraroferta: true,
                                                  datacompraalcance:
                                                      getCurrentTimestamp,
                                                ));
                                                logFirebaseEvent(
                                                    'Button_backend_call');

                                                await WalletExtratoRecord
                                                        .createDoc(
                                                            currentUserReference!)
                                                    .set(
                                                        createWalletExtratoRecordData(
                                                  tipoDeTransacao: 'Compra ',
                                                  dataDaTransacao:
                                                      getCurrentTimestamp,
                                                  valorDaTransacao: 1750,
                                                  compradoDe: '',
                                                  iconeVermelho: true,
                                                  nomedafesta:
                                                      'Aumento de Alcance 5 dias',
                                                  vendidoPara: '',
                                                  primeiraVenda: false,
                                                  iconeVerde: false,
                                                  addSaldo: false,
                                                  retirarSaldo: false,
                                                ));
                                                logFirebaseEvent(
                                                    'Button_backend_call');

                                                await NotificationALCANCE5diasRecord
                                                    .collection
                                                    .doc()
                                                    .set(
                                                        createNotificationALCANCE5diasRecordData(
                                                      users:
                                                          currentUserReference,
                                                      time: getCurrentTimestamp,
                                                    ));
                                                logFirebaseEvent(
                                                    'Button_update_app_state');
                                                FFAppState().NotificationTOTAL =
                                                    FFAppState()
                                                            .NotificationTOTAL +
                                                        1.0;
                                                safeSetState(() {});
                                                logFirebaseEvent(
                                                    'Button_trigger_push_notification');
                                                triggerPushNotification(
                                                  notificationTitle:
                                                      '🛒 Compra Realizada! ',
                                                  notificationText:
                                                      '${valueOrDefault(currentUserDocument?.name, '')} o aumento do alcance de 5 dias foi realizado com sucesso! ✅',
                                                  notificationSound: 'default',
                                                  userRefs: [
                                                    currentUserReference!
                                                  ],
                                                  initialPageName: 'notifcaao',
                                                  parameterData: {},
                                                );
                                                logFirebaseEvent(
                                                    'Button_navigate_to');

                                                context.goNamed(
                                                    MelhoresofertasWidget
                                                        .routeName);
                                              },
                                              text: 'Ir para melhores ofertas',
                                              options: FFButtonOptions(
                                                width: double.infinity,
                                                height: 56.0,
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 0.0, 0.0),
                                                iconPadding:
                                                    EdgeInsetsDirectional
                                                        .fromSTEB(
                                                            0.0, 0.0, 0.0, 0.0),
                                                color: Colors.white,
                                                textStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .titleMedium
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .titleMediumFamily,
                                                          letterSpacing: 0.0,
                                                          useGoogleFonts: GoogleFonts
                                                                  .asMap()
                                                              .containsKey(
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleMediumFamily),
                                                        ),
                                                elevation: 3.0,
                                                borderSide: BorderSide(
                                                  color: Color(0xFFBCBDBD),
                                                  width: 4.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(28.0),
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
