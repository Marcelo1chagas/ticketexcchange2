import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/backend/push_notifications/push_notifications_util.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'dart:async';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'status_pagamento_p_i_x_leilao_model.dart';
export 'status_pagamento_p_i_x_leilao_model.dart';

class StatusPagamentoPIXLeilaoWidget extends StatefulWidget {
  const StatusPagamentoPIXLeilaoWidget({
    super.key,
    this.ingressoPagamentoCheckout,
    this.ingressoREF,
  });

  final DocumentReference? ingressoPagamentoCheckout;
  final DocumentReference? ingressoREF;

  static String routeName = 'statusPagamentoPIXLeilao';
  static String routePath = 'statusPagamentoPIXLeilao';

  @override
  State<StatusPagamentoPIXLeilaoWidget> createState() =>
      _StatusPagamentoPIXLeilaoWidgetState();
}

class _StatusPagamentoPIXLeilaoWidgetState
    extends State<StatusPagamentoPIXLeilaoWidget> {
  late StatusPagamentoPIXLeilaoModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => StatusPagamentoPIXLeilaoModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'statusPagamentoPIXLeilao'});
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
        final statusPagamentoPIXLeilaoObterPagamentoPagarMEResponse =
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
                  child: StreamBuilder<NotificationLeilaoaceitoRecord>(
                    stream: NotificationLeilaoaceitoRecord.getDocument(
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

                      final columnNotificationLeilaoaceitoRecord =
                          snapshot.data!;

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
                                                        child:
                                                            SvgPicture.network(
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
                                                                  'STATUS_PAGAMENTO_P_I_X_LEILAO_Row_08vncx');
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
                                                                          'STATUS_PAGAMENTO_P_I_X_LEILAO_content_co');
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
                                                            formatNumber(
                                                              columnNotificationLeilaoaceitoRecord
                                                                  .valorproposto,
                                                              formatType:
                                                                  FormatType
                                                                      .custom,
                                                              format: 'R\$',
                                                              locale: '',
                                                            ),
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
                                                            'Evento',
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
                                                            columnNotificationLeilaoaceitoRecord
                                                                .nomedafesta,
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
                                                            'Plataforma',
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
                                                            columnNotificationLeilaoaceitoRecord
                                                                .plataformaoficial,
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
                                                            'Vendedor',
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
                                                            columnNotificationLeilaoaceitoRecord
                                                                .nomedoingresso,
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
                                                            'Data da Festa',
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
                                                            columnNotificationLeilaoaceitoRecord
                                                                .datadoshow,
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
                                                                statusPagamentoPIXLeilaoObterPagamentoPagarMEResponse
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
                                                                statusPagamentoPIXLeilaoObterPagamentoPagarMEResponse
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
                                                                statusPagamentoPIXLeilaoObterPagamentoPagarMEResponse
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
                                                          'STATUS_PAGAMENTO_P_I_X_LEILAO_ATUALIZAR_');
                                                      logFirebaseEvent(
                                                          'Button_refresh_database_request');
                                                      safeSetState(() => _model
                                                              .apiRequestCompleter =
                                                          null);
                                                      await _model
                                                          .waitForApiRequestCompleted();
                                                      if (ObterPagamentoPagarMECall
                                                              .statusPedido(
                                                            statusPagamentoPIXLeilaoObterPagamentoPagarMEResponse
                                                                .jsonBody,
                                                          ) ==
                                                          'paid') {
                                                        logFirebaseEvent(
                                                            'Button_backend_call');

                                                        await CompraRecord
                                                            .collection
                                                            .doc()
                                                            .set(
                                                                createCompraRecordData(
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
                                                              email:
                                                                  currentUserEmail,
                                                              nomeDoINGRESSOComprado:
                                                                  columnNotificationLeilaoaceitoRecord
                                                                      .nomedoingresso,
                                                              plataformaOficial:
                                                                  columnNotificationLeilaoaceitoRecord
                                                                      .plataformaoficial,
                                                              nomedafestacomprada:
                                                                  columnNotificationLeilaoaceitoRecord
                                                                      .nomedafesta,
                                                              valordoingressoComprado:
                                                                  columnNotificationLeilaoaceitoRecord
                                                                      .valorproposto,
                                                              usersREF:
                                                                  currentUserReference,
                                                              dataDaCompra:
                                                                  getCurrentTimestamp,
                                                              refUsersCompradoingresso:
                                                                  columnNotificationLeilaoaceitoRecord
                                                                      .usersREF,
                                                              refingressocomprado:
                                                                  columnNotificationLeilaoaceitoRecord
                                                                      .ingressoREF,
                                                            ));
                                                        logFirebaseEvent(
                                                            'Button_backend_call');

                                                        await CompraIngressoRecord
                                                                .createDoc(
                                                                    currentUserReference!)
                                                            .set(
                                                                createCompraIngressoRecordData(
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
                                                          email:
                                                              currentUserEmail,
                                                          nomeDoINGRESSOComprado:
                                                              columnNotificationLeilaoaceitoRecord
                                                                  .nomedoingresso,
                                                          plataformaOficial:
                                                              columnNotificationLeilaoaceitoRecord
                                                                  .plataformaoficial,
                                                          nomedafestacomprada:
                                                              columnNotificationLeilaoaceitoRecord
                                                                  .nomedafesta,
                                                          valordoingressoComprado:
                                                              columnNotificationLeilaoaceitoRecord
                                                                  .valorproposto,
                                                          usersREF:
                                                              currentUserReference,
                                                          emailvendedor:
                                                              columnNotificationLeilaoaceitoRecord
                                                                  .emaildonoingresso,
                                                          dataDaCompra:
                                                              getCurrentTimestamp,
                                                          refUsersCompradoingresso:
                                                              columnNotificationLeilaoaceitoRecord
                                                                  .usersREF,
                                                          refIngressocomprado:
                                                              columnNotificationLeilaoaceitoRecord
                                                                  .ingressoREF,
                                                        ));
                                                        logFirebaseEvent(
                                                            'Button_backend_call');

                                                        await columnNotificationLeilaoaceitoRecord
                                                            .ingressoREF!
                                                            .update(
                                                                createIngressosRecordData(
                                                          disponivel: false,
                                                          datadavenda:
                                                              getCurrentTimestamp,
                                                        ));
                                                        logFirebaseEvent(
                                                            'Button_backend_call');

                                                        await NotifcationCompraIngressoVendedorRecord
                                                            .collection
                                                            .doc()
                                                            .set(
                                                                createNotifcationCompraIngressoVendedorRecordData(
                                                              users:
                                                                  columnNotificationLeilaoaceitoRecord
                                                                      .usersREF,
                                                              time:
                                                                  getCurrentTimestamp,
                                                              nomedafesta:
                                                                  columnNotificationLeilaoaceitoRecord
                                                                      .nomedafesta,
                                                              nomedocliente:
                                                                  valueOrDefault(
                                                                      currentUserDocument
                                                                          ?.name,
                                                                      ''),
                                                              emailcliente:
                                                                  currentUserEmail,
                                                              telefonecliente:
                                                                  currentPhoneNumber,
                                                              valordoingresso:
                                                                  columnNotificationLeilaoaceitoRecord
                                                                      .valorproposto,
                                                              plataformaOficial:
                                                                  columnNotificationLeilaoaceitoRecord
                                                                      .plataformaoficial,
                                                              notComprovante:
                                                                  currentUserReference,
                                                            ));
                                                        logFirebaseEvent(
                                                            'Button_update_app_state');
                                                        FFAppState()
                                                            .valorTotalPagamento = FFAppState()
                                                                .valorTotalPagamento +
                                                            functions.valorTotalareceber(
                                                                columnNotificationLeilaoaceitoRecord
                                                                    .valorproposto
                                                                    .toDouble());
                                                        safeSetState(() {});
                                                        logFirebaseEvent(
                                                            'Button_backend_call');

                                                        await NotificationCompraIngressoCompradorRecord
                                                            .collection
                                                            .doc()
                                                            .set(
                                                                createNotificationCompraIngressoCompradorRecordData(
                                                              users:
                                                                  currentUserReference,
                                                              time:
                                                                  getCurrentTimestamp,
                                                              nomedafesta:
                                                                  columnNotificationLeilaoaceitoRecord
                                                                      .nomedafesta,
                                                              plataformaOficial:
                                                                  columnNotificationLeilaoaceitoRecord
                                                                      .plataformaoficial,
                                                              donoingressoREF:
                                                                  columnNotificationLeilaoaceitoRecord
                                                                      .usersREF,
                                                              ingresso:
                                                                  columnNotificationLeilaoaceitoRecord
                                                                      .ingressoREF,
                                                              valordoingresso:
                                                                  columnNotificationLeilaoaceitoRecord
                                                                      .valorproposto,
                                                              datadafesta:
                                                                  columnNotificationLeilaoaceitoRecord
                                                                      .datadoshow,
                                                            ));
                                                        logFirebaseEvent(
                                                            'Button_backend_call');

                                                        await IngressosCompradosRecord
                                                            .collection
                                                            .doc()
                                                            .set(
                                                                createIngressosCompradosRecordData(
                                                              nomedafesta:
                                                                  columnNotificationLeilaoaceitoRecord
                                                                      .nomedafesta,
                                                              nomedoingresso:
                                                                  columnNotificationLeilaoaceitoRecord
                                                                      .nomedoingresso,
                                                              valordoingresso:
                                                                  formatNumber(
                                                                columnNotificationLeilaoaceitoRecord
                                                                    .valorproposto,
                                                                formatType:
                                                                    FormatType
                                                                        .custom,
                                                                format: 'R\$',
                                                                locale: '',
                                                              ),
                                                              datadafesta:
                                                                  columnNotificationLeilaoaceitoRecord
                                                                      .datadoshow,
                                                              datadacompra:
                                                                  getCurrentTimestamp,
                                                              nomedocomprador:
                                                                  valueOrDefault(
                                                                      currentUserDocument
                                                                          ?.name,
                                                                      ''),
                                                              image:
                                                                  columnNotificationLeilaoaceitoRecord
                                                                      .image,
                                                              local:
                                                                  columnNotificationLeilaoaceitoRecord
                                                                      .local,
                                                              descricao:
                                                                  columnNotificationLeilaoaceitoRecord
                                                                      .descricao,
                                                              plataformaOfical:
                                                                  columnNotificationLeilaoaceitoRecord
                                                                      .plataformaoficial,
                                                              refUsers:
                                                                  currentUserReference,
                                                              cidadeBeloHorizonte:
                                                                  columnNotificationLeilaoaceitoRecord
                                                                          .cidadeBeloHorizonte ==
                                                                      true,
                                                              cidadeSaoPaulo:
                                                                  columnNotificationLeilaoaceitoRecord
                                                                          .cidadeSaoPaulo ==
                                                                      true,
                                                              cidadeRiodeJaneiro:
                                                                  columnNotificationLeilaoaceitoRecord
                                                                          .cidadeRiodeJaneiro ==
                                                                      true,
                                                              cidadeVitoria:
                                                                  columnNotificationLeilaoaceitoRecord
                                                                          .cidadeVitoria ==
                                                                      true,
                                                              cidadeCuritiba:
                                                                  columnNotificationLeilaoaceitoRecord
                                                                          .cidadeCuritiba ==
                                                                      true,
                                                              cidadeBalneario:
                                                                  columnNotificationLeilaoaceitoRecord
                                                                          .cidadeBalneario ==
                                                                      true,
                                                              cidadeOutros:
                                                                  columnNotificationLeilaoaceitoRecord
                                                                          .cidadeOutros ==
                                                                      true,
                                                              cidadeRecife:
                                                                  columnNotificationLeilaoaceitoRecord
                                                                          .cidadeRecife ==
                                                                      true,
                                                              cidadeFortaleza:
                                                                  columnNotificationLeilaoaceitoRecord
                                                                          .cidadeFortaleza ==
                                                                      true,
                                                              cidadeBrasilia:
                                                                  columnNotificationLeilaoaceitoRecord
                                                                          .cidadeBrasilia ==
                                                                      true,
                                                              cidadeFlorianopolis:
                                                                  columnNotificationLeilaoaceitoRecord
                                                                          .cidadeFlorianopolis ==
                                                                      true,
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

                                                        await columnNotificationLeilaoaceitoRecord
                                                            .usersREF!
                                                            .update({
                                                          ...createUsersRecordData(
                                                            lastTicketVendidoData:
                                                                getCurrentTimestamp,
                                                            lastTicketVendidoNome:
                                                                columnNotificationLeilaoaceitoRecord
                                                                    .nomedafesta,
                                                          ),
                                                          ...mapToFirestore(
                                                            {
                                                              'ingressosvendidos':
                                                                  FieldValue
                                                                      .increment(
                                                                          1),
                                                              'saldoemconta':
                                                                  FieldValue.increment(
                                                                      columnNotificationLeilaoaceitoRecord
                                                                          .valorproposto),
                                                            },
                                                          ),
                                                        });
                                                        logFirebaseEvent(
                                                            'Button_backend_call');

                                                        await currentUserReference!
                                                            .update({
                                                          ...createUsersRecordData(
                                                            lastTicketCompradoData:
                                                                getCurrentTimestamp,
                                                            lastTicketCompradoNome:
                                                                columnNotificationLeilaoaceitoRecord
                                                                    .nomedafesta,
                                                          ),
                                                          ...mapToFirestore(
                                                            {
                                                              'ingressoscomprados':
                                                                  FieldValue
                                                                      .increment(
                                                                          1),
                                                            },
                                                          ),
                                                        });
                                                        logFirebaseEvent(
                                                            'Button_backend_call');
                                                        await BFEmailcompraconfirmada2804Group
                                                            .emailcompraconfirmada2804Call
                                                            .call(
                                                          to: currentUserEmail,
                                                          subject:
                                                              'Compra Realizada com Sucessso! 🛒💨',
                                                          nomefesta:
                                                              columnNotificationLeilaoaceitoRecord
                                                                  .nomedafesta,
                                                          localfesta:
                                                              columnNotificationLeilaoaceitoRecord
                                                                  .local,
                                                          datashow:
                                                              columnNotificationLeilaoaceitoRecord
                                                                  .datadoshow,
                                                          valordoingresso:
                                                              formatNumber(
                                                            columnNotificationLeilaoaceitoRecord
                                                                .valorproposto,
                                                            formatType:
                                                                FormatType
                                                                    .custom,
                                                            format: 'R\$',
                                                            locale: '',
                                                          ),
                                                          nomevendedor:
                                                              columnNotificationLeilaoaceitoRecord
                                                                  .nomedoingresso,
                                                          plataforma:
                                                              columnNotificationLeilaoaceitoRecord
                                                                  .plataformaoficial,
                                                        );

                                                        logFirebaseEvent(
                                                            'Button_backend_call');
                                                        await BFEmailvendaconfirmada2804Group
                                                            .emailvendaconfirmada2804Call
                                                            .call(
                                                          to: columnNotificationLeilaoaceitoRecord
                                                              .emaildonoingresso,
                                                          subject:
                                                              ' 🚀 Seu Ingresso foi Vendido! ',
                                                          name: columnNotificationLeilaoaceitoRecord
                                                              .nomedoingresso,
                                                          valordoingresso:
                                                              formatNumber(
                                                            columnNotificationLeilaoaceitoRecord
                                                                .valorproposto,
                                                            formatType:
                                                                FormatType
                                                                    .custom,
                                                            format: 'R\$',
                                                            locale: '',
                                                          ),
                                                          nomedafesta:
                                                              columnNotificationLeilaoaceitoRecord
                                                                  .nomedafesta,
                                                          datadavenda:
                                                              dateTimeFormat(
                                                            "d/M H:mm",
                                                            getCurrentTimestamp,
                                                            locale: FFLocalizations
                                                                    .of(context)
                                                                .languageCode,
                                                          ),
                                                          nomedocomprador:
                                                              valueOrDefault(
                                                                  currentUserDocument
                                                                      ?.name,
                                                                  ''),
                                                          emailcliente:
                                                              currentUserEmail,
                                                          telefone:
                                                              currentPhoneNumber,
                                                          plataforma:
                                                              columnNotificationLeilaoaceitoRecord
                                                                  .plataformaoficial,
                                                          datadoshow:
                                                              columnNotificationLeilaoaceitoRecord
                                                                  .datadoshow,
                                                        );

                                                        logFirebaseEvent(
                                                            'Button_backend_call');

                                                        await currentUserReference!
                                                            .update(
                                                                createUsersRecordData(
                                                          usersNotComprovante:
                                                              currentUserReference,
                                                        ));
                                                        logFirebaseEvent(
                                                            'Button_trigger_push_notification');
                                                        triggerPushNotification(
                                                          notificationTitle:
                                                              '💴 SEU INGRESSO FOI COMPRADO',
                                                          notificationText:
                                                              '${columnNotificationLeilaoaceitoRecord.nomedoingresso}- Seu ingresso da festa: ${columnNotificationLeilaoaceitoRecord.nomedafesta}foi comprado! Confira seu E-mail e Whatsapp para instruções!',
                                                          notificationSound:
                                                              'default',
                                                          userRefs: [
                                                            columnNotificationLeilaoaceitoRecord
                                                                .usersREF!
                                                          ],
                                                          initialPageName:
                                                              'home',
                                                          parameterData: {},
                                                        );
                                                        logFirebaseEvent(
                                                            'Button_trigger_push_notification');
                                                        triggerPushNotification(
                                                          notificationTitle:
                                                              '🛒 Compra Realizada!',
                                                          notificationText:
                                                              '${valueOrDefault(currentUserDocument?.name, '')}: Sua compra no valor de: ${formatNumber(
                                                            columnNotificationLeilaoaceitoRecord
                                                                .valorproposto,
                                                            formatType:
                                                                FormatType
                                                                    .custom,
                                                            format: 'R\$',
                                                            locale: '',
                                                          )}, Foi confirmada com sucesso! Acesse seu E-mail e Whatsapp para mais informações! ✅',
                                                          notificationSound:
                                                              'default',
                                                          userRefs: [
                                                            currentUserReference!
                                                          ],
                                                          initialPageName:
                                                              'home',
                                                          parameterData: {},
                                                        );
                                                        logFirebaseEvent(
                                                            'Button_navigate_to');

                                                        context.pushNamed(
                                                            SucesspaymentWidget
                                                                .routeName);
                                                      } else {
                                                        return;
                                                      }
                                                    },
                                                    text: 'Atualizar Status ',
                                                    options: FFButtonOptions(
                                                      width: 382.2,
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
                                                    statusPagamentoPIXLeilaoObterPagamentoPagarMEResponse
                                                        .jsonBody,
                                                  ) ==
                                                  'paid')
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 10.0, 0.0, 10.0),
                                                  child: FFButtonWidget(
                                                    onPressed: () async {
                                                      logFirebaseEvent(
                                                          'STATUS_PAGAMENTO_P_I_X_LEILAO_VOLTAR_PAR');
                                                      logFirebaseEvent(
                                                          'Button_backend_call');

                                                      await CompraRecord
                                                          .collection
                                                          .doc()
                                                          .set(
                                                              createCompraRecordData(
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
                                                            email:
                                                                currentUserEmail,
                                                            nomeDoINGRESSOComprado:
                                                                columnNotificationLeilaoaceitoRecord
                                                                    .nomedoingresso,
                                                            plataformaOficial:
                                                                columnNotificationLeilaoaceitoRecord
                                                                    .plataformaoficial,
                                                            nomedafestacomprada:
                                                                columnNotificationLeilaoaceitoRecord
                                                                    .nomedafesta,
                                                            valordoingressoComprado:
                                                                columnNotificationLeilaoaceitoRecord
                                                                    .valorproposto,
                                                            usersREF:
                                                                currentUserReference,
                                                            dataDaCompra:
                                                                getCurrentTimestamp,
                                                            refUsersCompradoingresso:
                                                                columnNotificationLeilaoaceitoRecord
                                                                    .usersREF,
                                                            refingressocomprado:
                                                                columnNotificationLeilaoaceitoRecord
                                                                    .ingressoREF,
                                                          ));
                                                      logFirebaseEvent(
                                                          'Button_backend_call');

                                                      await CompraIngressoRecord
                                                              .createDoc(
                                                                  currentUserReference!)
                                                          .set(
                                                              createCompraIngressoRecordData(
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
                                                        nomeDoINGRESSOComprado:
                                                            columnNotificationLeilaoaceitoRecord
                                                                .nomedoingresso,
                                                        plataformaOficial:
                                                            columnNotificationLeilaoaceitoRecord
                                                                .plataformaoficial,
                                                        nomedafestacomprada:
                                                            columnNotificationLeilaoaceitoRecord
                                                                .nomedafesta,
                                                        valordoingressoComprado:
                                                            columnNotificationLeilaoaceitoRecord
                                                                .valorproposto,
                                                        usersREF:
                                                            currentUserReference,
                                                        emailvendedor:
                                                            columnNotificationLeilaoaceitoRecord
                                                                .emaildonoingresso,
                                                        dataDaCompra:
                                                            getCurrentTimestamp,
                                                        refUsersCompradoingresso:
                                                            columnNotificationLeilaoaceitoRecord
                                                                .usersREF,
                                                        refIngressocomprado:
                                                            columnNotificationLeilaoaceitoRecord
                                                                .ingressoREF,
                                                      ));
                                                      logFirebaseEvent(
                                                          'Button_backend_call');

                                                      await widget!.ingressoREF!
                                                          .update(
                                                              createIngressosRecordData(
                                                        disponivel: false,
                                                        datadavenda:
                                                            getCurrentTimestamp,
                                                      ));
                                                      logFirebaseEvent(
                                                          'Button_backend_call');

                                                      await NotifcationCompraIngressoVendedorRecord
                                                          .collection
                                                          .doc()
                                                          .set(
                                                              createNotifcationCompraIngressoVendedorRecordData(
                                                            users:
                                                                columnNotificationLeilaoaceitoRecord
                                                                    .usersREF,
                                                            time:
                                                                getCurrentTimestamp,
                                                            nomedafesta:
                                                                columnNotificationLeilaoaceitoRecord
                                                                    .nomedafesta,
                                                            nomedocliente:
                                                                valueOrDefault(
                                                                    currentUserDocument
                                                                        ?.name,
                                                                    ''),
                                                            emailcliente:
                                                                currentUserEmail,
                                                            telefonecliente:
                                                                currentPhoneNumber,
                                                            valordoingresso:
                                                                columnNotificationLeilaoaceitoRecord
                                                                    .valorproposto,
                                                            plataformaOficial:
                                                                columnNotificationLeilaoaceitoRecord
                                                                    .plataformaoficial,
                                                            notComprovante:
                                                                currentUserReference,
                                                          ));
                                                      logFirebaseEvent(
                                                          'Button_update_app_state');
                                                      FFAppState()
                                                          .valorTotalPagamento = FFAppState()
                                                              .valorTotalPagamento +
                                                          functions.valorTotalareceber(
                                                              columnNotificationLeilaoaceitoRecord
                                                                  .valorproposto
                                                                  .toDouble());
                                                      safeSetState(() {});
                                                      logFirebaseEvent(
                                                          'Button_backend_call');

                                                      await NotificationCompraIngressoCompradorRecord
                                                          .collection
                                                          .doc()
                                                          .set(
                                                              createNotificationCompraIngressoCompradorRecordData(
                                                            users:
                                                                currentUserReference,
                                                            time:
                                                                getCurrentTimestamp,
                                                            nomedafesta:
                                                                columnNotificationLeilaoaceitoRecord
                                                                    .nomedafesta,
                                                            plataformaOficial:
                                                                columnNotificationLeilaoaceitoRecord
                                                                    .plataformaoficial,
                                                            donoingressoREF:
                                                                columnNotificationLeilaoaceitoRecord
                                                                    .usersREF,
                                                            ingresso:
                                                                columnNotificationLeilaoaceitoRecord
                                                                    .ingressoREF,
                                                            valordoingresso:
                                                                columnNotificationLeilaoaceitoRecord
                                                                    .valorproposto,
                                                            datadafesta:
                                                                columnNotificationLeilaoaceitoRecord
                                                                    .datadoshow,
                                                          ));
                                                      logFirebaseEvent(
                                                          'Button_backend_call');

                                                      await IngressosCompradosRecord
                                                          .collection
                                                          .doc()
                                                          .set(
                                                              createIngressosCompradosRecordData(
                                                            nomedafesta:
                                                                columnNotificationLeilaoaceitoRecord
                                                                    .nomedafesta,
                                                            nomedoingresso:
                                                                columnNotificationLeilaoaceitoRecord
                                                                    .nomedoingresso,
                                                            valordoingresso:
                                                                formatNumber(
                                                              columnNotificationLeilaoaceitoRecord
                                                                  .valorproposto,
                                                              formatType:
                                                                  FormatType
                                                                      .custom,
                                                              format: 'R\$',
                                                              locale: '',
                                                            ),
                                                            datadafesta:
                                                                columnNotificationLeilaoaceitoRecord
                                                                    .datadoshow,
                                                            datadacompra:
                                                                getCurrentTimestamp,
                                                            nomedocomprador:
                                                                valueOrDefault(
                                                                    currentUserDocument
                                                                        ?.name,
                                                                    ''),
                                                            image:
                                                                columnNotificationLeilaoaceitoRecord
                                                                    .image,
                                                            local:
                                                                columnNotificationLeilaoaceitoRecord
                                                                    .local,
                                                            descricao:
                                                                columnNotificationLeilaoaceitoRecord
                                                                    .descricao,
                                                            plataformaOfical:
                                                                columnNotificationLeilaoaceitoRecord
                                                                    .plataformaoficial,
                                                            refUsers:
                                                                currentUserReference,
                                                            cidadeBeloHorizonte:
                                                                columnNotificationLeilaoaceitoRecord
                                                                        .cidadeBeloHorizonte ==
                                                                    true,
                                                            cidadeSaoPaulo:
                                                                columnNotificationLeilaoaceitoRecord
                                                                        .cidadeSaoPaulo ==
                                                                    true,
                                                            cidadeRiodeJaneiro:
                                                                columnNotificationLeilaoaceitoRecord
                                                                        .cidadeRiodeJaneiro ==
                                                                    true,
                                                            cidadeVitoria:
                                                                false,
                                                            cidadeCuritiba:
                                                                columnNotificationLeilaoaceitoRecord
                                                                        .cidadeCuritiba ==
                                                                    true,
                                                            cidadeBalneario:
                                                                columnNotificationLeilaoaceitoRecord
                                                                        .cidadeBalneario ==
                                                                    true,
                                                            cidadeOutros:
                                                                columnNotificationLeilaoaceitoRecord
                                                                        .cidadeOutros ==
                                                                    true,
                                                            cidadeRecife:
                                                                columnNotificationLeilaoaceitoRecord
                                                                        .cidadeRecife ==
                                                                    true,
                                                            cidadeFortaleza:
                                                                columnNotificationLeilaoaceitoRecord
                                                                        .cidadeFortaleza ==
                                                                    true,
                                                            cidadeBrasilia:
                                                                columnNotificationLeilaoaceitoRecord
                                                                        .cidadeBrasilia ==
                                                                    true,
                                                            cidadeFlorianopolis:
                                                                columnNotificationLeilaoaceitoRecord
                                                                        .cidadeFlorianopolis ==
                                                                    true,
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

                                                      await columnNotificationLeilaoaceitoRecord
                                                          .usersREF!
                                                          .update({
                                                        ...createUsersRecordData(
                                                          lastTicketVendidoData:
                                                              getCurrentTimestamp,
                                                          lastTicketVendidoNome:
                                                              columnNotificationLeilaoaceitoRecord
                                                                  .nomedafesta,
                                                        ),
                                                        ...mapToFirestore(
                                                          {
                                                            'ingressosvendidos':
                                                                FieldValue
                                                                    .increment(
                                                                        1),
                                                            'saldoemconta':
                                                                FieldValue.increment(
                                                                    columnNotificationLeilaoaceitoRecord
                                                                        .valorproposto),
                                                          },
                                                        ),
                                                      });
                                                      logFirebaseEvent(
                                                          'Button_backend_call');

                                                      await currentUserReference!
                                                          .update({
                                                        ...createUsersRecordData(
                                                          lastTicketCompradoData:
                                                              getCurrentTimestamp,
                                                          lastTicketCompradoNome:
                                                              columnNotificationLeilaoaceitoRecord
                                                                  .nomedafesta,
                                                        ),
                                                        ...mapToFirestore(
                                                          {
                                                            'ingressoscomprados':
                                                                FieldValue
                                                                    .increment(
                                                                        1),
                                                          },
                                                        ),
                                                      });
                                                      logFirebaseEvent(
                                                          'Button_backend_call');
                                                      await BFEmailcompraconfirmada2804Group
                                                          .emailcompraconfirmada2804Call
                                                          .call(
                                                        to: currentUserEmail,
                                                        subject:
                                                            'Compra Realizada com Sucessso! 🛒💨',
                                                        nomefesta:
                                                            columnNotificationLeilaoaceitoRecord
                                                                .nomedafesta,
                                                        localfesta:
                                                            columnNotificationLeilaoaceitoRecord
                                                                .local,
                                                        datashow:
                                                            columnNotificationLeilaoaceitoRecord
                                                                .datadoshow,
                                                        valordoingresso:
                                                            formatNumber(
                                                          columnNotificationLeilaoaceitoRecord
                                                              .valorproposto,
                                                          formatType:
                                                              FormatType.custom,
                                                          format: 'R\$',
                                                          locale: '',
                                                        ),
                                                        nomevendedor:
                                                            columnNotificationLeilaoaceitoRecord
                                                                .nomedoingresso,
                                                        plataforma:
                                                            columnNotificationLeilaoaceitoRecord
                                                                .plataformaoficial,
                                                      );

                                                      logFirebaseEvent(
                                                          'Button_backend_call');
                                                      await BFEmailvendaconfirmada2804Group
                                                          .emailvendaconfirmada2804Call
                                                          .call(
                                                        to: columnNotificationLeilaoaceitoRecord
                                                            .emaildonoingresso,
                                                        subject:
                                                            ' 🚀 Seu Ingresso foi Vendido! ',
                                                        name:
                                                            columnNotificationLeilaoaceitoRecord
                                                                .nomedoingresso,
                                                        valordoingresso:
                                                            formatNumber(
                                                          columnNotificationLeilaoaceitoRecord
                                                              .valorproposto,
                                                          formatType:
                                                              FormatType.custom,
                                                          format: 'R\$',
                                                          locale: '',
                                                        ),
                                                        nomedafesta:
                                                            columnNotificationLeilaoaceitoRecord
                                                                .nomedafesta,
                                                        datadavenda:
                                                            dateTimeFormat(
                                                          "d/M H:mm",
                                                          getCurrentTimestamp,
                                                          locale:
                                                              FFLocalizations.of(
                                                                      context)
                                                                  .languageCode,
                                                        ),
                                                        nomedocomprador:
                                                            valueOrDefault(
                                                                currentUserDocument
                                                                    ?.name,
                                                                ''),
                                                        emailcliente:
                                                            currentUserEmail,
                                                        telefone:
                                                            currentPhoneNumber,
                                                        plataforma:
                                                            columnNotificationLeilaoaceitoRecord
                                                                .plataformaoficial,
                                                        datadoshow:
                                                            columnNotificationLeilaoaceitoRecord
                                                                .datadoshow,
                                                      );

                                                      logFirebaseEvent(
                                                          'Button_backend_call');

                                                      await currentUserReference!
                                                          .update(
                                                              createUsersRecordData(
                                                        usersNotComprovante:
                                                            currentUserReference,
                                                      ));
                                                      logFirebaseEvent(
                                                          'Button_trigger_push_notification');
                                                      triggerPushNotification(
                                                        notificationTitle:
                                                            '💴 SEU INGRESSO FOI COMPRADO',
                                                        notificationText:
                                                            '${columnNotificationLeilaoaceitoRecord.nomedoingresso}- Seu ingresso da festa: ${columnNotificationLeilaoaceitoRecord.nomedafesta}foi comprado! Confira seu E-mail e Whatsapp para instruções!',
                                                        notificationSound:
                                                            'default',
                                                        userRefs: [
                                                          columnNotificationLeilaoaceitoRecord
                                                              .usersREF!
                                                        ],
                                                        initialPageName: 'home',
                                                        parameterData: {},
                                                      );
                                                      logFirebaseEvent(
                                                          'Button_trigger_push_notification');
                                                      triggerPushNotification(
                                                        notificationTitle:
                                                            '🛒 Compra Realizada!',
                                                        notificationText:
                                                            '${valueOrDefault(currentUserDocument?.name, '')}: Sua compra no valor de: ${formatNumber(
                                                          columnNotificationLeilaoaceitoRecord
                                                              .valorproposto,
                                                          formatType:
                                                              FormatType.custom,
                                                          format: 'R\$',
                                                          locale: '',
                                                        )}, Foi confirmada com sucesso! Acesse seu E-mail e Whatsapp para mais informações! ✅',
                                                        notificationSound:
                                                            'default',
                                                        userRefs: [
                                                          currentUserReference!
                                                        ],
                                                        initialPageName: 'home',
                                                        parameterData: {},
                                                      );
                                                      logFirebaseEvent(
                                                          'Button_navigate_to');

                                                      context.pushNamed(
                                                          HomeWidget.routeName);
                                                    },
                                                    text: 'Voltar para home ',
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
                                                              .titleSmall
                                                              .override(
                                                                fontFamily: FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleSmallFamily,
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryText,
                                                                fontSize: 18.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                useGoogleFonts: GoogleFonts
                                                                        .asMap()
                                                                    .containsKey(
                                                                        FlutterFlowTheme.of(context)
                                                                            .titleSmallFamily),
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
                                                statusPagamentoPIXLeilaoObterPagamentoPagarMEResponse
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
                                                statusPagamentoPIXLeilaoObterPagamentoPagarMEResponse
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
                                          Column(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 10.0, 0.0, 20.0),
                                                child: FFButtonWidget(
                                                  onPressed: () async {
                                                    logFirebaseEvent(
                                                        'STATUS_PAGAMENTO_P_I_X_LEILAO_VEJA_SEUS_');
                                                    logFirebaseEvent(
                                                        'Button_backend_call');

                                                    await CompraRecord
                                                        .collection
                                                        .doc()
                                                        .set(
                                                            createCompraRecordData(
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
                                                          email:
                                                              currentUserEmail,
                                                          nomeDoINGRESSOComprado:
                                                              columnNotificationLeilaoaceitoRecord
                                                                  .nomedoingresso,
                                                          plataformaOficial:
                                                              columnNotificationLeilaoaceitoRecord
                                                                  .plataformaoficial,
                                                          nomedafestacomprada:
                                                              columnNotificationLeilaoaceitoRecord
                                                                  .nomedafesta,
                                                          valordoingressoComprado:
                                                              columnNotificationLeilaoaceitoRecord
                                                                  .valorproposto,
                                                          usersREF:
                                                              currentUserReference,
                                                          dataDaCompra:
                                                              getCurrentTimestamp,
                                                          refUsersCompradoingresso:
                                                              columnNotificationLeilaoaceitoRecord
                                                                  .usersREF,
                                                          refingressocomprado:
                                                              columnNotificationLeilaoaceitoRecord
                                                                  .ingressoREF,
                                                        ));
                                                    logFirebaseEvent(
                                                        'Button_backend_call');

                                                    await CompraIngressoRecord
                                                            .createDoc(
                                                                currentUserReference!)
                                                        .set(
                                                            createCompraIngressoRecordData(
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
                                                      nomeDoINGRESSOComprado:
                                                          columnNotificationLeilaoaceitoRecord
                                                              .nomedoingresso,
                                                      plataformaOficial:
                                                          columnNotificationLeilaoaceitoRecord
                                                              .plataformaoficial,
                                                      nomedafestacomprada:
                                                          columnNotificationLeilaoaceitoRecord
                                                              .nomedafesta,
                                                      valordoingressoComprado:
                                                          columnNotificationLeilaoaceitoRecord
                                                              .valorproposto,
                                                      usersREF:
                                                          currentUserReference,
                                                      emailvendedor:
                                                          columnNotificationLeilaoaceitoRecord
                                                              .emaildonoingresso,
                                                      dataDaCompra:
                                                          getCurrentTimestamp,
                                                      refUsersCompradoingresso:
                                                          columnNotificationLeilaoaceitoRecord
                                                              .usersREF,
                                                      refIngressocomprado:
                                                          columnNotificationLeilaoaceitoRecord
                                                              .ingressoREF,
                                                    ));
                                                    logFirebaseEvent(
                                                        'Button_backend_call');

                                                    await widget!.ingressoREF!
                                                        .update(
                                                            createIngressosRecordData(
                                                      disponivel: false,
                                                      datadavenda:
                                                          getCurrentTimestamp,
                                                    ));
                                                    logFirebaseEvent(
                                                        'Button_backend_call');

                                                    await NotifcationCompraIngressoVendedorRecord
                                                        .collection
                                                        .doc()
                                                        .set(
                                                            createNotifcationCompraIngressoVendedorRecordData(
                                                          users:
                                                              columnNotificationLeilaoaceitoRecord
                                                                  .usersREF,
                                                          time:
                                                              getCurrentTimestamp,
                                                          nomedafesta:
                                                              columnNotificationLeilaoaceitoRecord
                                                                  .nomedafesta,
                                                          nomedocliente:
                                                              valueOrDefault(
                                                                  currentUserDocument
                                                                      ?.name,
                                                                  ''),
                                                          emailcliente:
                                                              currentUserEmail,
                                                          telefonecliente:
                                                              currentPhoneNumber,
                                                          valordoingresso:
                                                              columnNotificationLeilaoaceitoRecord
                                                                  .valorproposto,
                                                          plataformaOficial:
                                                              columnNotificationLeilaoaceitoRecord
                                                                  .plataformaoficial,
                                                          notComprovante:
                                                              currentUserReference,
                                                        ));
                                                    logFirebaseEvent(
                                                        'Button_update_app_state');
                                                    FFAppState()
                                                        .valorTotalPagamento = FFAppState()
                                                            .valorTotalPagamento +
                                                        functions.valorTotalareceber(
                                                            columnNotificationLeilaoaceitoRecord
                                                                .valorproposto
                                                                .toDouble());
                                                    safeSetState(() {});
                                                    logFirebaseEvent(
                                                        'Button_backend_call');

                                                    await NotificationCompraIngressoCompradorRecord
                                                        .collection
                                                        .doc()
                                                        .set(
                                                            createNotificationCompraIngressoCompradorRecordData(
                                                          users:
                                                              currentUserReference,
                                                          time:
                                                              getCurrentTimestamp,
                                                          nomedafesta:
                                                              columnNotificationLeilaoaceitoRecord
                                                                  .nomedafesta,
                                                          plataformaOficial:
                                                              columnNotificationLeilaoaceitoRecord
                                                                  .plataformaoficial,
                                                          donoingressoREF:
                                                              columnNotificationLeilaoaceitoRecord
                                                                  .usersREF,
                                                          ingresso:
                                                              columnNotificationLeilaoaceitoRecord
                                                                  .ingressoREF,
                                                          datadafesta:
                                                              columnNotificationLeilaoaceitoRecord
                                                                  .datadoshow,
                                                          valordoingresso:
                                                              columnNotificationLeilaoaceitoRecord
                                                                  .valorproposto,
                                                        ));
                                                    logFirebaseEvent(
                                                        'Button_backend_call');

                                                    await IngressosCompradosRecord
                                                        .collection
                                                        .doc()
                                                        .set(
                                                            createIngressosCompradosRecordData(
                                                          nomedafesta:
                                                              columnNotificationLeilaoaceitoRecord
                                                                  .nomedafesta,
                                                          nomedoingresso:
                                                              columnNotificationLeilaoaceitoRecord
                                                                  .nomedoingresso,
                                                          valordoingresso:
                                                              formatNumber(
                                                            columnNotificationLeilaoaceitoRecord
                                                                .valorproposto,
                                                            formatType:
                                                                FormatType
                                                                    .custom,
                                                            format: 'R\$',
                                                            locale: '',
                                                          ),
                                                          datadafesta:
                                                              columnNotificationLeilaoaceitoRecord
                                                                  .datadoshow,
                                                          datadacompra:
                                                              getCurrentTimestamp,
                                                          nomedocomprador:
                                                              valueOrDefault(
                                                                  currentUserDocument
                                                                      ?.name,
                                                                  ''),
                                                          image:
                                                              columnNotificationLeilaoaceitoRecord
                                                                  .image,
                                                          local:
                                                              columnNotificationLeilaoaceitoRecord
                                                                  .local,
                                                          descricao:
                                                              columnNotificationLeilaoaceitoRecord
                                                                  .descricao,
                                                          plataformaOfical:
                                                              columnNotificationLeilaoaceitoRecord
                                                                  .plataformaoficial,
                                                          refUsers:
                                                              currentUserReference,
                                                          cidadeBeloHorizonte:
                                                              columnNotificationLeilaoaceitoRecord
                                                                      .cidadeBeloHorizonte ==
                                                                  true,
                                                          cidadeSaoPaulo:
                                                              columnNotificationLeilaoaceitoRecord
                                                                      .cidadeSaoPaulo ==
                                                                  true,
                                                          cidadeRiodeJaneiro:
                                                              columnNotificationLeilaoaceitoRecord
                                                                      .cidadeRiodeJaneiro ==
                                                                  true,
                                                          cidadeVitoria: false,
                                                          cidadeCuritiba:
                                                              columnNotificationLeilaoaceitoRecord
                                                                      .cidadeCuritiba ==
                                                                  true,
                                                          cidadeBalneario:
                                                              columnNotificationLeilaoaceitoRecord
                                                                      .cidadeBalneario ==
                                                                  true,
                                                          cidadeOutros:
                                                              columnNotificationLeilaoaceitoRecord
                                                                      .cidadeOutros ==
                                                                  true,
                                                          cidadeRecife:
                                                              columnNotificationLeilaoaceitoRecord
                                                                      .cidadeRecife ==
                                                                  true,
                                                          cidadeFortaleza:
                                                              columnNotificationLeilaoaceitoRecord
                                                                      .cidadeFortaleza ==
                                                                  true,
                                                          cidadeBrasilia:
                                                              columnNotificationLeilaoaceitoRecord
                                                                      .cidadeBrasilia ==
                                                                  true,
                                                          cidadeFlorianopolis:
                                                              columnNotificationLeilaoaceitoRecord
                                                                      .cidadeFlorianopolis ==
                                                                  true,
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

                                                    await columnNotificationLeilaoaceitoRecord
                                                        .usersREF!
                                                        .update({
                                                      ...createUsersRecordData(
                                                        lastTicketVendidoData:
                                                            getCurrentTimestamp,
                                                        lastTicketVendidoNome:
                                                            columnNotificationLeilaoaceitoRecord
                                                                .nomedafesta,
                                                      ),
                                                      ...mapToFirestore(
                                                        {
                                                          'ingressosvendidos':
                                                              FieldValue
                                                                  .increment(1),
                                                          'saldoemconta':
                                                              FieldValue.increment(
                                                                  columnNotificationLeilaoaceitoRecord
                                                                      .valorproposto),
                                                        },
                                                      ),
                                                    });
                                                    logFirebaseEvent(
                                                        'Button_backend_call');

                                                    await currentUserReference!
                                                        .update({
                                                      ...createUsersRecordData(
                                                        lastTicketCompradoData:
                                                            getCurrentTimestamp,
                                                        lastTicketCompradoNome:
                                                            columnNotificationLeilaoaceitoRecord
                                                                .nomedafesta,
                                                      ),
                                                      ...mapToFirestore(
                                                        {
                                                          'ingressoscomprados':
                                                              FieldValue
                                                                  .increment(1),
                                                        },
                                                      ),
                                                    });
                                                    logFirebaseEvent(
                                                        'Button_backend_call');
                                                    await BFEmailcompraconfirmada2804Group
                                                        .emailcompraconfirmada2804Call
                                                        .call(
                                                      to: currentUserEmail,
                                                      subject:
                                                          'Compra Realizada com Sucessso! 🛒💨',
                                                      nomefesta:
                                                          columnNotificationLeilaoaceitoRecord
                                                              .nomedafesta,
                                                      localfesta:
                                                          columnNotificationLeilaoaceitoRecord
                                                              .local,
                                                      datashow:
                                                          columnNotificationLeilaoaceitoRecord
                                                              .datadoshow,
                                                      valordoingresso:
                                                          formatNumber(
                                                        columnNotificationLeilaoaceitoRecord
                                                            .valorproposto,
                                                        formatType:
                                                            FormatType.custom,
                                                        format: 'R\$',
                                                        locale: '',
                                                      ),
                                                      nomevendedor:
                                                          columnNotificationLeilaoaceitoRecord
                                                              .nomedoingresso,
                                                      plataforma:
                                                          columnNotificationLeilaoaceitoRecord
                                                              .plataformaoficial,
                                                    );

                                                    logFirebaseEvent(
                                                        'Button_backend_call');
                                                    await BFEmailvendaconfirmada2804Group
                                                        .emailvendaconfirmada2804Call
                                                        .call(
                                                      to: columnNotificationLeilaoaceitoRecord
                                                          .emaildonoingresso,
                                                      subject:
                                                          ' 🚀 Seu Ingresso foi Vendido! ',
                                                      name:
                                                          columnNotificationLeilaoaceitoRecord
                                                              .nomedoingresso,
                                                      valordoingresso:
                                                          formatNumber(
                                                        columnNotificationLeilaoaceitoRecord
                                                            .valorproposto,
                                                        formatType:
                                                            FormatType.custom,
                                                        format: 'R\$',
                                                        locale: '',
                                                      ),
                                                      nomedafesta:
                                                          columnNotificationLeilaoaceitoRecord
                                                              .nomedafesta,
                                                      datadavenda:
                                                          dateTimeFormat(
                                                        "d/M H:mm",
                                                        getCurrentTimestamp,
                                                        locale:
                                                            FFLocalizations.of(
                                                                    context)
                                                                .languageCode,
                                                      ),
                                                      nomedocomprador:
                                                          valueOrDefault(
                                                              currentUserDocument
                                                                  ?.name,
                                                              ''),
                                                      emailcliente:
                                                          currentUserEmail,
                                                      telefone:
                                                          currentPhoneNumber,
                                                      plataforma:
                                                          columnNotificationLeilaoaceitoRecord
                                                              .plataformaoficial,
                                                      datadoshow:
                                                          columnNotificationLeilaoaceitoRecord
                                                              .datadoshow,
                                                    );

                                                    logFirebaseEvent(
                                                        'Button_backend_call');

                                                    await currentUserReference!
                                                        .update(
                                                            createUsersRecordData(
                                                      usersNotComprovante:
                                                          currentUserReference,
                                                    ));
                                                    logFirebaseEvent(
                                                        'Button_trigger_push_notification');
                                                    triggerPushNotification(
                                                      notificationTitle:
                                                          '💴 SEU INGRESSO FOI COMPRADO',
                                                      notificationText:
                                                          '${columnNotificationLeilaoaceitoRecord.nomedoingresso}- Seu ingresso da festa: ${columnNotificationLeilaoaceitoRecord.nomedafesta}foi comprado! Confira seu E-mail e Whatsapp para instruções!',
                                                      notificationSound:
                                                          'default',
                                                      userRefs: [
                                                        columnNotificationLeilaoaceitoRecord
                                                            .usersREF!
                                                      ],
                                                      initialPageName: 'home',
                                                      parameterData: {},
                                                    );
                                                    logFirebaseEvent(
                                                        'Button_trigger_push_notification');
                                                    triggerPushNotification(
                                                      notificationTitle:
                                                          '🛒 Compra Realizada!',
                                                      notificationText:
                                                          '${valueOrDefault(currentUserDocument?.name, '')}: Sua compra no valor de: ${formatNumber(
                                                        columnNotificationLeilaoaceitoRecord
                                                            .valorproposto,
                                                        formatType:
                                                            FormatType.custom,
                                                        format: 'R\$',
                                                        locale: '',
                                                      )}, Foi confirmada com sucesso! Acesse seu E-mail e Whatsapp para mais informações! ✅',
                                                      notificationSound:
                                                          'default',
                                                      userRefs: [
                                                        currentUserReference!
                                                      ],
                                                      initialPageName: 'home',
                                                      parameterData: {},
                                                    );
                                                    logFirebaseEvent(
                                                        'Button_navigate_to');

                                                    context.pushNamed(
                                                        IngressosCompradosvendidosWidget
                                                            .routeName);
                                                  },
                                                  text:
                                                      'Veja seus ingressos comprados',
                                                  options: FFButtonOptions(
                                                    width: double.infinity,
                                                    height: 56.0,
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                0.0, 0.0),
                                                    iconPadding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                0.0, 0.0),
                                                    color: Colors.white,
                                                    textStyle: FlutterFlowTheme
                                                            .of(context)
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
