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
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:provider/provider.dart';
import 'cartaocredito_pagamento_l_e_i_l_a_o_model.dart';
export 'cartaocredito_pagamento_l_e_i_l_a_o_model.dart';

class CartaocreditoPagamentoLEILAOWidget extends StatefulWidget {
  const CartaocreditoPagamentoLEILAOWidget({
    super.key,
    required this.ingressoPagamentoCheckout,
    this.ingressoREF,
  });

  final DocumentReference? ingressoPagamentoCheckout;
  final DocumentReference? ingressoREF;

  static String routeName = 'cartaocreditoPagamentoLEILAO';
  static String routePath = 'cartaocreditoPagamentoLEILAO';

  @override
  State<CartaocreditoPagamentoLEILAOWidget> createState() =>
      _CartaocreditoPagamentoLEILAOWidgetState();
}

class _CartaocreditoPagamentoLEILAOWidgetState
    extends State<CartaocreditoPagamentoLEILAOWidget> {
  late CartaocreditoPagamentoLEILAOModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CartaocreditoPagamentoLEILAOModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'cartaocreditoPagamentoLEILAO'});
    _model.textController1 ??= TextEditingController();
    _model.textFieldFocusNode1 ??= FocusNode();

    _model.textController2 ??= TextEditingController();
    _model.textFieldFocusNode2 ??= FocusNode();

    _model.textController3 ??= TextEditingController();
    _model.textFieldFocusNode3 ??= FocusNode();

    _model.textController4 ??= TextEditingController();
    _model.textFieldFocusNode4 ??= FocusNode();

    _model.textController5 ??= TextEditingController();
    _model.textFieldFocusNode5 ??= FocusNode();

    _model.textController6 ??= TextEditingController(
        text: valueOrDefault(currentUserDocument?.name, ''));
    _model.textFieldFocusNode6 ??= FocusNode();

    _model.textController7 ??= TextEditingController(
        text: valueOrDefault(currentUserDocument?.cpf, ''));
    _model.textFieldFocusNode7 ??= FocusNode();

    _model.textController8 ??= TextEditingController(text: currentUserEmail);
    _model.textFieldFocusNode8 ??= FocusNode();

    _model.textController9 ??= TextEditingController(text: currentPhoneNumber);
    _model.textFieldFocusNode9 ??= FocusNode();

    _model.textController10 ??= TextEditingController(
        text: valueOrDefault(currentUserDocument?.endereco, ''));
    _model.textFieldFocusNode10 ??= FocusNode();

    _model.textController11 ??= TextEditingController(
        text: valueOrDefault(currentUserDocument?.cidade, ''));
    _model.textFieldFocusNode11 ??= FocusNode();

    _model.textController12 ??= TextEditingController(
        text: valueOrDefault(currentUserDocument?.cep, ''));
    _model.textFieldFocusNode12 ??= FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<NotificationLeilaoaceitoRecord>(
      stream: NotificationLeilaoaceitoRecord.getDocument(
          widget!.ingressoPagamentoCheckout!),
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

        final cartaocreditoPagamentoLEILAONotificationLeilaoaceitoRecord =
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
                body: NestedScrollView(
                  floatHeaderSlivers: true,
                  headerSliverBuilder: (context, _) => [
                    SliverAppBar(
                      pinned: false,
                      floating: false,
                      backgroundColor:
                          FlutterFlowTheme.of(context).secondaryBackground,
                      automaticallyImplyLeading: false,
                      leading: FlutterFlowIconButton(
                        borderColor: Colors.transparent,
                        borderRadius: 30.0,
                        borderWidth: 1.0,
                        buttonSize: 60.0,
                        icon: Icon(
                          Icons.arrow_back_rounded,
                          color: Color(0xFF5170FF),
                          size: 30.0,
                        ),
                        onPressed: () async {
                          logFirebaseEvent(
                              'CARTAOCREDITO_PAGAMENTO_L_E_I_L_A_O_arro');
                          logFirebaseEvent('IconButton_navigate_back');
                          context.safePop();
                        },
                      ),
                      title: Text(
                        'Pagamento - Cartão ',
                        style: FlutterFlowTheme.of(context)
                            .headlineMedium
                            .override(
                              fontFamily: FlutterFlowTheme.of(context)
                                  .headlineMediumFamily,
                              color: FlutterFlowTheme.of(context).primaryText,
                              letterSpacing: 0.0,
                              useGoogleFonts: GoogleFonts.asMap().containsKey(
                                  FlutterFlowTheme.of(context)
                                      .headlineMediumFamily),
                            ),
                      ),
                      actions: [],
                      centerTitle: true,
                      elevation: 0.0,
                    )
                  ],
                  body: Builder(
                    builder: (context) {
                      return SafeArea(
                        top: false,
                        child: SingleChildScrollView(
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Form(
                                    key: _model.formKey,
                                    autovalidateMode: AutovalidateMode.disabled,
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 0.0, 15.0),
                                      child: SingleChildScrollView(
                                        primary: false,
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      24.0, 24.0, 24.0, 24.0),
                                              child: SingleChildScrollView(
                                                primary: false,
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Material(
                                                      color: Colors.transparent,
                                                      elevation: 2.0,
                                                      shape:
                                                          RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(16.0),
                                                      ),
                                                      child: Container(
                                                        width:
                                                            MediaQuery.sizeOf(
                                                                        context)
                                                                    .width *
                                                                0.997,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryBackground,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      16.0),
                                                        ),
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      24.0,
                                                                      24.0,
                                                                      24.0,
                                                                      24.0),
                                                          child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Text(
                                                                'Informações do Cartão',
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .headlineSmall
                                                                    .override(
                                                                      fontFamily:
                                                                          FlutterFlowTheme.of(context)
                                                                              .headlineSmallFamily,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      useGoogleFonts: GoogleFonts
                                                                              .asMap()
                                                                          .containsKey(
                                                                              FlutterFlowTheme.of(context).headlineSmallFamily),
                                                                    ),
                                                              ),
                                                              TextFormField(
                                                                controller: _model
                                                                    .textController1,
                                                                focusNode: _model
                                                                    .textFieldFocusNode1,
                                                                autofocus:
                                                                    false,
                                                                obscureText:
                                                                    false,
                                                                decoration:
                                                                    InputDecoration(
                                                                  labelText:
                                                                      'Nome no cartão',
                                                                  labelStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        useGoogleFonts:
                                                                            GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                      ),
                                                                  hintStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyLarge
                                                                      .override(
                                                                        fontFamily:
                                                                            FlutterFlowTheme.of(context).bodyLargeFamily,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        useGoogleFonts:
                                                                            GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyLargeFamily),
                                                                      ),
                                                                  enabledBorder:
                                                                      OutlineInputBorder(
                                                                    borderSide:
                                                                        BorderSide(
                                                                      color: Color(
                                                                          0xFFE0E0E0),
                                                                      width:
                                                                          1.0,
                                                                    ),
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            8.0),
                                                                  ),
                                                                  focusedBorder:
                                                                      OutlineInputBorder(
                                                                    borderSide:
                                                                        BorderSide(
                                                                      color: Color(
                                                                          0x00000000),
                                                                      width:
                                                                          1.0,
                                                                    ),
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            8.0),
                                                                  ),
                                                                  errorBorder:
                                                                      OutlineInputBorder(
                                                                    borderSide:
                                                                        BorderSide(
                                                                      color: Color(
                                                                          0x00000000),
                                                                      width:
                                                                          1.0,
                                                                    ),
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            8.0),
                                                                  ),
                                                                  focusedErrorBorder:
                                                                      OutlineInputBorder(
                                                                    borderSide:
                                                                        BorderSide(
                                                                      color: Color(
                                                                          0x00000000),
                                                                      width:
                                                                          1.0,
                                                                    ),
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            8.0),
                                                                  ),
                                                                  filled: true,
                                                                  fillColor:
                                                                      Colors
                                                                          .white,
                                                                  suffixIcon:
                                                                      Icon(
                                                                    Icons
                                                                        .person,
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .accent2,
                                                                  ),
                                                                ),
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyLarge
                                                                    .override(
                                                                      fontFamily:
                                                                          FlutterFlowTheme.of(context)
                                                                              .bodyLargeFamily,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      useGoogleFonts: GoogleFonts
                                                                              .asMap()
                                                                          .containsKey(
                                                                              FlutterFlowTheme.of(context).bodyLargeFamily),
                                                                    ),
                                                                minLines: 1,
                                                                validator: _model
                                                                    .textController1Validator
                                                                    .asValidator(
                                                                        context),
                                                              ),
                                                              TextFormField(
                                                                controller: _model
                                                                    .textController2,
                                                                focusNode: _model
                                                                    .textFieldFocusNode2,
                                                                autofocus:
                                                                    false,
                                                                obscureText:
                                                                    false,
                                                                decoration:
                                                                    InputDecoration(
                                                                  labelText:
                                                                      'Número do cartão',
                                                                  labelStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        useGoogleFonts:
                                                                            GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                      ),
                                                                  hintStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyLarge
                                                                      .override(
                                                                        fontFamily:
                                                                            FlutterFlowTheme.of(context).bodyLargeFamily,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        useGoogleFonts:
                                                                            GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyLargeFamily),
                                                                      ),
                                                                  enabledBorder:
                                                                      OutlineInputBorder(
                                                                    borderSide:
                                                                        BorderSide(
                                                                      color: Color(
                                                                          0xFFE0E0E0),
                                                                      width:
                                                                          1.0,
                                                                    ),
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            8.0),
                                                                  ),
                                                                  focusedBorder:
                                                                      OutlineInputBorder(
                                                                    borderSide:
                                                                        BorderSide(
                                                                      color: Color(
                                                                          0x00000000),
                                                                      width:
                                                                          1.0,
                                                                    ),
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            8.0),
                                                                  ),
                                                                  errorBorder:
                                                                      OutlineInputBorder(
                                                                    borderSide:
                                                                        BorderSide(
                                                                      color: Color(
                                                                          0x00000000),
                                                                      width:
                                                                          1.0,
                                                                    ),
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            8.0),
                                                                  ),
                                                                  focusedErrorBorder:
                                                                      OutlineInputBorder(
                                                                    borderSide:
                                                                        BorderSide(
                                                                      color: Color(
                                                                          0x00000000),
                                                                      width:
                                                                          1.0,
                                                                    ),
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            8.0),
                                                                  ),
                                                                  filled: true,
                                                                  fillColor:
                                                                      Colors
                                                                          .white,
                                                                  suffixIcon:
                                                                      Icon(
                                                                    Icons
                                                                        .credit_card,
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .accent2,
                                                                  ),
                                                                ),
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyLarge
                                                                    .override(
                                                                      fontFamily:
                                                                          FlutterFlowTheme.of(context)
                                                                              .bodyLargeFamily,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      useGoogleFonts: GoogleFonts
                                                                              .asMap()
                                                                          .containsKey(
                                                                              FlutterFlowTheme.of(context).bodyLargeFamily),
                                                                    ),
                                                                minLines: 1,
                                                                keyboardType:
                                                                    TextInputType
                                                                        .number,
                                                                validator: _model
                                                                    .textController2Validator
                                                                    .asValidator(
                                                                        context),
                                                                inputFormatters: [
                                                                  _model
                                                                      .textFieldMask2
                                                                ],
                                                              ),
                                                              Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  Expanded(
                                                                    child:
                                                                        TextFormField(
                                                                      controller:
                                                                          _model
                                                                              .textController3,
                                                                      focusNode:
                                                                          _model
                                                                              .textFieldFocusNode3,
                                                                      autofocus:
                                                                          false,
                                                                      obscureText:
                                                                          false,
                                                                      decoration:
                                                                          InputDecoration(
                                                                        labelText:
                                                                            'CVV',
                                                                        labelStyle: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .override(
                                                                              fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                              letterSpacing: 0.0,
                                                                              useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                            ),
                                                                        hintStyle: FlutterFlowTheme.of(context)
                                                                            .bodyLarge
                                                                            .override(
                                                                              fontFamily: FlutterFlowTheme.of(context).bodyLargeFamily,
                                                                              letterSpacing: 0.0,
                                                                              useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyLargeFamily),
                                                                            ),
                                                                        enabledBorder:
                                                                            OutlineInputBorder(
                                                                          borderSide:
                                                                              BorderSide(
                                                                            color:
                                                                                Color(0xFFE0E0E0),
                                                                            width:
                                                                                1.0,
                                                                          ),
                                                                          borderRadius:
                                                                              BorderRadius.circular(8.0),
                                                                        ),
                                                                        focusedBorder:
                                                                            OutlineInputBorder(
                                                                          borderSide:
                                                                              BorderSide(
                                                                            color:
                                                                                Color(0x00000000),
                                                                            width:
                                                                                1.0,
                                                                          ),
                                                                          borderRadius:
                                                                              BorderRadius.circular(8.0),
                                                                        ),
                                                                        errorBorder:
                                                                            OutlineInputBorder(
                                                                          borderSide:
                                                                              BorderSide(
                                                                            color:
                                                                                Color(0x00000000),
                                                                            width:
                                                                                1.0,
                                                                          ),
                                                                          borderRadius:
                                                                              BorderRadius.circular(8.0),
                                                                        ),
                                                                        focusedErrorBorder:
                                                                            OutlineInputBorder(
                                                                          borderSide:
                                                                              BorderSide(
                                                                            color:
                                                                                Color(0x00000000),
                                                                            width:
                                                                                1.0,
                                                                          ),
                                                                          borderRadius:
                                                                              BorderRadius.circular(8.0),
                                                                        ),
                                                                        filled:
                                                                            true,
                                                                        fillColor:
                                                                            Colors.white,
                                                                      ),
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyLarge
                                                                          .override(
                                                                            fontFamily:
                                                                                FlutterFlowTheme.of(context).bodyLargeFamily,
                                                                            letterSpacing:
                                                                                0.0,
                                                                            useGoogleFonts:
                                                                                GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyLargeFamily),
                                                                          ),
                                                                      minLines:
                                                                          1,
                                                                      keyboardType:
                                                                          TextInputType
                                                                              .number,
                                                                      validator: _model
                                                                          .textController3Validator
                                                                          .asValidator(
                                                                              context),
                                                                      inputFormatters: [
                                                                        _model
                                                                            .textFieldMask3
                                                                      ],
                                                                    ),
                                                                  ),
                                                                  Expanded(
                                                                    child:
                                                                        Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          4.0,
                                                                          0.0,
                                                                          4.0,
                                                                          0.0),
                                                                      child:
                                                                          TextFormField(
                                                                        controller:
                                                                            _model.textController4,
                                                                        focusNode:
                                                                            _model.textFieldFocusNode4,
                                                                        autofocus:
                                                                            false,
                                                                        obscureText:
                                                                            false,
                                                                        decoration:
                                                                            InputDecoration(
                                                                          labelText:
                                                                              'MM',
                                                                          labelStyle: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
                                                                                fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                letterSpacing: 0.0,
                                                                                useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                              ),
                                                                          hintStyle: FlutterFlowTheme.of(context)
                                                                              .bodyLarge
                                                                              .override(
                                                                                fontFamily: FlutterFlowTheme.of(context).bodyLargeFamily,
                                                                                letterSpacing: 0.0,
                                                                                useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyLargeFamily),
                                                                              ),
                                                                          enabledBorder:
                                                                              OutlineInputBorder(
                                                                            borderSide:
                                                                                BorderSide(
                                                                              color: Color(0xFFE0E0E0),
                                                                              width: 1.0,
                                                                            ),
                                                                            borderRadius:
                                                                                BorderRadius.circular(8.0),
                                                                          ),
                                                                          focusedBorder:
                                                                              OutlineInputBorder(
                                                                            borderSide:
                                                                                BorderSide(
                                                                              color: Color(0x00000000),
                                                                              width: 1.0,
                                                                            ),
                                                                            borderRadius:
                                                                                BorderRadius.circular(8.0),
                                                                          ),
                                                                          errorBorder:
                                                                              OutlineInputBorder(
                                                                            borderSide:
                                                                                BorderSide(
                                                                              color: Color(0x00000000),
                                                                              width: 1.0,
                                                                            ),
                                                                            borderRadius:
                                                                                BorderRadius.circular(8.0),
                                                                          ),
                                                                          focusedErrorBorder:
                                                                              OutlineInputBorder(
                                                                            borderSide:
                                                                                BorderSide(
                                                                              color: Color(0x00000000),
                                                                              width: 1.0,
                                                                            ),
                                                                            borderRadius:
                                                                                BorderRadius.circular(8.0),
                                                                          ),
                                                                          filled:
                                                                              true,
                                                                          fillColor:
                                                                              Colors.white,
                                                                        ),
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyLarge
                                                                            .override(
                                                                              fontFamily: FlutterFlowTheme.of(context).bodyLargeFamily,
                                                                              letterSpacing: 0.0,
                                                                              useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyLargeFamily),
                                                                            ),
                                                                        minLines:
                                                                            1,
                                                                        keyboardType:
                                                                            TextInputType.number,
                                                                        validator: _model
                                                                            .textController4Validator
                                                                            .asValidator(context),
                                                                        inputFormatters: [
                                                                          _model
                                                                              .textFieldMask4
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Expanded(
                                                                    child:
                                                                        TextFormField(
                                                                      controller:
                                                                          _model
                                                                              .textController5,
                                                                      focusNode:
                                                                          _model
                                                                              .textFieldFocusNode5,
                                                                      autofocus:
                                                                          false,
                                                                      obscureText:
                                                                          false,
                                                                      decoration:
                                                                          InputDecoration(
                                                                        labelText:
                                                                            'YY',
                                                                        labelStyle: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .override(
                                                                              fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                              letterSpacing: 0.0,
                                                                              useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                            ),
                                                                        hintStyle: FlutterFlowTheme.of(context)
                                                                            .bodyLarge
                                                                            .override(
                                                                              fontFamily: FlutterFlowTheme.of(context).bodyLargeFamily,
                                                                              letterSpacing: 0.0,
                                                                              useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyLargeFamily),
                                                                            ),
                                                                        enabledBorder:
                                                                            OutlineInputBorder(
                                                                          borderSide:
                                                                              BorderSide(
                                                                            color:
                                                                                Color(0xFFE0E0E0),
                                                                            width:
                                                                                1.0,
                                                                          ),
                                                                          borderRadius:
                                                                              BorderRadius.circular(8.0),
                                                                        ),
                                                                        focusedBorder:
                                                                            OutlineInputBorder(
                                                                          borderSide:
                                                                              BorderSide(
                                                                            color:
                                                                                Color(0x00000000),
                                                                            width:
                                                                                1.0,
                                                                          ),
                                                                          borderRadius:
                                                                              BorderRadius.circular(8.0),
                                                                        ),
                                                                        errorBorder:
                                                                            OutlineInputBorder(
                                                                          borderSide:
                                                                              BorderSide(
                                                                            color:
                                                                                Color(0x00000000),
                                                                            width:
                                                                                1.0,
                                                                          ),
                                                                          borderRadius:
                                                                              BorderRadius.circular(8.0),
                                                                        ),
                                                                        focusedErrorBorder:
                                                                            OutlineInputBorder(
                                                                          borderSide:
                                                                              BorderSide(
                                                                            color:
                                                                                Color(0x00000000),
                                                                            width:
                                                                                1.0,
                                                                          ),
                                                                          borderRadius:
                                                                              BorderRadius.circular(8.0),
                                                                        ),
                                                                        filled:
                                                                            true,
                                                                        fillColor:
                                                                            Colors.white,
                                                                      ),
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyLarge
                                                                          .override(
                                                                            fontFamily:
                                                                                FlutterFlowTheme.of(context).bodyLargeFamily,
                                                                            letterSpacing:
                                                                                0.0,
                                                                            useGoogleFonts:
                                                                                GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyLargeFamily),
                                                                          ),
                                                                      maxLines:
                                                                          null,
                                                                      keyboardType:
                                                                          TextInputType
                                                                              .number,
                                                                      validator: _model
                                                                          .textController5Validator
                                                                          .asValidator(
                                                                              context),
                                                                      inputFormatters: [
                                                                        _model
                                                                            .textFieldMask5
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ].divide(SizedBox(
                                                                height: 16.0)),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    Material(
                                                      color: Colors.transparent,
                                                      elevation: 2.0,
                                                      shape:
                                                          RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(16.0),
                                                      ),
                                                      child: Container(
                                                        width:
                                                            MediaQuery.sizeOf(
                                                                        context)
                                                                    .width *
                                                                1.0,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryBackground,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      16.0),
                                                        ),
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      24.0,
                                                                      24.0,
                                                                      24.0,
                                                                      24.0),
                                                          child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Text(
                                                                'Informações Pessoais',
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .headlineSmall
                                                                    .override(
                                                                      fontFamily:
                                                                          FlutterFlowTheme.of(context)
                                                                              .headlineSmallFamily,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      useGoogleFonts: GoogleFonts
                                                                              .asMap()
                                                                          .containsKey(
                                                                              FlutterFlowTheme.of(context).headlineSmallFamily),
                                                                    ),
                                                              ),
                                                              AuthUserStreamWidget(
                                                                builder:
                                                                    (context) =>
                                                                        TextFormField(
                                                                  controller: _model
                                                                      .textController6,
                                                                  focusNode: _model
                                                                      .textFieldFocusNode6,
                                                                  autofocus:
                                                                      false,
                                                                  readOnly:
                                                                      true,
                                                                  obscureText:
                                                                      false,
                                                                  decoration:
                                                                      InputDecoration(
                                                                    labelText:
                                                                        'Nome Completo',
                                                                    labelStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                          letterSpacing:
                                                                              0.0,
                                                                          useGoogleFonts:
                                                                              GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                        ),
                                                                    hintStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyLarge
                                                                        .override(
                                                                          fontFamily:
                                                                              FlutterFlowTheme.of(context).bodyLargeFamily,
                                                                          letterSpacing:
                                                                              0.0,
                                                                          useGoogleFonts:
                                                                              GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyLargeFamily),
                                                                        ),
                                                                    enabledBorder:
                                                                        OutlineInputBorder(
                                                                      borderSide:
                                                                          BorderSide(
                                                                        color: Color(
                                                                            0xFFE0E0E0),
                                                                        width:
                                                                            1.0,
                                                                      ),
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              8.0),
                                                                    ),
                                                                    focusedBorder:
                                                                        OutlineInputBorder(
                                                                      borderSide:
                                                                          BorderSide(
                                                                        color: Color(
                                                                            0x00000000),
                                                                        width:
                                                                            1.0,
                                                                      ),
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              8.0),
                                                                    ),
                                                                    errorBorder:
                                                                        OutlineInputBorder(
                                                                      borderSide:
                                                                          BorderSide(
                                                                        color: Color(
                                                                            0x00000000),
                                                                        width:
                                                                            1.0,
                                                                      ),
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              8.0),
                                                                    ),
                                                                    focusedErrorBorder:
                                                                        OutlineInputBorder(
                                                                      borderSide:
                                                                          BorderSide(
                                                                        color: Color(
                                                                            0x00000000),
                                                                        width:
                                                                            1.0,
                                                                      ),
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              8.0),
                                                                    ),
                                                                    filled:
                                                                        true,
                                                                    fillColor:
                                                                        Colors
                                                                            .white,
                                                                    suffixIcon:
                                                                        Icon(
                                                                      Icons
                                                                          .person,
                                                                    ),
                                                                  ),
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyLarge
                                                                      .override(
                                                                        fontFamily:
                                                                            FlutterFlowTheme.of(context).bodyLargeFamily,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        useGoogleFonts:
                                                                            GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyLargeFamily),
                                                                      ),
                                                                  minLines: 1,
                                                                  validator: _model
                                                                      .textController6Validator
                                                                      .asValidator(
                                                                          context),
                                                                ),
                                                              ),
                                                              AuthUserStreamWidget(
                                                                builder:
                                                                    (context) =>
                                                                        TextFormField(
                                                                  controller: _model
                                                                      .textController7,
                                                                  focusNode: _model
                                                                      .textFieldFocusNode7,
                                                                  autofocus:
                                                                      false,
                                                                  readOnly:
                                                                      true,
                                                                  obscureText:
                                                                      false,
                                                                  decoration:
                                                                      InputDecoration(
                                                                    labelText:
                                                                        'CPF/CNPJ',
                                                                    labelStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                          letterSpacing:
                                                                              0.0,
                                                                          useGoogleFonts:
                                                                              GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                        ),
                                                                    hintStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyLarge
                                                                        .override(
                                                                          fontFamily:
                                                                              FlutterFlowTheme.of(context).bodyLargeFamily,
                                                                          letterSpacing:
                                                                              0.0,
                                                                          useGoogleFonts:
                                                                              GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyLargeFamily),
                                                                        ),
                                                                    enabledBorder:
                                                                        OutlineInputBorder(
                                                                      borderSide:
                                                                          BorderSide(
                                                                        color: Color(
                                                                            0xFFE0E0E0),
                                                                        width:
                                                                            1.0,
                                                                      ),
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              8.0),
                                                                    ),
                                                                    focusedBorder:
                                                                        OutlineInputBorder(
                                                                      borderSide:
                                                                          BorderSide(
                                                                        color: Color(
                                                                            0x00000000),
                                                                        width:
                                                                            1.0,
                                                                      ),
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              8.0),
                                                                    ),
                                                                    errorBorder:
                                                                        OutlineInputBorder(
                                                                      borderSide:
                                                                          BorderSide(
                                                                        color: Color(
                                                                            0x00000000),
                                                                        width:
                                                                            1.0,
                                                                      ),
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              8.0),
                                                                    ),
                                                                    focusedErrorBorder:
                                                                        OutlineInputBorder(
                                                                      borderSide:
                                                                          BorderSide(
                                                                        color: Color(
                                                                            0x00000000),
                                                                        width:
                                                                            1.0,
                                                                      ),
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              8.0),
                                                                    ),
                                                                    filled:
                                                                        true,
                                                                    fillColor:
                                                                        Colors
                                                                            .white,
                                                                    suffixIcon:
                                                                        Icon(
                                                                      Icons
                                                                          .badge,
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .accent2,
                                                                    ),
                                                                  ),
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyLarge
                                                                      .override(
                                                                        fontFamily:
                                                                            FlutterFlowTheme.of(context).bodyLargeFamily,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        useGoogleFonts:
                                                                            GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyLargeFamily),
                                                                      ),
                                                                  minLines: 1,
                                                                  keyboardType:
                                                                      TextInputType
                                                                          .number,
                                                                  validator: _model
                                                                      .textController7Validator
                                                                      .asValidator(
                                                                          context),
                                                                ),
                                                              ),
                                                              TextFormField(
                                                                controller: _model
                                                                    .textController8,
                                                                focusNode: _model
                                                                    .textFieldFocusNode8,
                                                                autofocus:
                                                                    false,
                                                                readOnly: true,
                                                                obscureText:
                                                                    false,
                                                                decoration:
                                                                    InputDecoration(
                                                                  labelText:
                                                                      'Email',
                                                                  labelStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        useGoogleFonts:
                                                                            GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                      ),
                                                                  hintStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyLarge
                                                                      .override(
                                                                        fontFamily:
                                                                            FlutterFlowTheme.of(context).bodyLargeFamily,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        useGoogleFonts:
                                                                            GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyLargeFamily),
                                                                      ),
                                                                  enabledBorder:
                                                                      OutlineInputBorder(
                                                                    borderSide:
                                                                        BorderSide(
                                                                      color: Color(
                                                                          0xFFE0E0E0),
                                                                      width:
                                                                          1.0,
                                                                    ),
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            8.0),
                                                                  ),
                                                                  focusedBorder:
                                                                      OutlineInputBorder(
                                                                    borderSide:
                                                                        BorderSide(
                                                                      color: Color(
                                                                          0x00000000),
                                                                      width:
                                                                          1.0,
                                                                    ),
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            8.0),
                                                                  ),
                                                                  errorBorder:
                                                                      OutlineInputBorder(
                                                                    borderSide:
                                                                        BorderSide(
                                                                      color: Color(
                                                                          0x00000000),
                                                                      width:
                                                                          1.0,
                                                                    ),
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            8.0),
                                                                  ),
                                                                  focusedErrorBorder:
                                                                      OutlineInputBorder(
                                                                    borderSide:
                                                                        BorderSide(
                                                                      color: Color(
                                                                          0x00000000),
                                                                      width:
                                                                          1.0,
                                                                    ),
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            8.0),
                                                                  ),
                                                                  filled: true,
                                                                  fillColor:
                                                                      Colors
                                                                          .white,
                                                                  suffixIcon:
                                                                      Icon(
                                                                    Icons.email,
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .accent2,
                                                                  ),
                                                                ),
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyLarge
                                                                    .override(
                                                                      fontFamily:
                                                                          FlutterFlowTheme.of(context)
                                                                              .bodyLargeFamily,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      useGoogleFonts: GoogleFonts
                                                                              .asMap()
                                                                          .containsKey(
                                                                              FlutterFlowTheme.of(context).bodyLargeFamily),
                                                                    ),
                                                                minLines: 1,
                                                                keyboardType:
                                                                    TextInputType
                                                                        .emailAddress,
                                                                validator: _model
                                                                    .textController8Validator
                                                                    .asValidator(
                                                                        context),
                                                              ),
                                                              AuthUserStreamWidget(
                                                                builder:
                                                                    (context) =>
                                                                        TextFormField(
                                                                  controller: _model
                                                                      .textController9,
                                                                  focusNode: _model
                                                                      .textFieldFocusNode9,
                                                                  autofocus:
                                                                      false,
                                                                  readOnly:
                                                                      true,
                                                                  obscureText:
                                                                      false,
                                                                  decoration:
                                                                      InputDecoration(
                                                                    labelText:
                                                                        'Número',
                                                                    labelStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                          letterSpacing:
                                                                              0.0,
                                                                          useGoogleFonts:
                                                                              GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                        ),
                                                                    hintStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyLarge
                                                                        .override(
                                                                          fontFamily:
                                                                              FlutterFlowTheme.of(context).bodyLargeFamily,
                                                                          letterSpacing:
                                                                              0.0,
                                                                          useGoogleFonts:
                                                                              GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyLargeFamily),
                                                                        ),
                                                                    enabledBorder:
                                                                        OutlineInputBorder(
                                                                      borderSide:
                                                                          BorderSide(
                                                                        color: Color(
                                                                            0xFFE0E0E0),
                                                                        width:
                                                                            1.0,
                                                                      ),
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              8.0),
                                                                    ),
                                                                    focusedBorder:
                                                                        OutlineInputBorder(
                                                                      borderSide:
                                                                          BorderSide(
                                                                        color: Color(
                                                                            0x00000000),
                                                                        width:
                                                                            1.0,
                                                                      ),
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              8.0),
                                                                    ),
                                                                    errorBorder:
                                                                        OutlineInputBorder(
                                                                      borderSide:
                                                                          BorderSide(
                                                                        color: Color(
                                                                            0x00000000),
                                                                        width:
                                                                            1.0,
                                                                      ),
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              8.0),
                                                                    ),
                                                                    focusedErrorBorder:
                                                                        OutlineInputBorder(
                                                                      borderSide:
                                                                          BorderSide(
                                                                        color: Color(
                                                                            0x00000000),
                                                                        width:
                                                                            1.0,
                                                                      ),
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              8.0),
                                                                    ),
                                                                    filled:
                                                                        true,
                                                                    fillColor:
                                                                        Colors
                                                                            .white,
                                                                    suffixIcon:
                                                                        Icon(
                                                                      Icons
                                                                          .phone,
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .accent2,
                                                                    ),
                                                                  ),
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyLarge
                                                                      .override(
                                                                        fontFamily:
                                                                            FlutterFlowTheme.of(context).bodyLargeFamily,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        useGoogleFonts:
                                                                            GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyLargeFamily),
                                                                      ),
                                                                  minLines: 1,
                                                                  keyboardType:
                                                                      TextInputType
                                                                          .phone,
                                                                  validator: _model
                                                                      .textController9Validator
                                                                      .asValidator(
                                                                          context),
                                                                ),
                                                              ),
                                                              AuthUserStreamWidget(
                                                                builder:
                                                                    (context) =>
                                                                        TextFormField(
                                                                  controller: _model
                                                                      .textController10,
                                                                  focusNode: _model
                                                                      .textFieldFocusNode10,
                                                                  autofocus:
                                                                      false,
                                                                  readOnly:
                                                                      true,
                                                                  obscureText:
                                                                      false,
                                                                  decoration:
                                                                      InputDecoration(
                                                                    labelText:
                                                                        'Endereço',
                                                                    labelStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                          letterSpacing:
                                                                              0.0,
                                                                          useGoogleFonts:
                                                                              GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                        ),
                                                                    hintStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyLarge
                                                                        .override(
                                                                          fontFamily:
                                                                              FlutterFlowTheme.of(context).bodyLargeFamily,
                                                                          letterSpacing:
                                                                              0.0,
                                                                          useGoogleFonts:
                                                                              GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyLargeFamily),
                                                                        ),
                                                                    enabledBorder:
                                                                        OutlineInputBorder(
                                                                      borderSide:
                                                                          BorderSide(
                                                                        color: Color(
                                                                            0xFFE0E0E0),
                                                                        width:
                                                                            1.0,
                                                                      ),
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              8.0),
                                                                    ),
                                                                    focusedBorder:
                                                                        OutlineInputBorder(
                                                                      borderSide:
                                                                          BorderSide(
                                                                        color: Color(
                                                                            0x00000000),
                                                                        width:
                                                                            1.0,
                                                                      ),
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              8.0),
                                                                    ),
                                                                    errorBorder:
                                                                        OutlineInputBorder(
                                                                      borderSide:
                                                                          BorderSide(
                                                                        color: Color(
                                                                            0x00000000),
                                                                        width:
                                                                            1.0,
                                                                      ),
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              8.0),
                                                                    ),
                                                                    focusedErrorBorder:
                                                                        OutlineInputBorder(
                                                                      borderSide:
                                                                          BorderSide(
                                                                        color: Color(
                                                                            0x00000000),
                                                                        width:
                                                                            1.0,
                                                                      ),
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              8.0),
                                                                    ),
                                                                    filled:
                                                                        true,
                                                                    fillColor:
                                                                        Colors
                                                                            .white,
                                                                    suffixIcon:
                                                                        Icon(
                                                                      Icons
                                                                          .home,
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .accent2,
                                                                    ),
                                                                  ),
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyLarge
                                                                      .override(
                                                                        fontFamily:
                                                                            FlutterFlowTheme.of(context).bodyLargeFamily,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        useGoogleFonts:
                                                                            GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyLargeFamily),
                                                                      ),
                                                                  minLines: 1,
                                                                  validator: _model
                                                                      .textController10Validator
                                                                      .asValidator(
                                                                          context),
                                                                ),
                                                              ),
                                                              AuthUserStreamWidget(
                                                                builder:
                                                                    (context) =>
                                                                        TextFormField(
                                                                  controller: _model
                                                                      .textController11,
                                                                  focusNode: _model
                                                                      .textFieldFocusNode11,
                                                                  autofocus:
                                                                      false,
                                                                  readOnly:
                                                                      true,
                                                                  obscureText:
                                                                      false,
                                                                  decoration:
                                                                      InputDecoration(
                                                                    labelText:
                                                                        'Cidade',
                                                                    labelStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                          letterSpacing:
                                                                              0.0,
                                                                          useGoogleFonts:
                                                                              GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                        ),
                                                                    hintStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyLarge
                                                                        .override(
                                                                          fontFamily:
                                                                              FlutterFlowTheme.of(context).bodyLargeFamily,
                                                                          letterSpacing:
                                                                              0.0,
                                                                          useGoogleFonts:
                                                                              GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyLargeFamily),
                                                                        ),
                                                                    enabledBorder:
                                                                        OutlineInputBorder(
                                                                      borderSide:
                                                                          BorderSide(
                                                                        color: Color(
                                                                            0xFFE0E0E0),
                                                                        width:
                                                                            1.0,
                                                                      ),
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              8.0),
                                                                    ),
                                                                    focusedBorder:
                                                                        OutlineInputBorder(
                                                                      borderSide:
                                                                          BorderSide(
                                                                        color: Color(
                                                                            0x00000000),
                                                                        width:
                                                                            1.0,
                                                                      ),
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              8.0),
                                                                    ),
                                                                    errorBorder:
                                                                        OutlineInputBorder(
                                                                      borderSide:
                                                                          BorderSide(
                                                                        color: Color(
                                                                            0x00000000),
                                                                        width:
                                                                            1.0,
                                                                      ),
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              8.0),
                                                                    ),
                                                                    focusedErrorBorder:
                                                                        OutlineInputBorder(
                                                                      borderSide:
                                                                          BorderSide(
                                                                        color: Color(
                                                                            0x00000000),
                                                                        width:
                                                                            1.0,
                                                                      ),
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              8.0),
                                                                    ),
                                                                    filled:
                                                                        true,
                                                                    fillColor:
                                                                        Colors
                                                                            .white,
                                                                    suffixIcon:
                                                                        Icon(
                                                                      Icons
                                                                          .home,
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .accent2,
                                                                    ),
                                                                  ),
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyLarge
                                                                      .override(
                                                                        fontFamily:
                                                                            FlutterFlowTheme.of(context).bodyLargeFamily,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        useGoogleFonts:
                                                                            GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyLargeFamily),
                                                                      ),
                                                                  minLines: 1,
                                                                  validator: _model
                                                                      .textController11Validator
                                                                      .asValidator(
                                                                          context),
                                                                ),
                                                              ),
                                                              AuthUserStreamWidget(
                                                                builder:
                                                                    (context) =>
                                                                        TextFormField(
                                                                  controller: _model
                                                                      .textController12,
                                                                  focusNode: _model
                                                                      .textFieldFocusNode12,
                                                                  autofocus:
                                                                      false,
                                                                  readOnly:
                                                                      true,
                                                                  obscureText:
                                                                      false,
                                                                  decoration:
                                                                      InputDecoration(
                                                                    labelText:
                                                                        'CEP',
                                                                    labelStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                          letterSpacing:
                                                                              0.0,
                                                                          useGoogleFonts:
                                                                              GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                        ),
                                                                    hintStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyLarge
                                                                        .override(
                                                                          fontFamily:
                                                                              FlutterFlowTheme.of(context).bodyLargeFamily,
                                                                          letterSpacing:
                                                                              0.0,
                                                                          useGoogleFonts:
                                                                              GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyLargeFamily),
                                                                        ),
                                                                    enabledBorder:
                                                                        OutlineInputBorder(
                                                                      borderSide:
                                                                          BorderSide(
                                                                        color: Color(
                                                                            0xFFE0E0E0),
                                                                        width:
                                                                            1.0,
                                                                      ),
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              8.0),
                                                                    ),
                                                                    focusedBorder:
                                                                        OutlineInputBorder(
                                                                      borderSide:
                                                                          BorderSide(
                                                                        color: Color(
                                                                            0x00000000),
                                                                        width:
                                                                            1.0,
                                                                      ),
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              8.0),
                                                                    ),
                                                                    errorBorder:
                                                                        OutlineInputBorder(
                                                                      borderSide:
                                                                          BorderSide(
                                                                        color: Color(
                                                                            0x00000000),
                                                                        width:
                                                                            1.0,
                                                                      ),
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              8.0),
                                                                    ),
                                                                    focusedErrorBorder:
                                                                        OutlineInputBorder(
                                                                      borderSide:
                                                                          BorderSide(
                                                                        color: Color(
                                                                            0x00000000),
                                                                        width:
                                                                            1.0,
                                                                      ),
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              8.0),
                                                                    ),
                                                                    filled:
                                                                        true,
                                                                    fillColor:
                                                                        Colors
                                                                            .white,
                                                                    suffixIcon:
                                                                        Icon(
                                                                      Icons
                                                                          .home,
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .accent2,
                                                                    ),
                                                                  ),
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyLarge
                                                                      .override(
                                                                        fontFamily:
                                                                            FlutterFlowTheme.of(context).bodyLargeFamily,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        useGoogleFonts:
                                                                            GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyLargeFamily),
                                                                      ),
                                                                  minLines: 1,
                                                                  validator: _model
                                                                      .textController12Validator
                                                                      .asValidator(
                                                                          context),
                                                                ),
                                                              ),
                                                              Align(
                                                                alignment:
                                                                    AlignmentDirectional(
                                                                        0.0,
                                                                        0.0),
                                                                child: Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .spaceBetween,
                                                                  children: [
                                                                    Container(
                                                                      width: MediaQuery.sizeOf(context)
                                                                              .width *
                                                                          0.45,
                                                                    ),
                                                                    Container(
                                                                      width: MediaQuery.sizeOf(context)
                                                                              .width *
                                                                          0.45,
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ].divide(SizedBox(
                                                                height: 16.0)),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    Material(
                                                      color: Colors.transparent,
                                                      elevation: 2.0,
                                                      shape:
                                                          RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(16.0),
                                                      ),
                                                      child: Container(
                                                        width:
                                                            MediaQuery.sizeOf(
                                                                        context)
                                                                    .width *
                                                                1.0,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryBackground,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      16.0),
                                                        ),
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      24.0,
                                                                      24.0,
                                                                      24.0,
                                                                      24.0),
                                                          child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Text(
                                                                'Resumo do Pedido',
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .headlineSmall
                                                                    .override(
                                                                      fontFamily:
                                                                          FlutterFlowTheme.of(context)
                                                                              .headlineSmallFamily,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      useGoogleFonts: GoogleFonts
                                                                              .asMap()
                                                                          .containsKey(
                                                                              FlutterFlowTheme.of(context).headlineSmallFamily),
                                                                    ),
                                                              ),
                                                              Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .spaceBetween,
                                                                children: [
                                                                  Text(
                                                                    'Total',
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyLarge
                                                                        .override(
                                                                          fontFamily:
                                                                              FlutterFlowTheme.of(context).bodyLargeFamily,
                                                                          letterSpacing:
                                                                              0.0,
                                                                          useGoogleFonts:
                                                                              GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyLargeFamily),
                                                                        ),
                                                                  ),
                                                                  Text(
                                                                    formatNumber(
                                                                      cartaocreditoPagamentoLEILAONotificationLeilaoaceitoRecord
                                                                          .valorproposto,
                                                                      formatType:
                                                                          FormatType
                                                                              .custom,
                                                                      format:
                                                                          'R\$',
                                                                      locale:
                                                                          '',
                                                                    ),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyLarge
                                                                        .override(
                                                                          fontFamily:
                                                                              FlutterFlowTheme.of(context).bodyLargeFamily,
                                                                          letterSpacing:
                                                                              0.0,
                                                                          useGoogleFonts:
                                                                              GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyLargeFamily),
                                                                        ),
                                                                  ),
                                                                ],
                                                              ),
                                                              Container(
                                                                width: MediaQuery.sizeOf(
                                                                            context)
                                                                        .width *
                                                                    1.0,
                                                                height: 1.0,
                                                                decoration:
                                                                    BoxDecoration(
                                                                  color: Color(
                                                                      0xFFE0E0E0),
                                                                ),
                                                              ),
                                                              Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .spaceBetween,
                                                                children: [
                                                                  Text(
                                                                    'Total',
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .headlineSmall
                                                                        .override(
                                                                          fontFamily:
                                                                              FlutterFlowTheme.of(context).headlineSmallFamily,
                                                                          letterSpacing:
                                                                              0.0,
                                                                          useGoogleFonts:
                                                                              GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).headlineSmallFamily),
                                                                        ),
                                                                  ),
                                                                  Text(
                                                                    formatNumber(
                                                                      cartaocreditoPagamentoLEILAONotificationLeilaoaceitoRecord
                                                                          .valorproposto,
                                                                      formatType:
                                                                          FormatType
                                                                              .custom,
                                                                      format:
                                                                          'R\$',
                                                                      locale:
                                                                          '',
                                                                    ),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .headlineSmall
                                                                        .override(
                                                                          fontFamily:
                                                                              FlutterFlowTheme.of(context).headlineSmallFamily,
                                                                          color:
                                                                              Color(0xFF2E4FE8),
                                                                          letterSpacing:
                                                                              0.0,
                                                                          useGoogleFonts:
                                                                              GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).headlineSmallFamily),
                                                                        ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ].divide(SizedBox(
                                                                height: 16.0)),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    Text(
                                                      'Suas informações de pagamento são criptografadas de forma segura.',
                                                      textAlign:
                                                          TextAlign.center,
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
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
                                                  ].divide(
                                                      SizedBox(height: 24.0)),
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      20.0, 15.0, 20.0, 19.0),
                                              child: FFButtonWidget(
                                                onPressed: () async {
                                                  logFirebaseEvent(
                                                      'CARTAOCREDITO_PAGAMENTO_L_E_I_L_A_O_CONF');
                                                  var _shouldSetState = false;
                                                  logFirebaseEvent(
                                                      'Button_validate_form');
                                                  if (_model.formKey
                                                              .currentState ==
                                                          null ||
                                                      !_model
                                                          .formKey.currentState!
                                                          .validate()) {
                                                    return;
                                                  }
                                                  logFirebaseEvent(
                                                      'Button_alert_dialog');
                                                  var confirmDialogResponse =
                                                      await showDialog<bool>(
                                                            context: context,
                                                            builder:
                                                                (alertDialogContext) {
                                                              return AlertDialog(
                                                                title: Text(
                                                                    'Seus dados estão corretos?'),
                                                                content: Text(
                                                                    'Uma vez confirmados não podem ser alterados'),
                                                                actions: [
                                                                  TextButton(
                                                                    onPressed: () =>
                                                                        Navigator.pop(
                                                                            alertDialogContext,
                                                                            false),
                                                                    child: Text(
                                                                        'Conferir'),
                                                                  ),
                                                                  TextButton(
                                                                    onPressed: () =>
                                                                        Navigator.pop(
                                                                            alertDialogContext,
                                                                            true),
                                                                    child: Text(
                                                                        'Confirmar dados!'),
                                                                  ),
                                                                ],
                                                              );
                                                            },
                                                          ) ??
                                                          false;
                                                  if (confirmDialogResponse) {
                                                    logFirebaseEvent(
                                                        'Button_backend_call');
                                                    _model.pagamentoCartao =
                                                        await PagamentosPagarMEGroup
                                                            .gerarPagamentoCartaoCreditoCall
                                                            .call(
                                                      code:
                                                          cartaocreditoPagamentoLEILAONotificationLeilaoaceitoRecord
                                                              .ingressoREF?.id,
                                                      customerId: valueOrDefault(
                                                          currentUserDocument
                                                              ?.idClientePagarME,
                                                          ''),
                                                      amounItem: functions
                                                          .pagarMEvalor(
                                                              cartaocreditoPagamentoLEILAONotificationLeilaoaceitoRecord
                                                                  .valorproposto),
                                                      descriptionItem:
                                                          cartaocreditoPagamentoLEILAONotificationLeilaoaceitoRecord
                                                              .nomedafesta,
                                                      quantityItem: 1,
                                                      codeItem:
                                                          cartaocreditoPagamentoLEILAONotificationLeilaoaceitoRecord
                                                              .nomedoingresso,
                                                      numberCartao: _model
                                                          .textController2.text,
                                                      holderNameCartao: _model
                                                          .textController1.text,
                                                      cpf: valueOrDefault(
                                                          currentUserDocument
                                                              ?.cpf,
                                                          ''),
                                                      expMonth: int.tryParse(
                                                          _model.textController4
                                                              .text),
                                                      expYear: int.tryParse(
                                                          _model.textController5
                                                              .text),
                                                      cvv: _model
                                                          .textController3.text,
                                                      enderecoCompraId:
                                                          valueOrDefault(
                                                              currentUserDocument
                                                                  ?.idClienteCobrancaPagarME,
                                                              ''),
                                                    );

                                                    _shouldSetState = true;
                                                    if ((PagamentosPagarMEGroup
                                                                .gerarPagamentoCartaoCreditoCall
                                                                .status(
                                                              (_model.pagamentoCartao
                                                                      ?.jsonBody ??
                                                                  ''),
                                                            ) ==
                                                            'pending') ||
                                                        (PagamentosPagarMEGroup
                                                                .gerarPagamentoCartaoCreditoCall
                                                                .status(
                                                              (_model.pagamentoCartao
                                                                      ?.jsonBody ??
                                                                  ''),
                                                            ) ==
                                                            'paid')) {
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
                                                            endereco: _model
                                                                .textController10
                                                                .text,
                                                            numerodetelefone:
                                                                currentPhoneNumber,
                                                            email:
                                                                currentUserEmail,
                                                            nomeDoINGRESSOComprado:
                                                                cartaocreditoPagamentoLEILAONotificationLeilaoaceitoRecord
                                                                    .nomedoingresso,
                                                            plataformaOficial:
                                                                cartaocreditoPagamentoLEILAONotificationLeilaoaceitoRecord
                                                                    .plataformaoficial,
                                                            nomedafestacomprada:
                                                                cartaocreditoPagamentoLEILAONotificationLeilaoaceitoRecord
                                                                    .nomedafesta,
                                                            valordoingressoComprado:
                                                                cartaocreditoPagamentoLEILAONotificationLeilaoaceitoRecord
                                                                    .valorproposto,
                                                            usersREF:
                                                                currentUserReference,
                                                            dataDaCompra:
                                                                getCurrentTimestamp,
                                                            refUsersCompradoingresso:
                                                                cartaocreditoPagamentoLEILAONotificationLeilaoaceitoRecord
                                                                    .usersREF,
                                                            refingressocomprado:
                                                                cartaocreditoPagamentoLEILAONotificationLeilaoaceitoRecord
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
                                                            cartaocreditoPagamentoLEILAONotificationLeilaoaceitoRecord
                                                                .nomedoingresso,
                                                        plataformaOficial:
                                                            cartaocreditoPagamentoLEILAONotificationLeilaoaceitoRecord
                                                                .plataformaoficial,
                                                        nomedafestacomprada:
                                                            cartaocreditoPagamentoLEILAONotificationLeilaoaceitoRecord
                                                                .nomedafesta,
                                                        valordoingressoComprado:
                                                            cartaocreditoPagamentoLEILAONotificationLeilaoaceitoRecord
                                                                .valorproposto,
                                                        usersREF:
                                                            currentUserReference,
                                                        emailvendedor:
                                                            cartaocreditoPagamentoLEILAONotificationLeilaoaceitoRecord
                                                                .emaildonoingresso,
                                                        endereco: _model
                                                            .textController10
                                                            .text,
                                                        dataDaCompra:
                                                            getCurrentTimestamp,
                                                        refUsersCompradoingresso:
                                                            cartaocreditoPagamentoLEILAONotificationLeilaoaceitoRecord
                                                                .usersREF,
                                                        refIngressocomprado:
                                                            cartaocreditoPagamentoLEILAONotificationLeilaoaceitoRecord
                                                                .ingressoREF,
                                                      ));
                                                      logFirebaseEvent(
                                                          'Button_backend_call');

                                                      await NotifcationCompraIngressoVendedorRecord
                                                          .collection
                                                          .doc()
                                                          .set(
                                                              createNotifcationCompraIngressoVendedorRecordData(
                                                            users:
                                                                cartaocreditoPagamentoLEILAONotificationLeilaoaceitoRecord
                                                                    .usersREF,
                                                            time:
                                                                getCurrentTimestamp,
                                                            nomedafesta:
                                                                cartaocreditoPagamentoLEILAONotificationLeilaoaceitoRecord
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
                                                                cartaocreditoPagamentoLEILAONotificationLeilaoaceitoRecord
                                                                    .valorproposto,
                                                            plataformaOficial:
                                                                cartaocreditoPagamentoLEILAONotificationLeilaoaceitoRecord
                                                                    .plataformaoficial,
                                                            notComprovante:
                                                                currentUserReference,
                                                          ));
                                                      logFirebaseEvent(
                                                          'Button_backend_call');

                                                      await cartaocreditoPagamentoLEILAONotificationLeilaoaceitoRecord
                                                          .ingressoREF!
                                                          .update(
                                                              createIngressosRecordData(
                                                        disponivel: false,
                                                        datadavenda:
                                                            getCurrentTimestamp,
                                                      ));
                                                      logFirebaseEvent(
                                                          'Button_update_app_state');
                                                      FFAppState()
                                                          .valorTotalPagamento = FFAppState()
                                                              .valorTotalPagamento +
                                                          functions.valorTotalareceber(
                                                              cartaocreditoPagamentoLEILAONotificationLeilaoaceitoRecord
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
                                                                cartaocreditoPagamentoLEILAONotificationLeilaoaceitoRecord
                                                                    .nomedafesta,
                                                            plataformaOficial:
                                                                cartaocreditoPagamentoLEILAONotificationLeilaoaceitoRecord
                                                                    .plataformaoficial,
                                                            donoingressoREF:
                                                                cartaocreditoPagamentoLEILAONotificationLeilaoaceitoRecord
                                                                    .usersREF,
                                                            ingresso:
                                                                cartaocreditoPagamentoLEILAONotificationLeilaoaceitoRecord
                                                                    .ingressoREF,
                                                            valordoingresso:
                                                                cartaocreditoPagamentoLEILAONotificationLeilaoaceitoRecord
                                                                    .valorproposto,
                                                            datadafesta:
                                                                cartaocreditoPagamentoLEILAONotificationLeilaoaceitoRecord
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
                                                                cartaocreditoPagamentoLEILAONotificationLeilaoaceitoRecord
                                                                    .nomedafesta,
                                                            nomedoingresso:
                                                                cartaocreditoPagamentoLEILAONotificationLeilaoaceitoRecord
                                                                    .nomedoingresso,
                                                            valordoingresso:
                                                                formatNumber(
                                                              cartaocreditoPagamentoLEILAONotificationLeilaoaceitoRecord
                                                                  .valorproposto,
                                                              formatType:
                                                                  FormatType
                                                                      .custom,
                                                              format: 'R\$',
                                                              locale: '',
                                                            ),
                                                            datadafesta:
                                                                cartaocreditoPagamentoLEILAONotificationLeilaoaceitoRecord
                                                                    .datadoshow,
                                                            datadacompra:
                                                                getCurrentTimestamp,
                                                            nomedocomprador:
                                                                valueOrDefault(
                                                                    currentUserDocument
                                                                        ?.name,
                                                                    ''),
                                                            image:
                                                                cartaocreditoPagamentoLEILAONotificationLeilaoaceitoRecord
                                                                    .image,
                                                            local:
                                                                cartaocreditoPagamentoLEILAONotificationLeilaoaceitoRecord
                                                                    .local,
                                                            descricao:
                                                                cartaocreditoPagamentoLEILAONotificationLeilaoaceitoRecord
                                                                    .descricao,
                                                            plataformaOfical:
                                                                cartaocreditoPagamentoLEILAONotificationLeilaoaceitoRecord
                                                                    .plataformaoficial,
                                                            refUsers:
                                                                currentUserReference,
                                                            cidadeBeloHorizonte:
                                                                cartaocreditoPagamentoLEILAONotificationLeilaoaceitoRecord
                                                                        .cidadeBeloHorizonte ==
                                                                    true,
                                                            cidadeSaoPaulo:
                                                                cartaocreditoPagamentoLEILAONotificationLeilaoaceitoRecord
                                                                        .cidadeSaoPaulo ==
                                                                    true,
                                                            cidadeRiodeJaneiro:
                                                                cartaocreditoPagamentoLEILAONotificationLeilaoaceitoRecord
                                                                        .cidadeRiodeJaneiro ==
                                                                    true,
                                                            cidadeVitoria:
                                                                cartaocreditoPagamentoLEILAONotificationLeilaoaceitoRecord
                                                                        .cidadeVitoria ==
                                                                    true,
                                                            cidadeCuritiba:
                                                                cartaocreditoPagamentoLEILAONotificationLeilaoaceitoRecord
                                                                        .cidadeCuritiba ==
                                                                    true,
                                                            cidadeBalneario:
                                                                cartaocreditoPagamentoLEILAONotificationLeilaoaceitoRecord
                                                                        .cidadeBalneario ==
                                                                    true,
                                                            cidadeOutros:
                                                                cartaocreditoPagamentoLEILAONotificationLeilaoaceitoRecord
                                                                        .cidadeOutros ==
                                                                    true,
                                                            cidadeRecife:
                                                                cartaocreditoPagamentoLEILAONotificationLeilaoaceitoRecord
                                                                        .cidadeRecife ==
                                                                    true,
                                                            cidadeFortaleza:
                                                                cartaocreditoPagamentoLEILAONotificationLeilaoaceitoRecord
                                                                        .cidadeFortaleza ==
                                                                    true,
                                                            cidadeBrasilia:
                                                                cartaocreditoPagamentoLEILAONotificationLeilaoaceitoRecord
                                                                        .cidadeBrasilia ==
                                                                    true,
                                                            cidadeFlorianopolis:
                                                                cartaocreditoPagamentoLEILAONotificationLeilaoaceitoRecord
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

                                                      await cartaocreditoPagamentoLEILAONotificationLeilaoaceitoRecord
                                                          .usersREF!
                                                          .update({
                                                        ...createUsersRecordData(
                                                          lastTicketVendidoData:
                                                              getCurrentTimestamp,
                                                          lastTicketVendidoNome:
                                                              cartaocreditoPagamentoLEILAONotificationLeilaoaceitoRecord
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
                                                                    cartaocreditoPagamentoLEILAONotificationLeilaoaceitoRecord
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
                                                              cartaocreditoPagamentoLEILAONotificationLeilaoaceitoRecord
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

                                                      await widget!.ingressoREF!
                                                          .update(
                                                              createIngressosRecordData(
                                                        disponivel: false,
                                                        datadavenda:
                                                            getCurrentTimestamp,
                                                      ));
                                                      logFirebaseEvent(
                                                          'Button_backend_call');
                                                      await BFEmailcompraconfirmada2804Group
                                                          .emailcompraconfirmada2804Call
                                                          .call(
                                                        to: currentUserEmail,
                                                        subject:
                                                            'Compra Realizada com Sucessso! 🛒💨',
                                                        nomefesta:
                                                            cartaocreditoPagamentoLEILAONotificationLeilaoaceitoRecord
                                                                .nomedafesta,
                                                        localfesta:
                                                            cartaocreditoPagamentoLEILAONotificationLeilaoaceitoRecord
                                                                .local,
                                                        datashow:
                                                            cartaocreditoPagamentoLEILAONotificationLeilaoaceitoRecord
                                                                .datadoshow,
                                                        valordoingresso:
                                                            formatNumber(
                                                          cartaocreditoPagamentoLEILAONotificationLeilaoaceitoRecord
                                                              .valorproposto,
                                                          formatType:
                                                              FormatType.custom,
                                                          format: 'R\$',
                                                          locale: '',
                                                        ),
                                                        nomevendedor:
                                                            cartaocreditoPagamentoLEILAONotificationLeilaoaceitoRecord
                                                                .nomedoingresso,
                                                        plataforma:
                                                            cartaocreditoPagamentoLEILAONotificationLeilaoaceitoRecord
                                                                .plataformaoficial,
                                                      );

                                                      logFirebaseEvent(
                                                          'Button_backend_call');
                                                      await BFEmailvendaconfirmada2804Group
                                                          .emailvendaconfirmada2804Call
                                                          .call(
                                                        to: cartaocreditoPagamentoLEILAONotificationLeilaoaceitoRecord
                                                            .emaildonoingresso,
                                                        subject:
                                                            ' 🚀 Seu Ingresso foi Vendido! ',
                                                        name:
                                                            cartaocreditoPagamentoLEILAONotificationLeilaoaceitoRecord
                                                                .nomedoingresso,
                                                        valordoingresso:
                                                            formatNumber(
                                                          cartaocreditoPagamentoLEILAONotificationLeilaoaceitoRecord
                                                              .valorproposto,
                                                          formatType:
                                                              FormatType.custom,
                                                          format: 'R\$',
                                                          locale: '',
                                                        ),
                                                        nomedafesta:
                                                            cartaocreditoPagamentoLEILAONotificationLeilaoaceitoRecord
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
                                                            cartaocreditoPagamentoLEILAONotificationLeilaoaceitoRecord
                                                                .plataformaoficial,
                                                        datadoshow:
                                                            cartaocreditoPagamentoLEILAONotificationLeilaoaceitoRecord
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
                                                            '${cartaocreditoPagamentoLEILAONotificationLeilaoaceitoRecord.nomedoingresso}- Seu ingresso da festa: ${cartaocreditoPagamentoLEILAONotificationLeilaoaceitoRecord.nomedafesta}foi comprado! Confira seu E-mail e Whatsapp para instruções!',
                                                        notificationSound:
                                                            'default',
                                                        userRefs: [
                                                          cartaocreditoPagamentoLEILAONotificationLeilaoaceitoRecord
                                                              .usersREF!
                                                        ],
                                                        initialPageName: 'home',
                                                        parameterData: {},
                                                      );
                                                      logFirebaseEvent(
                                                          'Button_trigger_push_notification');
                                                      triggerPushNotification(
                                                        notificationTitle:
                                                            'Compra Realizada!',
                                                        notificationText:
                                                            '${valueOrDefault(currentUserDocument?.name, '')}: Sua compra no valor de: ${formatNumber(
                                                          cartaocreditoPagamentoLEILAONotificationLeilaoaceitoRecord
                                                              .valorproposto,
                                                          formatType:
                                                              FormatType.custom,
                                                          format: 'R\$',
                                                          locale: '',
                                                        )}, Foi confirmada com sucesso! Acesse seu E-mail e Whatsapp para mais informações!',
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
                                                          SucesspaymentWidget
                                                              .routeName);
                                                    } else {
                                                      logFirebaseEvent(
                                                          'Button_alert_dialog');
                                                      await showDialog(
                                                        context: context,
                                                        builder:
                                                            (alertDialogContext) {
                                                          return AlertDialog(
                                                            title: Text(
                                                                'Falha na Autentificação do Cartão'),
                                                            content: Text(
                                                                PagamentosPagarMEGroup
                                                                    .gerarPagamentoCartaoCreditoCall
                                                                    .status(
                                                              (_model.pagamentoCartao
                                                                      ?.jsonBody ??
                                                                  ''),
                                                            )!),
                                                            actions: [
                                                              TextButton(
                                                                onPressed: () =>
                                                                    Navigator.pop(
                                                                        alertDialogContext),
                                                                child:
                                                                    Text('Ok'),
                                                              ),
                                                            ],
                                                          );
                                                        },
                                                      );
                                                      if (_shouldSetState)
                                                        safeSetState(() {});
                                                      return;
                                                    }
                                                  } else {
                                                    if (_shouldSetState)
                                                      safeSetState(() {});
                                                    return;
                                                  }

                                                  if (_shouldSetState)
                                                    safeSetState(() {});
                                                },
                                                text: 'Confirmar Compra',
                                                options: FFButtonOptions(
                                                  width: double.infinity,
                                                  height: 56.0,
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 0.0, 0.0),
                                                  iconPadding:
                                                      EdgeInsetsDirectional
                                                          .fromSTEB(0.0, 0.0,
                                                              0.0, 0.0),
                                                  color: Color(0xFF2E4FE8),
                                                  textStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .titleLarge
                                                          .override(
                                                            fontFamily:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleLargeFamily,
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .secondaryBackground,
                                                            fontSize: 20.0,
                                                            letterSpacing: 0.0,
                                                            useGoogleFonts: GoogleFonts
                                                                    .asMap()
                                                                .containsKey(
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .titleLargeFamily),
                                                          ),
                                                  elevation: 3.0,
                                                  borderSide: BorderSide(
                                                    color: Colors.transparent,
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          28.0),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
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
