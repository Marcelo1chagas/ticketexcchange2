import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/push_notifications/push_notifications_util.dart';
import '/components/ingresso_favoritado_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_toggle_icon.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:math';
import 'dart:ui';
import '/flutter_flow/custom_functions.dart' as functions;
import '/flutter_flow/random_data_util.dart' as random_data;
import '/index.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:share_plus/share_plus.dart';
import 'fingressoespecifico_n_o_v_o_model.dart';
export 'fingressoespecifico_n_o_v_o_model.dart';

class FingressoespecificoNOVOWidget extends StatefulWidget {
  const FingressoespecificoNOVOWidget({
    super.key,
    this.ingressoREF,
  });

  final DocumentReference? ingressoREF;

  static String routeName = 'FingressoespecificoNOVO';
  static String routePath = 'ingressoespecific0';

  @override
  State<FingressoespecificoNOVOWidget> createState() =>
      _FingressoespecificoNOVOWidgetState();
}

class _FingressoespecificoNOVOWidgetState
    extends State<FingressoespecificoNOVOWidget> with TickerProviderStateMixin {
  late FingressoespecificoNOVOModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FingressoespecificoNOVOModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'FingressoespecificoNOVO'});
    _model.textController ??= TextEditingController();
    _model.textFieldFocusNode ??= FocusNode();

    animationsMap.addAll({
      'iconOnActionTriggerAnimation': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: true,
        effectsBuilder: () => [
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 670.0.ms,
            begin: Offset(0.0, 0.0),
            end: Offset(1.0, 1.0),
          ),
          ScaleEffect(
            curve: Curves.easeOut,
            delay: 1270.0.ms,
            duration: 600.0.ms,
            begin: Offset(1.0, 1.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
    });
    setupAnimations(
      animationsMap.values.where((anim) =>
          anim.trigger == AnimationTrigger.onActionTrigger ||
          !anim.applyInitialState),
      this,
    );

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<IngressosRecord>(
      stream: IngressosRecord.getDocument(widget!.ingressoREF!),
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

        final fingressoespecificoNOVOIngressosRecord = snapshot.data!;

        return Title(
            title: 'FingressoespecificoNOVO',
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
                body: Stack(
                  children: [
                    SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: MediaQuery.sizeOf(context).width * 1.0,
                            height: 300.0,
                            child: Stack(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(20.0),
                                    bottomRight: Radius.circular(20.0),
                                    topLeft: Radius.circular(0.0),
                                    topRight: Radius.circular(0.0),
                                  ),
                                  child: Image.network(
                                    valueOrDefault<String>(
                                      fingressoespecificoNOVOIngressosRecord
                                          .image,
                                      'https://images.unsplash.com/photo-1422493757035-1e5e03968f95?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHwyfHxzdW5zZXR8ZW58MHx8fHwxNzM3Mjc1OTQ5fDA&ixlib=rb-4.0.3&q=80&w=1080',
                                    ),
                                    width:
                                        MediaQuery.sizeOf(context).width * 1.0,
                                    height: 300.0,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Container(
                                  width: MediaQuery.sizeOf(context).width * 1.0,
                                  height:
                                      MediaQuery.sizeOf(context).height * 1.011,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(0.0),
                                      bottomRight: Radius.circular(0.0),
                                      topLeft: Radius.circular(0.0),
                                      topRight: Radius.circular(0.0),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      16.0, 48.0, 16.0, 16.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      FlutterFlowIconButton(
                                        borderColor: Colors.transparent,
                                        borderRadius: 20.0,
                                        buttonSize: 40.0,
                                        fillColor: Color(0x969F9F9F),
                                        icon: Icon(
                                          Icons.arrow_back,
                                          color: Colors.white,
                                          size: 24.0,
                                        ),
                                        onPressed: () async {
                                          logFirebaseEvent(
                                              'FINGRESSOESPECIFICO_N_O_V_O_arrow_back_I');
                                          logFirebaseEvent(
                                              'IconButton_navigate_back');
                                          context.safePop();
                                        },
                                      ),
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Builder(
                                            builder: (context) =>
                                                FlutterFlowIconButton(
                                              borderColor: Colors.transparent,
                                              borderRadius: 20.0,
                                              buttonSize: 40.0,
                                              fillColor: Color(0x969F9F9F),
                                              icon: Icon(
                                                Icons.ios_share_outlined,
                                                color: Colors.white,
                                                size: 23.0,
                                              ),
                                              onPressed: () async {
                                                logFirebaseEvent(
                                                    'FINGRESSOESPECIFICO_N_O_V_O_ios_share_ou');
                                                logFirebaseEvent(
                                                    'IconButton_generate_current_page_link');
                                                _model.currentPageLink =
                                                    await generateCurrentPageLink(
                                                  context,
                                                  title:
                                                      fingressoespecificoNOVOIngressosRecord
                                                          .nomedafesta,
                                                  imageUrl:
                                                      fingressoespecificoNOVOIngressosRecord
                                                          .image,
                                                );

                                                logFirebaseEvent(
                                                    'IconButton_share');
                                                await Share.share(
                                                  _model.currentPageLink,
                                                  sharePositionOrigin:
                                                      getWidgetBoundingBox(
                                                          context),
                                                );
                                              },
                                            ),
                                          ),
                                          FlutterFlowIconButton(
                                            borderColor: Colors.transparent,
                                            borderRadius: 20.0,
                                            buttonSize: 40.0,
                                            fillColor: Color(0x969F9F9F),
                                            icon: Icon(
                                              Icons.favorite_border,
                                              color: Colors.white,
                                              size: 24.0,
                                            ),
                                            onPressed: () async {
                                              logFirebaseEvent(
                                                  'FINGRESSOESPECIFICO_N_O_V_O_favorite_bor');
                                              if (fingressoespecificoNOVOIngressosRecord
                                                      .disponivel ==
                                                  true) {
                                                logFirebaseEvent(
                                                    'IconButton_backend_call');

                                                await FavoritosRecord.collection
                                                    .doc(
                                                        '${fingressoespecificoNOVOIngressosRecord.nomedafesta}${random_data.randomInteger(150, 300).toString()}')
                                                    .set(
                                                        createFavoritosRecordData(
                                                      local:
                                                          fingressoespecificoNOVOIngressosRecord
                                                              .local,
                                                      datadoshow:
                                                          fingressoespecificoNOVOIngressosRecord
                                                              .datashow,
                                                      nomedafesta:
                                                          fingressoespecificoNOVOIngressosRecord
                                                              .nomedafesta,
                                                      nomedoingresso:
                                                          fingressoespecificoNOVOIngressosRecord
                                                              .nomedoingresso,
                                                      descricao:
                                                          fingressoespecificoNOVOIngressosRecord
                                                              .descricao,
                                                      valordoingresso:
                                                          fingressoespecificoNOVOIngressosRecord
                                                              .valordoingresso,
                                                      image:
                                                          fingressoespecificoNOVOIngressosRecord
                                                              .image,
                                                      emailvendedor:
                                                          fingressoespecificoNOVOIngressosRecord
                                                              .email,
                                                      plataformaOficial:
                                                          fingressoespecificoNOVOIngressosRecord
                                                              .plataformaOficial,
                                                      ingressoREF:
                                                          fingressoespecificoNOVOIngressosRecord
                                                              .reference,
                                                      usersDONOingresso:
                                                          fingressoespecificoNOVOIngressosRecord
                                                              .users,
                                                      cidadeBeloHorizonte:
                                                          fingressoespecificoNOVOIngressosRecord
                                                                  .cidadeBeloHorizonte ==
                                                              true,
                                                      cidadeSaoPaulo:
                                                          fingressoespecificoNOVOIngressosRecord
                                                                  .cidadeSaoPaulo ==
                                                              true,
                                                      cidadeRiodeJaneiro:
                                                          fingressoespecificoNOVOIngressosRecord
                                                                  .cidadeRiodeJaneiro ==
                                                              true,
                                                      cidadeVitoria:
                                                          fingressoespecificoNOVOIngressosRecord
                                                                  .cidadeVitoria ==
                                                              true,
                                                      cidadeCuritiba:
                                                          fingressoespecificoNOVOIngressosRecord
                                                                  .cidadeCuritiba ==
                                                              true,
                                                      cidadeBalneario:
                                                          fingressoespecificoNOVOIngressosRecord
                                                                  .cidadeBalneario ==
                                                              true,
                                                      cidadeOutros:
                                                          fingressoespecificoNOVOIngressosRecord
                                                                  .cidadeOutros ==
                                                              true,
                                                      disponivel:
                                                          fingressoespecificoNOVOIngressosRecord
                                                                  .disponivel ==
                                                              true,
                                                      cidadeRecife:
                                                          fingressoespecificoNOVOIngressosRecord
                                                                  .cidadeRecife ==
                                                              true,
                                                      cidadeFortaleza:
                                                          fingressoespecificoNOVOIngressosRecord
                                                                  .cidadeFortaleza ==
                                                              true,
                                                      cidadeBrasilia:
                                                          fingressoespecificoNOVOIngressosRecord
                                                                  .cidadeBrasilia ==
                                                              true,
                                                      cidadeFlorianopolis:
                                                          fingressoespecificoNOVOIngressosRecord
                                                                  .cidadeFlorianopolis ==
                                                              true,
                                                      users:
                                                          currentUserReference,
                                                    ));
                                                logFirebaseEvent(
                                                    'IconButton_update_app_state');
                                                FFAppState()
                                                        .FAVORITOnumeroINGRESSO =
                                                    FFAppState()
                                                            .FAVORITOnumeroINGRESSO +
                                                        1.0;
                                                FFAppState()
                                                    .TOTALSOMAa = FFAppState()
                                                        .TOTALSOMAa +
                                                    functions.fUNCAOdeSOMAingresso(
                                                        0.0,
                                                        fingressoespecificoNOVOIngressosRecord
                                                            .valordoingresso
                                                            .toDouble());
                                                safeSetState(() {});
                                                logFirebaseEvent(
                                                    'IconButton_backend_call');

                                                await NotificationFAVINGRESSORecord
                                                    .collection
                                                    .doc()
                                                    .set(
                                                        createNotificationFAVINGRESSORecordData(
                                                      timeCretaed:
                                                          getCurrentTimestamp,
                                                      nomedafesta:
                                                          fingressoespecificoNOVOIngressosRecord
                                                              .nomedafesta,
                                                      users:
                                                          fingressoespecificoNOVOIngressosRecord
                                                              .users,
                                                    ));
                                                logFirebaseEvent(
                                                    'IconButton_update_app_state');
                                                FFAppState().NotificationTOTAL =
                                                    FFAppState()
                                                            .NotificationTOTAL +
                                                        1.0;
                                                safeSetState(() {});
                                                logFirebaseEvent(
                                                    'IconButton_trigger_push_notification');
                                                triggerPushNotification(
                                                  notificationTitle:
                                                      'Seu ingresso foi Favoritado!',
                                                  notificationText:
                                                      '${fingressoespecificoNOVOIngressosRecord.nomedoingresso} Seu ingresso foi adicionado a lista de favoritos de um usuário! Logo você deve vender!',
                                                  notificationSound: 'default',
                                                  userRefs: [
                                                    fingressoespecificoNOVOIngressosRecord
                                                        .users!
                                                  ],
                                                  initialPageName: 'notifcaao',
                                                  parameterData: {},
                                                );
                                                logFirebaseEvent(
                                                    'IconButton_backend_call');

                                                await currentUserReference!
                                                    .update({
                                                  ...mapToFirestore(
                                                    {
                                                      'valorTotalFAV':
                                                          FieldValue.increment(
                                                              fingressoespecificoNOVOIngressosRecord
                                                                  .valordoingresso),
                                                    },
                                                  ),
                                                });
                                                logFirebaseEvent(
                                                    'IconButton_bottom_sheet');
                                                await showModalBottomSheet(
                                                  isScrollControlled: true,
                                                  backgroundColor:
                                                      Colors.transparent,
                                                  useSafeArea: true,
                                                  context: context,
                                                  builder: (context) {
                                                    return GestureDetector(
                                                      onTap: () {
                                                        FocusScope.of(context)
                                                            .unfocus();
                                                        FocusManager.instance
                                                            .primaryFocus
                                                            ?.unfocus();
                                                      },
                                                      child: Padding(
                                                        padding: MediaQuery
                                                            .viewInsetsOf(
                                                                context),
                                                        child:
                                                            IngressoFavoritadoWidget(),
                                                      ),
                                                    );
                                                  },
                                                ).then((value) =>
                                                    safeSetState(() {}));
                                              } else {
                                                logFirebaseEvent(
                                                    'IconButton_alert_dialog');
                                                await showDialog(
                                                  context: context,
                                                  builder:
                                                      (alertDialogContext) {
                                                    return AlertDialog(
                                                      title: Text('Vendido'),
                                                      content: Text(
                                                          'Esse ingresso foi vendido'),
                                                      actions: [
                                                        TextButton(
                                                          onPressed: () =>
                                                              Navigator.pop(
                                                                  alertDialogContext),
                                                          child: Text('Ok'),
                                                        ),
                                                      ],
                                                    );
                                                  },
                                                );
                                                return;
                                              }
                                            },
                                          ),
                                          Container(
                                            width: 40.0,
                                            height: 40.0,
                                            decoration: BoxDecoration(
                                              color: Color(0x969F9F9F),
                                              shape: BoxShape.circle,
                                            ),
                                            child: ToggleIcon(
                                              onPressed: () async {
                                                final likeByElement =
                                                    currentUserReference;
                                                final likeByUpdate =
                                                    fingressoespecificoNOVOIngressosRecord
                                                            .likeBy
                                                            .contains(
                                                                likeByElement)
                                                        ? FieldValue
                                                            .arrayRemove(
                                                                [likeByElement])
                                                        : FieldValue.arrayUnion(
                                                            [likeByElement]);
                                                await fingressoespecificoNOVOIngressosRecord
                                                    .reference
                                                    .update({
                                                  ...mapToFirestore(
                                                    {
                                                      'like_by_': likeByUpdate,
                                                    },
                                                  ),
                                                });
                                                logFirebaseEvent(
                                                    'FINGRESSOESPECIFICO_N_O_V_O_ToggleIcon_9');
                                                if (fingressoespecificoNOVOIngressosRecord
                                                        .likeBy
                                                        .contains(
                                                            currentUserReference) ==
                                                    true) {
                                                  logFirebaseEvent(
                                                      'ToggleIcon_backend_call');

                                                  await fingressoespecificoNOVOIngressosRecord
                                                      .users!
                                                      .update({
                                                    ...mapToFirestore(
                                                      {
                                                        'likes': FieldValue
                                                            .increment(-1),
                                                      },
                                                    ),
                                                  });
                                                  logFirebaseEvent(
                                                      'ToggleIcon_update_app_state');
                                                  FFAppState().likes =
                                                      FFAppState().likes + -1;
                                                  safeSetState(() {});
                                                  logFirebaseEvent(
                                                      'ToggleIcon_backend_call');

                                                  await fingressoespecificoNOVOIngressosRecord
                                                      .reference
                                                      .update({
                                                    ...mapToFirestore(
                                                      {
                                                        'like_by_': FieldValue
                                                            .arrayRemove([
                                                          currentUserReference
                                                        ]),
                                                      },
                                                    ),
                                                  });
                                                  return;
                                                } else {
                                                  logFirebaseEvent(
                                                      'ToggleIcon_backend_call');

                                                  await fingressoespecificoNOVOIngressosRecord
                                                      .users!
                                                      .update({
                                                    ...mapToFirestore(
                                                      {
                                                        'likes': FieldValue
                                                            .increment(1),
                                                      },
                                                    ),
                                                  });
                                                  logFirebaseEvent(
                                                      'ToggleIcon_update_app_state');
                                                  FFAppState().likes =
                                                      FFAppState().likes + 1;
                                                  safeSetState(() {});
                                                  logFirebaseEvent(
                                                      'ToggleIcon_widget_animation');
                                                  if (animationsMap[
                                                          'iconOnActionTriggerAnimation'] !=
                                                      null) {
                                                    await animationsMap[
                                                            'iconOnActionTriggerAnimation']!
                                                        .controller
                                                        .forward(from: 0.0);
                                                  }
                                                  return;
                                                }
                                              },
                                              value:
                                                  fingressoespecificoNOVOIngressosRecord
                                                      .likeBy
                                                      .contains(
                                                          currentUserReference),
                                              onIcon: Icon(
                                                Icons.thumb_up_alt_rounded,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                                size: 22.0,
                                              ),
                                              offIcon: Icon(
                                                Icons.thumb_up_alt_outlined,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                                size: 22.0,
                                              ),
                                            ),
                                          ),
                                        ].divide(SizedBox(width: 16.0)),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: MediaQuery.sizeOf(context).width * 1.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(0.0),
                                bottomRight: Radius.circular(0.0),
                                topLeft: Radius.circular(32.0),
                                topRight: Radius.circular(32.0),
                              ),
                            ),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  25.0, 24.0, 25.0, 24.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        fingressoespecificoNOVOIngressosRecord
                                            .nomedafesta,
                                        style: FlutterFlowTheme.of(context)
                                            .headlineMedium
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
                                                      .headlineMediumFamily,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              letterSpacing: 0.0,
                                              useGoogleFonts: GoogleFonts
                                                      .asMap()
                                                  .containsKey(FlutterFlowTheme
                                                          .of(context)
                                                      .headlineMediumFamily),
                                            ),
                                      ),
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Icon(
                                            Icons.event,
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryText,
                                            size: 20.0,
                                          ),
                                          Text(
                                            fingressoespecificoNOVOIngressosRecord
                                                .datashow,
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMediumFamily,
                                                  color: FlutterFlowTheme.of(
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
                                        ].divide(SizedBox(width: 8.0)),
                                      ),
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Icon(
                                            Icons.phone_iphone,
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryText,
                                            size: 20.0,
                                          ),
                                          Text(
                                            fingressoespecificoNOVOIngressosRecord
                                                .plataformaOficial,
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMediumFamily,
                                                  color: FlutterFlowTheme.of(
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
                                        ].divide(SizedBox(width: 8.0)),
                                      ),
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Icon(
                                            Icons.location_on,
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryText,
                                            size: 20.0,
                                          ),
                                          Text(
                                            fingressoespecificoNOVOIngressosRecord
                                                .local,
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMediumFamily,
                                                  color: FlutterFlowTheme.of(
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
                                        ].divide(SizedBox(width: 8.0)),
                                      ),
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Icon(
                                            Icons.location_city,
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryText,
                                            size: 20.0,
                                          ),
                                          Stack(
                                            children: [
                                              if (fingressoespecificoNOVOIngressosRecord
                                                      .cidadeBeloHorizonte ==
                                                  true)
                                                Text(
                                                  'Belo Horizonte MG',
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
                                                        fontSize: 14.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        useGoogleFonts: GoogleFonts
                                                                .asMap()
                                                            .containsKey(
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily),
                                                      ),
                                                ),
                                              if (fingressoespecificoNOVOIngressosRecord
                                                      .cidadeSaoPaulo ==
                                                  true)
                                                Text(
                                                  'São Paulo SP',
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
                                                        fontSize: 14.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        useGoogleFonts: GoogleFonts
                                                                .asMap()
                                                            .containsKey(
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily),
                                                      ),
                                                ),
                                              if (fingressoespecificoNOVOIngressosRecord
                                                      .cidadeRiodeJaneiro ==
                                                  true)
                                                Text(
                                                  'Rio de Janeiro RJ',
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
                                                        fontSize: 14.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        useGoogleFonts: GoogleFonts
                                                                .asMap()
                                                            .containsKey(
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily),
                                                      ),
                                                ),
                                              if (fingressoespecificoNOVOIngressosRecord
                                                      .cidadeVitoria ==
                                                  true)
                                                Text(
                                                  'Vitória ES',
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
                                                        fontSize: 14.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        useGoogleFonts: GoogleFonts
                                                                .asMap()
                                                            .containsKey(
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily),
                                                      ),
                                                ),
                                              if (fingressoespecificoNOVOIngressosRecord
                                                      .cidadeCuritiba ==
                                                  true)
                                                Text(
                                                  'Curitiba PR',
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
                                                        fontSize: 14.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        useGoogleFonts: GoogleFonts
                                                                .asMap()
                                                            .containsKey(
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily),
                                                      ),
                                                ),
                                              if (fingressoespecificoNOVOIngressosRecord
                                                      .cidadeFortaleza ==
                                                  true)
                                                Text(
                                                  'Fortaleza CE',
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
                                                        fontSize: 14.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        useGoogleFonts: GoogleFonts
                                                                .asMap()
                                                            .containsKey(
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily),
                                                      ),
                                                ),
                                              if (fingressoespecificoNOVOIngressosRecord
                                                      .cidadeOutros ==
                                                  true)
                                                Text(
                                                  'Outros...',
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
                                                        fontSize: 14.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        useGoogleFonts: GoogleFonts
                                                                .asMap()
                                                            .containsKey(
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily),
                                                      ),
                                                ),
                                              if (fingressoespecificoNOVOIngressosRecord
                                                      .cidadeBalneario ==
                                                  true)
                                                Text(
                                                  'Balneário Camboriú SC',
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
                                                        fontSize: 14.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        useGoogleFonts: GoogleFonts
                                                                .asMap()
                                                            .containsKey(
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily),
                                                      ),
                                                ),
                                              if (fingressoespecificoNOVOIngressosRecord
                                                      .cidadeBrasilia ==
                                                  true)
                                                Text(
                                                  'Brasília DF',
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
                                                        fontSize: 14.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        useGoogleFonts: GoogleFonts
                                                                .asMap()
                                                            .containsKey(
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily),
                                                      ),
                                                ),
                                              if (fingressoespecificoNOVOIngressosRecord
                                                      .cidadeRecife ==
                                                  true)
                                                Text(
                                                  'Recife PE',
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
                                                        fontSize: 14.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        useGoogleFonts: GoogleFonts
                                                                .asMap()
                                                            .containsKey(
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily),
                                                      ),
                                                ),
                                              if (fingressoespecificoNOVOIngressosRecord
                                                      .cidadeFlorianopolis ==
                                                  true)
                                                Text(
                                                  'Florianopólis SC',
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
                                                        fontSize: 14.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        useGoogleFonts: GoogleFonts
                                                                .asMap()
                                                            .containsKey(
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily),
                                                      ),
                                                ),
                                            ],
                                          ),
                                        ].divide(SizedBox(width: 8.0)),
                                      ),
                                    ].divide(SizedBox(height: 8.0)),
                                  ),
                                  Container(
                                    width:
                                        MediaQuery.sizeOf(context).width * 1.0,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                      borderRadius: BorderRadius.circular(16.0),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          16.0, 16.0, 16.0, 16.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Text(
                                            'Detalhes do Evento',
                                            style: FlutterFlowTheme.of(context)
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
                                            fingressoespecificoNOVOIngressosRecord
                                                .descricao,
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMediumFamily,
                                                  letterSpacing: 0.0,
                                                  useGoogleFonts: GoogleFonts
                                                          .asMap()
                                                      .containsKey(
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMediumFamily),
                                                ),
                                          ),
                                        ].divide(SizedBox(height: 16.0)),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width:
                                        MediaQuery.sizeOf(context).width * 1.0,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                      borderRadius: BorderRadius.circular(16.0),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          16.0, 16.0, 16.0, 16.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Column(
                                                mainAxisSize: MainAxisSize.max,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    'Valor do Ingresso',
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
                                                    formatNumber(
                                                      fingressoespecificoNOVOIngressosRecord
                                                          .valordoingresso,
                                                      formatType:
                                                          FormatType.custom,
                                                      format: 'R\$',
                                                      locale: '',
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .headlineMedium
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .headlineMediumFamily,
                                                          color:
                                                              Color(0xFF2E4FE8),
                                                          letterSpacing: 0.0,
                                                          useGoogleFonts: GoogleFonts
                                                                  .asMap()
                                                              .containsKey(
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .headlineMediumFamily),
                                                        ),
                                                  ),
                                                ],
                                              ),
                                              Stack(
                                                children: [
                                                  if (fingressoespecificoNOVOIngressosRecord
                                                          .disponivel ==
                                                      true)
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  8.0,
                                                                  16.0,
                                                                  8.0,
                                                                  16.0),
                                                      child: Container(
                                                        decoration:
                                                            BoxDecoration(
                                                          color:
                                                              Color(0xFFC6F8C8),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      20.0),
                                                        ),
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsets.all(
                                                                  8.0),
                                                          child: Text(
                                                            'Disponível',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodySmall
                                                                .override(
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodySmallFamily,
                                                                  color: Color(
                                                                      0xFF31C33A),
                                                                  letterSpacing:
                                                                      0.0,
                                                                  useGoogleFonts: GoogleFonts
                                                                          .asMap()
                                                                      .containsKey(
                                                                          FlutterFlowTheme.of(context)
                                                                              .bodySmallFamily),
                                                                ),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  if (fingressoespecificoNOVOIngressosRecord
                                                          .disponivel ==
                                                      false)
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  8.0,
                                                                  16.0,
                                                                  8.0,
                                                                  16.0),
                                                      child: Container(
                                                        decoration:
                                                            BoxDecoration(
                                                          color:
                                                              Color(0xFFF8DADA),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      20.0),
                                                        ),
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsets.all(
                                                                  8.0),
                                                          child: Text(
                                                            'Indisponível',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodySmall
                                                                .override(
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodySmallFamily,
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .alternate,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  useGoogleFonts: GoogleFonts
                                                                          .asMap()
                                                                      .containsKey(
                                                                          FlutterFlowTheme.of(context)
                                                                              .bodySmallFamily),
                                                                ),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                ],
                                              ),
                                            ],
                                          ),
                                          if (fingressoespecificoNOVOIngressosRecord
                                                  .disponivel ==
                                              true)
                                            FFButtonWidget(
                                              onPressed: () async {
                                                logFirebaseEvent(
                                                    'FINGRESSOESPECIFICO_N_O_V_O_COMPRAR_AGOR');
                                                logFirebaseEvent(
                                                    'Button_navigate_to');

                                                context.pushNamed(
                                                  CheckoutnormalWidget
                                                      .routeName,
                                                  queryParameters: {
                                                    'ingresso': serializeParam(
                                                      fingressoespecificoNOVOIngressosRecord
                                                          .reference,
                                                      ParamType
                                                          .DocumentReference,
                                                    ),
                                                  }.withoutNulls,
                                                );
                                              },
                                              text: 'Comprar Agora',
                                              options: FFButtonOptions(
                                                width:
                                                    MediaQuery.sizeOf(context)
                                                            .width *
                                                        1.0,
                                                height: 56.0,
                                                padding: EdgeInsets.all(8.0),
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
                                                          color: Colors.white,
                                                          letterSpacing: 0.0,
                                                          useGoogleFonts: GoogleFonts
                                                                  .asMap()
                                                              .containsKey(
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleMediumFamily),
                                                        ),
                                                elevation: 3.0,
                                                borderRadius:
                                                    BorderRadius.circular(28.0),
                                              ),
                                            ),
                                        ].divide(SizedBox(height: 16.0)),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width:
                                        MediaQuery.sizeOf(context).width * 1.0,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                      borderRadius: BorderRadius.circular(16.0),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          16.0, 16.0, 16.0, 16.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Text(
                                            'Fazer Lance',
                                            style: FlutterFlowTheme.of(context)
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
                                          Form(
                                            key: _model.formKey,
                                            autovalidateMode:
                                                AutovalidateMode.disabled,
                                            child: TextFormField(
                                              controller: _model.textController,
                                              focusNode:
                                                  _model.textFieldFocusNode,
                                              autofocus: false,
                                              obscureText: false,
                                              decoration: InputDecoration(
                                                hintText:
                                                    'Digite o valor do seu lance',
                                                hintStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMediumFamily,
                                                          letterSpacing: 0.0,
                                                          useGoogleFonts: GoogleFonts
                                                                  .asMap()
                                                              .containsKey(
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMediumFamily),
                                                        ),
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: Color(0xFFE0E0E0),
                                                    width: 2.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                ),
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: Color(0x00000000),
                                                    width: 2.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                ),
                                                errorBorder: OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: Color(0x00000000),
                                                    width: 2.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                ),
                                                focusedErrorBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: Color(0x00000000),
                                                    width: 2.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                ),
                                                filled: true,
                                                fillColor: Colors.white,
                                                suffixIcon: Icon(
                                                  Icons.attach_money,
                                                ),
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyLarge
                                                      .override(
                                                        fontFamily:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyLargeFamily,
                                                        letterSpacing: 0.0,
                                                        useGoogleFonts: GoogleFonts
                                                                .asMap()
                                                            .containsKey(
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyLargeFamily),
                                                      ),
                                              minLines: 1,
                                              keyboardType:
                                                  TextInputType.number,
                                              validator: _model
                                                  .textControllerValidator
                                                  .asValidator(context),
                                            ),
                                          ),
                                          FFButtonWidget(
                                            onPressed: () async {
                                              logFirebaseEvent(
                                                  'FINGRESSOESPECIFICO_N_O_V_O_ENVIAR_LANCE');
                                              logFirebaseEvent(
                                                  'Button_validate_form');
                                              if (_model.formKey.currentState ==
                                                      null ||
                                                  !_model.formKey.currentState!
                                                      .validate()) {
                                                return;
                                              }
                                              logFirebaseEvent(
                                                  'Button_backend_call');

                                              await LeiaoRecord.createDoc(
                                                      fingressoespecificoNOVOIngressosRecord
                                                          .reference)
                                                  .set(createLeiaoRecordData(
                                                usersREF: currentUserReference,
                                                usersREFDonoingresso:
                                                    fingressoespecificoNOVOIngressosRecord
                                                        .users,
                                                nomedafesta:
                                                    fingressoespecificoNOVOIngressosRecord
                                                        .nomedafesta,
                                                valorproposto: int.tryParse(
                                                    _model.textController.text),
                                                ingressoREF:
                                                    fingressoespecificoNOVOIngressosRecord
                                                        .reference,
                                                nomedousuarioProposta:
                                                    valueOrDefault(
                                                        currentUserDocument
                                                            ?.name,
                                                        ''),
                                                datadaoferta:
                                                    getCurrentTimestamp,
                                                datadafesta:
                                                    fingressoespecificoNOVOIngressosRecord
                                                        .datashow,
                                                local:
                                                    fingressoespecificoNOVOIngressosRecord
                                                        .local,
                                                descricao:
                                                    fingressoespecificoNOVOIngressosRecord
                                                        .descricao,
                                                plataformaOficial:
                                                    fingressoespecificoNOVOIngressosRecord
                                                        .plataformaOficial,
                                                imagem:
                                                    fingressoespecificoNOVOIngressosRecord
                                                        .image,
                                                nomedonoingresso:
                                                    fingressoespecificoNOVOIngressosRecord
                                                        .nomedoingresso,
                                                emaildonoingresso:
                                                    fingressoespecificoNOVOIngressosRecord
                                                        .email,
                                                cidadeBeloHorizonte:
                                                    fingressoespecificoNOVOIngressosRecord
                                                            .cidadeBeloHorizonte ==
                                                        true,
                                                cidadeSaoPaulo:
                                                    fingressoespecificoNOVOIngressosRecord
                                                            .cidadeSaoPaulo ==
                                                        true,
                                                cidadeRiodeJaneiro:
                                                    fingressoespecificoNOVOIngressosRecord
                                                            .cidadeRiodeJaneiro ==
                                                        true,
                                                cidadeVitoria:
                                                    fingressoespecificoNOVOIngressosRecord
                                                            .cidadeVitoria ==
                                                        true,
                                                cidadeCuritiba:
                                                    fingressoespecificoNOVOIngressosRecord
                                                            .cidadeCuritiba ==
                                                        true,
                                                cidadeBalneario:
                                                    fingressoespecificoNOVOIngressosRecord
                                                            .cidadeBalneario ==
                                                        true,
                                                cidadeOutros:
                                                    fingressoespecificoNOVOIngressosRecord
                                                            .cidadeOutros ==
                                                        true,
                                              ));
                                              logFirebaseEvent(
                                                  'Button_backend_call');

                                              await fingressoespecificoNOVOIngressosRecord
                                                  .reference
                                                  .update({
                                                ...mapToFirestore(
                                                  {
                                                    'totaldelances':
                                                        FieldValue.increment(1),
                                                  },
                                                ),
                                              });
                                              logFirebaseEvent(
                                                  'Button_trigger_push_notification');
                                              triggerPushNotification(
                                                notificationTitle:
                                                    '✅ Nova proposta de valor!',
                                                notificationText:
                                                    '${fingressoespecificoNOVOIngressosRecord.nomedoingresso}: Você recebeu uma oferta no ingresso da festa: ${fingressoespecificoNOVOIngressosRecord.nomedafesta} no valor de R\$${_model.textController.text}. Acesse o app para mais informações. 💨',
                                                notificationSound: 'default',
                                                userRefs: [
                                                  fingressoespecificoNOVOIngressosRecord
                                                      .users!
                                                ],
                                                initialPageName: 'meu_leilao',
                                                parameterData: {
                                                  'ingressoREF':
                                                      fingressoespecificoNOVOIngressosRecord
                                                          .reference,
                                                },
                                              );
                                              logFirebaseEvent(
                                                  'Button_show_snack_bar');
                                              ScaffoldMessenger.of(context)
                                                  .showSnackBar(
                                                SnackBar(
                                                  content: Text(
                                                    'Sua proposta foi enviada com sucesso!',
                                                    style: TextStyle(
                                                      color: FlutterFlowTheme
                                                              .of(context)
                                                          .primaryBackground,
                                                    ),
                                                  ),
                                                  duration: Duration(
                                                      milliseconds: 4000),
                                                  backgroundColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .success,
                                                ),
                                              );
                                            },
                                            text: 'Enviar Lance',
                                            options: FFButtonOptions(
                                              width: MediaQuery.sizeOf(context)
                                                      .width *
                                                  1.0,
                                              height: 48.0,
                                              padding: EdgeInsets.all(8.0),
                                              iconPadding: EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 0.0, 0.0, 0.0),
                                              color: Color(0x00FFFFFF),
                                              textStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .titleSmall
                                                      .override(
                                                        fontFamily:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .titleSmallFamily,
                                                        color:
                                                            Color(0xFF2E4FE8),
                                                        letterSpacing: 0.0,
                                                        useGoogleFonts: GoogleFonts
                                                                .asMap()
                                                            .containsKey(
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleSmallFamily),
                                                      ),
                                              elevation: 0.0,
                                              borderSide: BorderSide(
                                                color: Color(0xFF2E4FE8),
                                                width: 2.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(24.0),
                                            ),
                                          ),
                                        ].divide(SizedBox(height: 16.0)),
                                      ),
                                    ),
                                  ),
                                  StreamBuilder<UsersRecord>(
                                    stream: UsersRecord.getDocument(
                                        fingressoespecificoNOVOIngressosRecord
                                            .users!),
                                    builder: (context, snapshot) {
                                      // Customize what your widget looks like when it's loading.
                                      if (!snapshot.hasData) {
                                        return Center(
                                          child: SizedBox(
                                            width: 50.0,
                                            height: 50.0,
                                            child: CircularProgressIndicator(
                                              valueColor:
                                                  AlwaysStoppedAnimation<Color>(
                                                FlutterFlowTheme.of(context)
                                                    .primary,
                                              ),
                                            ),
                                          ),
                                        );
                                      }

                                      final containerUsersRecord =
                                          snapshot.data!;

                                      return Container(
                                        width: double.infinity,
                                        height: 141.0,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .primaryBackground,
                                          borderRadius:
                                              BorderRadius.circular(20.0),
                                          border: Border.all(
                                            color: Colors.transparent,
                                          ),
                                        ),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  16.0, 16.0, 16.0, 16.0),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              Text(
                                                'Informações do Vendedor',
                                                style:
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
                                              ),
                                              Flexible(
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
                                                        'FINGRESSOESPECIFICO_N_O_V_O_Row_20tle1tb');
                                                    logFirebaseEvent(
                                                        'Row_navigate_to');

                                                    context.pushNamed(
                                                      PerfildovendedorWidget
                                                          .routeName,
                                                      queryParameters: {
                                                        'usersREF':
                                                            serializeParam(
                                                          fingressoespecificoNOVOIngressosRecord
                                                              .users,
                                                          ParamType
                                                              .DocumentReference,
                                                        ),
                                                      }.withoutNulls,
                                                    );
                                                  },
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Align(
                                                        alignment:
                                                            AlignmentDirectional(
                                                                -1.0, -1.0),
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      0.0,
                                                                      15.0,
                                                                      0.0),
                                                          child:
                                                              FlutterFlowIconButton(
                                                            borderColor:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryText,
                                                            borderRadius: 20.0,
                                                            borderWidth: 1.0,
                                                            buttonSize: 40.0,
                                                            icon: Icon(
                                                              Icons.person,
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .primaryText,
                                                              size: 24.0,
                                                            ),
                                                            onPressed:
                                                                () async {
                                                              logFirebaseEvent(
                                                                  'FINGRESSOESPECIFICO_N_O_V_O_person_ICN_O');
                                                              logFirebaseEvent(
                                                                  'IconButton_navigate_to');

                                                              context.pushNamed(
                                                                PerfildovendedorWidget
                                                                    .routeName,
                                                                queryParameters:
                                                                    {
                                                                  'usersREF':
                                                                      serializeParam(
                                                                    fingressoespecificoNOVOIngressosRecord
                                                                        .users,
                                                                    ParamType
                                                                        .DocumentReference,
                                                                  ),
                                                                }.withoutNulls,
                                                              );
                                                            },
                                                          ),
                                                        ),
                                                      ),
                                                      Flexible(
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Text(
                                                              valueOrDefault<
                                                                  String>(
                                                                containerUsersRecord
                                                                    .name,
                                                                'Marcelo Nejm Chagas',
                                                              ),
                                                              style: FlutterFlowTheme
                                                                      .of(context)
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
                                                            ),
                                                            Text(
                                                              'Vendedor Verificado',
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodySmall
                                                                  .override(
                                                                    fontFamily:
                                                                        FlutterFlowTheme.of(context)
                                                                            .bodySmallFamily,
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryText,
                                                                    letterSpacing:
                                                                        0.0,
                                                                    useGoogleFonts: GoogleFonts
                                                                            .asMap()
                                                                        .containsKey(
                                                                            FlutterFlowTheme.of(context).bodySmallFamily),
                                                                  ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    10.0,
                                                                    0.0,
                                                                    0.0,
                                                                    0.0),
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.min,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          children: [
                                                            Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .min,
                                                              children: [
                                                                Text(
                                                                  formatNumber(
                                                                    functions.ratingFunction(containerUsersRecord
                                                                        .ratings
                                                                        .toList()),
                                                                    formatType:
                                                                        FormatType
                                                                            .decimal,
                                                                    decimalType:
                                                                        DecimalType
                                                                            .automatic,
                                                                  ),
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .displaySmall
                                                                      .override(
                                                                        fontFamily:
                                                                            FlutterFlowTheme.of(context).displaySmallFamily,
                                                                        fontSize:
                                                                            13.0,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight:
                                                                            FontWeight.normal,
                                                                        useGoogleFonts:
                                                                            GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).displaySmallFamily),
                                                                      ),
                                                                ),
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          4.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                  child: Icon(
                                                                    Icons
                                                                        .star_rounded,
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .warning,
                                                                    size: 24.0,
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                            Text(
                                                              'Avaliações',
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodySmall
                                                                  .override(
                                                                    fontFamily:
                                                                        FlutterFlowTheme.of(context)
                                                                            .bodySmallFamily,
                                                                    letterSpacing:
                                                                        0.0,
                                                                    useGoogleFonts: GoogleFonts
                                                                            .asMap()
                                                                        .containsKey(
                                                                            FlutterFlowTheme.of(context).bodySmallFamily),
                                                                  ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ].divide(SizedBox(height: 16.0)),
                                          ),
                                        ),
                                      );
                                    },
                                  ),
                                  Container(
                                    width:
                                        MediaQuery.sizeOf(context).width * 1.0,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                      borderRadius: BorderRadius.circular(16.0),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          16.0, 16.0, 16.0, 16.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Text(
                                            'Garantia',
                                            style: FlutterFlowTheme.of(context)
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
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Icon(
                                                Icons.verified,
                                                color: Color(0xFF25C52E),
                                                size: 24.0,
                                              ),
                                              Text(
                                                'Ingresso verificado pela plataforma',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMediumFamily,
                                                          letterSpacing: 0.0,
                                                          useGoogleFonts: GoogleFonts
                                                                  .asMap()
                                                              .containsKey(
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMediumFamily),
                                                        ),
                                              ),
                                            ].divide(SizedBox(width: 12.0)),
                                          ),
                                        ].divide(SizedBox(height: 8.0)),
                                      ),
                                    ),
                                  ),
                                  if ((valueOrDefault<bool>(
                                              currentUserDocument?.usersADMDono,
                                              false) ==
                                          true) &&
                                      responsiveVisibility(
                                        context: context,
                                        desktop: false,
                                      ))
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 15.0, 10.0),
                                      child: AuthUserStreamWidget(
                                        builder: (context) => Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      10.0, 0.0, 0.0, 0.0),
                                              child: Text(
                                                'IngressoREF',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMediumFamily,
                                                          fontSize: 14.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          useGoogleFonts: GoogleFonts
                                                                  .asMap()
                                                              .containsKey(
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMediumFamily),
                                                        ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      10.0, 0.0, 0.0, 0.0),
                                              child: Text(
                                                valueOrDefault<String>(
                                                  fingressoespecificoNOVOIngressosRecord
                                                      .reference.id,
                                                  'Sem referência',
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMediumFamily,
                                                          fontSize: 14.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          useGoogleFonts: GoogleFonts
                                                                  .asMap()
                                                              .containsKey(
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMediumFamily),
                                                        ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  if ((valueOrDefault<bool>(
                                              currentUserDocument?.usersADMDono,
                                              false) ==
                                          true) &&
                                      responsiveVisibility(
                                        context: context,
                                        desktop: false,
                                      ))
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 15.0, 10.0),
                                      child: AuthUserStreamWidget(
                                        builder: (context) => InkWell(
                                          splashColor: Colors.transparent,
                                          focusColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            logFirebaseEvent(
                                                'FINGRESSOESPECIFICO_N_O_V_O_Row_dzu0v8x6');
                                            logFirebaseEvent(
                                                'Row_backend_call');
                                            await fingressoespecificoNOVOIngressosRecord
                                                .reference
                                                .delete();
                                            logFirebaseEvent('Row_navigate_to');

                                            context.pushNamed(
                                                HomeWidget.routeName);
                                          },
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        10.0, 0.0, 0.0, 0.0),
                                                child: Text(
                                                  'Apagar Ingresso',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMediumFamily,
                                                        fontSize: 14.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        useGoogleFonts: GoogleFonts
                                                                .asMap()
                                                            .containsKey(
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily),
                                                      ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                ].divide(SizedBox(height: 24.0)),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    if (fingressoespecificoNOVOIngressosRecord.likeBy
                            .contains(currentUserReference) ==
                        true)
                      Align(
                        alignment: AlignmentDirectional(-0.02, -0.12),
                        child: Icon(
                          Icons.thumb_up,
                          color: Color(0xFF5170FF),
                          size: 150.0,
                        ).animateOnActionTrigger(
                          animationsMap['iconOnActionTriggerAnimation']!,
                        ),
                      ),
                  ],
                ),
              ),
            ));
      },
    );
  }
}
