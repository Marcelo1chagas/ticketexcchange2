import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:go_router/go_router.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';

import '/auth/base_auth_user_provider.dart';

import '/backend/push_notifications/push_notifications_handler.dart'
    show PushNotificationsHandler;
import '/main.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/lat_lng.dart';
import '/flutter_flow/place.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'serialization_util.dart';

import '/index.dart';

export 'package:go_router/go_router.dart';
export 'serialization_util.dart';
export '/backend/firebase_dynamic_links/firebase_dynamic_links.dart'
    show generateCurrentPageLink;

const kTransitionInfoKey = '__transition_info__';

GlobalKey<NavigatorState> appNavigatorKey = GlobalKey<NavigatorState>();

class AppStateNotifier extends ChangeNotifier {
  AppStateNotifier._();

  static AppStateNotifier? _instance;
  static AppStateNotifier get instance => _instance ??= AppStateNotifier._();

  BaseAuthUser? initialUser;
  BaseAuthUser? user;
  bool showSplashImage = true;
  String? _redirectLocation;

  /// Determines whether the app will refresh and build again when a sign
  /// in or sign out happens. This is useful when the app is launched or
  /// on an unexpected logout. However, this must be turned off when we
  /// intend to sign in/out and then navigate or perform any actions after.
  /// Otherwise, this will trigger a refresh and interrupt the action(s).
  bool notifyOnAuthChange = true;

  bool get loading => user == null || showSplashImage;
  bool get loggedIn => user?.loggedIn ?? false;
  bool get initiallyLoggedIn => initialUser?.loggedIn ?? false;
  bool get shouldRedirect => loggedIn && _redirectLocation != null;

  String getRedirectLocation() => _redirectLocation!;
  bool hasRedirect() => _redirectLocation != null;
  void setRedirectLocationIfUnset(String loc) => _redirectLocation ??= loc;
  void clearRedirectLocation() => _redirectLocation = null;

  /// Mark as not needing to notify on a sign in / out when we intend
  /// to perform subsequent actions (such as navigation) afterwards.
  void updateNotifyOnAuthChange(bool notify) => notifyOnAuthChange = notify;

  void update(BaseAuthUser newUser) {
    final shouldUpdate =
        user?.uid == null || newUser.uid == null || user?.uid != newUser.uid;
    initialUser ??= newUser;
    user = newUser;
    // Refresh the app on auth change unless explicitly marked otherwise.
    // No need to update unless the user has changed.
    if (notifyOnAuthChange && shouldUpdate) {
      notifyListeners();
    }
    // Once again mark the notifier as needing to update on auth change
    // (in order to catch sign in / out events).
    updateNotifyOnAuthChange(true);
  }

  void stopShowingSplashImage() {
    showSplashImage = false;
    notifyListeners();
  }
}

GoRouter createRouter(AppStateNotifier appStateNotifier) => GoRouter(
      initialLocation: '/',
      debugLogDiagnostics: true,
      refreshListenable: appStateNotifier,
      navigatorKey: appNavigatorKey,
      errorBuilder: (context, state) => _RouteErrorBuilder(
        state: state,
        child: appStateNotifier.loggedIn ? NavBarPage() : InicioAPPWidget(),
      ),
      routes: [
        FFRoute(
          name: '_initialize',
          path: '/',
          builder: (context, _) =>
              appStateNotifier.loggedIn ? NavBarPage() : InicioAPPWidget(),
          routes: [
            FFRoute(
              name: HomeWidget.routeName,
              path: HomeWidget.routePath,
              asyncParams: {
                'users': getDoc(['users'], UsersRecord.fromSnapshot),
              },
              builder: (context, params) => params.isEmpty
                  ? NavBarPage(initialPage: 'home')
                  : HomeWidget(
                      users: params.getParam(
                        'users',
                        ParamType.Document,
                      ),
                    ),
            ),
            FFRoute(
              name: AdicionarIngressoWidget.routeName,
              path: AdicionarIngressoWidget.routePath,
              builder: (context, params) => params.isEmpty
                  ? NavBarPage(initialPage: 'AdicionarIngresso')
                  : AdicionarIngressoWidget(),
            ),
            FFRoute(
              name: MeusingressosWidget.routeName,
              path: MeusingressosWidget.routePath,
              asyncParams: {
                'users': getDoc(['users'], UsersRecord.fromSnapshot),
              },
              builder: (context, params) => params.isEmpty
                  ? NavBarPage(initialPage: 'Meusingressos')
                  : MeusingressosWidget(
                      users: params.getParam(
                        'users',
                        ParamType.Document,
                      ),
                    ),
            ),
            FFRoute(
              name: ProcuraringressosWidget.routeName,
              path: ProcuraringressosWidget.routePath,
              builder: (context, params) => params.isEmpty
                  ? NavBarPage(initialPage: 'procuraringressos')
                  : ProcuraringressosWidget(),
            ),
            FFRoute(
              name: EditaringressoWidget.routeName,
              path: EditaringressoWidget.routePath,
              builder: (context, params) => EditaringressoWidget(
                ingressoespecificoREF3: params.getParam(
                  'ingressoespecificoREF3',
                  ParamType.DocumentReference,
                  isList: false,
                  collectionNamePath: ['ingressos'],
                ),
                notificationADD: params.getParam(
                  'notificationADD',
                  ParamType.DocumentReference,
                  isList: false,
                  collectionNamePath: ['notfication-ADD-INGRESSOS'],
                ),
              ),
            ),
            FFRoute(
              name: CatpaginadenavegaodeFOTO1Widget.routeName,
              path: CatpaginadenavegaodeFOTO1Widget.routePath,
              builder: (context, params) => CatpaginadenavegaodeFOTO1Widget(),
            ),
            FFRoute(
              name: CatpaginadenavegaodeFOTO2Widget.routeName,
              path: CatpaginadenavegaodeFOTO2Widget.routePath,
              builder: (context, params) => CatpaginadenavegaodeFOTO2Widget(),
            ),
            FFRoute(
              name: CatpaginadenavegaodeFOTO3Widget.routeName,
              path: CatpaginadenavegaodeFOTO3Widget.routePath,
              builder: (context, params) => CatpaginadenavegaodeFOTO3Widget(),
            ),
            FFRoute(
              name: AtivarnotficacaoWidget.routeName,
              path: AtivarnotficacaoWidget.routePath,
              builder: (context, params) => AtivarnotficacaoWidget(
                usersNOTIFICACAOREF: params.getParam(
                  'usersNOTIFICACAOREF',
                  ParamType.DocumentReference,
                  isList: false,
                  collectionNamePath: ['users'],
                ),
              ),
            ),
            FFRoute(
              name: EditarperfilWidget.routeName,
              path: EditarperfilWidget.routePath,
              builder: (context, params) => EditarperfilWidget(
                editarperflusuarioREF: params.getParam(
                  'editarperflusuarioREF',
                  ParamType.DocumentReference,
                  isList: false,
                  collectionNamePath: ['users'],
                ),
                notcompraVendedor: params.getParam(
                  'notcompraVendedor',
                  ParamType.DocumentReference,
                  isList: false,
                  collectionNamePath: ['notifcation-Compra_Ingresso-Vendedor'],
                ),
              ),
            ),
            FFRoute(
              name: CatpaginadevendaFOTO4Widget.routeName,
              path: CatpaginadevendaFOTO4Widget.routePath,
              builder: (context, params) => CatpaginadevendaFOTO4Widget(),
            ),
            FFRoute(
              name: NotifcaaoWidget.routeName,
              path: NotifcaaoWidget.routePath,
              asyncParams: {
                'favREF': getDoc(['favoritos'], FavoritosRecord.fromSnapshot),
                'comprovante': getDoc(['notifcation-Compra_Ingresso-Vendedor'],
                    NotifcationCompraIngressoVendedorRecord.fromSnapshot),
              },
              builder: (context, params) => NotifcaaoWidget(
                ingreesoREF: params.getParam(
                  'ingreesoREF',
                  ParamType.DocumentReference,
                  isList: false,
                  collectionNamePath: ['ingressos'],
                ),
                favREF: params.getParam(
                  'favREF',
                  ParamType.Document,
                ),
                comprovante: params.getParam(
                  'comprovante',
                  ParamType.Document,
                ),
              ),
            ),
            FFRoute(
              name: SucesspaymentWidget.routeName,
              path: SucesspaymentWidget.routePath,
              builder: (context, params) => SucesspaymentWidget(),
            ),
            FFRoute(
              name: PoliticadeprivacidadeWidget.routeName,
              path: PoliticadeprivacidadeWidget.routePath,
              builder: (context, params) => PoliticadeprivacidadeWidget(),
            ),
            FFRoute(
              name: TermosdeusoWidget.routeName,
              path: TermosdeusoWidget.routePath,
              builder: (context, params) => TermosdeusoWidget(),
            ),
            FFRoute(
              name: PoliticadedevolucaoWidget.routeName,
              path: PoliticadedevolucaoWidget.routePath,
              builder: (context, params) => PoliticadedevolucaoWidget(),
            ),
            FFRoute(
              name: TaxasdeservicoWidget.routeName,
              path: TaxasdeservicoWidget.routePath,
              builder: (context, params) => TaxasdeservicoWidget(),
            ),
            FFRoute(
              name: PolticadecompraeenvioWidget.routeName,
              path: PolticadecompraeenvioWidget.routePath,
              builder: (context, params) => PolticadecompraeenvioWidget(),
            ),
            FFRoute(
              name: SucesspaymentalcanceWidget.routeName,
              path: SucesspaymentalcanceWidget.routePath,
              builder: (context, params) => SucesspaymentalcanceWidget(),
            ),
            FFRoute(
              name: EsqueceuSENHAWidget.routeName,
              path: EsqueceuSENHAWidget.routePath,
              builder: (context, params) => EsqueceuSENHAWidget(),
            ),
            FFRoute(
              name: EsqueceuSENHAloginWidget.routeName,
              path: EsqueceuSENHAloginWidget.routePath,
              builder: (context, params) => EsqueceuSENHAloginWidget(),
            ),
            FFRoute(
              name: CatpaginadenavegaoFOTO5Widget.routeName,
              path: CatpaginadenavegaoFOTO5Widget.routePath,
              builder: (context, params) => CatpaginadenavegaoFOTO5Widget(),
            ),
            FFRoute(
              name: InformacoesdeVENDACompradorWidget.routeName,
              path: InformacoesdeVENDACompradorWidget.routePath,
              asyncParams: {
                'venda': getDoc(['compra'], CompraRecord.fromSnapshot),
                'vendedor': getDoc(['notifcation-Compra_Ingresso-Vendedor'],
                    NotifcationCompraIngressoVendedorRecord.fromSnapshot),
              },
              builder: (context, params) => InformacoesdeVENDACompradorWidget(
                notvendaCOmpradorREF: params.getParam(
                  'notvendaCOmpradorREF',
                  ParamType.DocumentReference,
                  isList: false,
                  collectionNamePath: [
                    'notification-Compra_Ingresso-Comprador'
                  ],
                ),
                venda: params.getParam(
                  'venda',
                  ParamType.Document,
                ),
                vendedor: params.getParam(
                  'vendedor',
                  ParamType.Document,
                ),
              ),
            ),
            FFRoute(
              name: InformacoesdeVENDAVENDEDORWidget.routeName,
              path: InformacoesdeVENDAVENDEDORWidget.routePath,
              asyncParams: {
                'venda': getDoc(['compra'], CompraRecord.fromSnapshot),
              },
              builder: (context, params) => InformacoesdeVENDAVENDEDORWidget(
                notvendaVENDEDORREF: params.getParam(
                  'notvendaVENDEDORREF',
                  ParamType.DocumentReference,
                  isList: false,
                  collectionNamePath: ['notifcation-Compra_Ingresso-Vendedor'],
                ),
                venda: params.getParam(
                  'venda',
                  ParamType.Document,
                ),
              ),
            ),
            FFRoute(
              name: EditardadosbancariosWidget.routeName,
              path: EditardadosbancariosWidget.routePath,
              builder: (context, params) => EditardadosbancariosWidget(
                dadosbancariosREF: params.getParam(
                  'dadosbancariosREF',
                  ParamType.DocumentReference,
                  isList: false,
                  collectionNamePath: ['users', 'dados_bancarios'],
                ),
              ),
            ),
            FFRoute(
              name: ConfirmequevoceWidget.routeName,
              path: ConfirmequevoceWidget.routePath,
              builder: (context, params) => ConfirmequevoceWidget(
                dadosbancariosREF: params.getParam(
                  'dadosbancariosREF',
                  ParamType.DocumentReference,
                  isList: false,
                  collectionNamePath: ['users', 'dados_bancarios'],
                ),
              ),
            ),
            FFRoute(
              name: AvaliacaodeusuarioWidget.routeName,
              path: AvaliacaodeusuarioWidget.routePath,
              asyncParams: {
                'usersDocument': getDoc(['users'], UsersRecord.fromSnapshot),
                'usersAVALIACAOREF': getDoc(['Notification-Envio_do_Ingresso'],
                    NotificationEnvioDoIngressoRecord.fromSnapshot),
              },
              builder: (context, params) => AvaliacaodeusuarioWidget(
                vendedorREF: params.getParam(
                  'vendedorREF',
                  ParamType.DocumentReference,
                  isList: false,
                  collectionNamePath: ['users', 'AVALIACAO_de_USUARIO'],
                ),
                users: params.getParam(
                  'users',
                  ParamType.DocumentReference,
                  isList: false,
                  collectionNamePath: ['users'],
                ),
                usersDocument: params.getParam(
                  'usersDocument',
                  ParamType.Document,
                ),
                usersAVALIACAOREF: params.getParam(
                  'usersAVALIACAOREF',
                  ParamType.Document,
                ),
              ),
            ),
            FFRoute(
              name: EscreveravaliacaoWidget.routeName,
              path: EscreveravaliacaoWidget.routePath,
              builder: (context, params) => EscreveravaliacaoWidget(
                envioingressoREF1: params.getParam(
                  'envioingressoREF1',
                  ParamType.DocumentReference,
                  isList: false,
                  collectionNamePath: ['Notification-Envio_do_Ingresso'],
                ),
              ),
            ),
            FFRoute(
              name: InformacaoENVIOCOmprovanteWidget.routeName,
              path: InformacaoENVIOCOmprovanteWidget.routePath,
              builder: (context, params) => InformacaoENVIOCOmprovanteWidget(
                enviocomprovante: params.getParam(
                  'enviocomprovante',
                  ParamType.DocumentReference,
                  isList: false,
                  collectionNamePath: ['Notification-Envio_do_Ingresso'],
                ),
                users: params.getParam(
                  'users',
                  ParamType.DocumentReference,
                  isList: false,
                  collectionNamePath: ['users'],
                ),
              ),
            ),
            FFRoute(
              name: SobrenosWidget.routeName,
              path: SobrenosWidget.routePath,
              builder: (context, params) => SobrenosWidget(),
            ),
            FFRoute(
              name: IngressosanunciadosPerfilVendedorWidget.routeName,
              path: IngressosanunciadosPerfilVendedorWidget.routePath,
              asyncParams: {
                'users': getDoc(['users'], UsersRecord.fromSnapshot),
              },
              builder: (context, params) =>
                  IngressosanunciadosPerfilVendedorWidget(
                usersRef: params.getParam(
                  'usersRef',
                  ParamType.DocumentReference,
                  isList: false,
                  collectionNamePath: ['users'],
                ),
                users: params.getParam(
                  'users',
                  ParamType.Document,
                ),
              ),
            ),
            FFRoute(
              name: SucesspaymentVerificadoWidget.routeName,
              path: SucesspaymentVerificadoWidget.routePath,
              builder: (context, params) => SucesspaymentVerificadoWidget(),
            ),
            FFRoute(
              name: EscreverdenunciaWidget.routeName,
              path: EscreverdenunciaWidget.routePath,
              builder: (context, params) => EscreverdenunciaWidget(
                usersr: params.getParam(
                  'usersr',
                  ParamType.DocumentReference,
                  isList: false,
                  collectionNamePath: ['users'],
                ),
              ),
            ),
            FFRoute(
              name: StatusPagamentoPIXLeilaoWidget.routeName,
              path: StatusPagamentoPIXLeilaoWidget.routePath,
              builder: (context, params) => StatusPagamentoPIXLeilaoWidget(
                ingressoPagamentoCheckout: params.getParam(
                  'ingressoPagamentoCheckout',
                  ParamType.DocumentReference,
                  isList: false,
                  collectionNamePath: ['notification_leilaoaceito'],
                ),
                ingressoREF: params.getParam(
                  'ingressoREF',
                  ParamType.DocumentReference,
                  isList: false,
                  collectionNamePath: ['ingressos'],
                ),
              ),
            ),
            FFRoute(
              name: CartaocreditoPagamentoLEILAOWidget.routeName,
              path: CartaocreditoPagamentoLEILAOWidget.routePath,
              builder: (context, params) => CartaocreditoPagamentoLEILAOWidget(
                ingressoPagamentoCheckout: params.getParam(
                  'ingressoPagamentoCheckout',
                  ParamType.DocumentReference,
                  isList: false,
                  collectionNamePath: ['notification_leilaoaceito'],
                ),
                ingressoREF: params.getParam(
                  'ingressoREF',
                  ParamType.DocumentReference,
                  isList: false,
                  collectionNamePath: ['ingressos'],
                ),
              ),
            ),
            FFRoute(
              name: StatusPagamentoPIXAlcance15diasWidget.routeName,
              path: StatusPagamentoPIXAlcance15diasWidget.routePath,
              builder: (context, params) =>
                  StatusPagamentoPIXAlcance15diasWidget(
                ingressoPagamentoCheckout: params.getParam(
                  'ingressoPagamentoCheckout',
                  ParamType.DocumentReference,
                  isList: false,
                  collectionNamePath: ['ingressos'],
                ),
              ),
            ),
            FFRoute(
              name: StatusPagamentoPIXAlcance1diaWidget.routeName,
              path: StatusPagamentoPIXAlcance1diaWidget.routePath,
              builder: (context, params) => StatusPagamentoPIXAlcance1diaWidget(
                ingressoPagamentoCheckout: params.getParam(
                  'ingressoPagamentoCheckout',
                  ParamType.DocumentReference,
                  isList: false,
                  collectionNamePath: ['ingressos'],
                ),
              ),
            ),
            FFRoute(
              name: CartaocreditoPagamentoALCANCE15diasWidget.routeName,
              path: CartaocreditoPagamentoALCANCE15diasWidget.routePath,
              builder: (context, params) =>
                  CartaocreditoPagamentoALCANCE15diasWidget(
                ingressoPagamentoCheckout: params.getParam(
                  'ingressoPagamentoCheckout',
                  ParamType.DocumentReference,
                  isList: false,
                  collectionNamePath: ['ingressos'],
                ),
              ),
            ),
            FFRoute(
              name: StatusPagamentoPIXAlcance15dias30OFFWidget.routeName,
              path: StatusPagamentoPIXAlcance15dias30OFFWidget.routePath,
              builder: (context, params) =>
                  StatusPagamentoPIXAlcance15dias30OFFWidget(
                ingressoPagamentoCheckout: params.getParam(
                  'ingressoPagamentoCheckout',
                  ParamType.DocumentReference,
                  isList: false,
                  collectionNamePath: ['ingressos'],
                ),
              ),
            ),
            FFRoute(
              name: StatusPagamentoPIXAlcance1dia30OFFWidget.routeName,
              path: StatusPagamentoPIXAlcance1dia30OFFWidget.routePath,
              builder: (context, params) =>
                  StatusPagamentoPIXAlcance1dia30OFFWidget(
                ingressoPagamentoCheckout: params.getParam(
                  'ingressoPagamentoCheckout',
                  ParamType.DocumentReference,
                  isList: false,
                  collectionNamePath: ['ingressos'],
                ),
              ),
            ),
            FFRoute(
              name: StatusPagamentoPIXAlcance5dias30OFFWidget.routeName,
              path: StatusPagamentoPIXAlcance5dias30OFFWidget.routePath,
              builder: (context, params) =>
                  StatusPagamentoPIXAlcance5dias30OFFWidget(
                ingressoPagamentoCheckout: params.getParam(
                  'ingressoPagamentoCheckout',
                  ParamType.DocumentReference,
                  isList: false,
                  collectionNamePath: ['ingressos'],
                ),
              ),
            ),
            FFRoute(
              name: CartaocreditoPagamentoALCANCE15dias30OFFWidget.routeName,
              path: CartaocreditoPagamentoALCANCE15dias30OFFWidget.routePath,
              builder: (context, params) =>
                  CartaocreditoPagamentoALCANCE15dias30OFFWidget(
                ingressoPagamentoCheckout: params.getParam(
                  'ingressoPagamentoCheckout',
                  ParamType.DocumentReference,
                  isList: false,
                  collectionNamePath: ['ingressos'],
                ),
              ),
            ),
            FFRoute(
              name: MelhoresofertasWidget.routeName,
              path: MelhoresofertasWidget.routePath,
              builder: (context, params) => MelhoresofertasWidget(
                ingressoref: params.getParam(
                  'ingressoref',
                  ParamType.DocumentReference,
                  isList: false,
                  collectionNamePath: ['ingressos'],
                ),
              ),
            ),
            FFRoute(
              name: PerfildovendedorWidget.routeName,
              path: PerfildovendedorWidget.routePath,
              asyncParams: {
                'avaliacaousuario': getDoc(['users', 'AVALIACAO_de_USUARIO'],
                    AVALIACAODeUSUARIORecord.fromSnapshot),
              },
              builder: (context, params) => PerfildovendedorWidget(
                usersREF: params.getParam(
                  'usersREF',
                  ParamType.DocumentReference,
                  isList: false,
                  collectionNamePath: ['users'],
                ),
                avaliacaousuario: params.getParam(
                  'avaliacaousuario',
                  ParamType.Document,
                ),
                refavalicao: params.getParam(
                  'refavalicao',
                  ParamType.DocumentReference,
                  isList: false,
                  collectionNamePath: ['users', 'AVALIACAO_de_USUARIO'],
                ),
              ),
            ),
            FFRoute(
              name: SuporteaoclienteWidget.routeName,
              path: SuporteaoclienteWidget.routePath,
              builder: (context, params) => SuporteaoclienteWidget(),
            ),
            FFRoute(
              name: InicioAPPWidget.routeName,
              path: InicioAPPWidget.routePath,
              builder: (context, params) => InicioAPPWidget(),
            ),
            FFRoute(
              name: ProcessoverificadoWidget.routeName,
              path: ProcessoverificadoWidget.routePath,
              builder: (context, params) => ProcessoverificadoWidget(),
            ),
            FFRoute(
              name: TemaPageInicialWidget.routeName,
              path: TemaPageInicialWidget.routePath,
              builder: (context, params) => TemaPageInicialWidget(
                users: params.getParam(
                  'users',
                  ParamType.DocumentReference,
                  isList: false,
                  collectionNamePath: ['users'],
                ),
              ),
            ),
            FFRoute(
              name: AlterartemaPageIniclalWidget.routeName,
              path: AlterartemaPageIniclalWidget.routePath,
              builder: (context, params) => AlterartemaPageIniclalWidget(
                users: params.getParam(
                  'users',
                  ParamType.DocumentReference,
                  isList: false,
                  collectionNamePath: ['users'],
                ),
              ),
            ),
            FFRoute(
              name: AlterartemaPageEscolhaWidget.routeName,
              path: AlterartemaPageEscolhaWidget.routePath,
              builder: (context, params) => AlterartemaPageEscolhaWidget(
                users: params.getParam(
                  'users',
                  ParamType.DocumentReference,
                  isList: false,
                  collectionNamePath: ['users'],
                ),
              ),
            ),
            FFRoute(
              name: MeuLeilaoWidget.routeName,
              path: MeuLeilaoWidget.routePath,
              builder: (context, params) => MeuLeilaoWidget(
                ingressoREF: params.getParam(
                  'ingressoREF',
                  ParamType.DocumentReference,
                  isList: false,
                  collectionNamePath: ['ingressos'],
                ),
              ),
            ),
            FFRoute(
              name: AceitarPropostaLeilaoWidget.routeName,
              path: AceitarPropostaLeilaoWidget.routePath,
              builder: (context, params) => AceitarPropostaLeilaoWidget(
                leiao: params.getParam(
                  'leiao',
                  ParamType.DocumentReference,
                  isList: false,
                  collectionNamePath: ['ingressos', 'leiao'],
                ),
              ),
            ),
            FFRoute(
              name: AumentaralcanceWidget.routeName,
              path: AumentaralcanceWidget.routePath,
              builder: (context, params) => AumentaralcanceWidget(),
            ),
            FFRoute(
              name: ALCANCEIngressoespecificoWidget.routeName,
              path: ALCANCEIngressoespecificoWidget.routePath,
              builder: (context, params) => ALCANCEIngressoespecificoWidget(
                ingressoREF: params.getParam(
                  'ingressoREF',
                  ParamType.DocumentReference,
                  isList: false,
                  collectionNamePath: ['ingressos'],
                ),
              ),
            ),
            FFRoute(
              name: CompraverificadoCHECKOUTWidget.routeName,
              path: CompraverificadoCHECKOUTWidget.routePath,
              builder: (context, params) => CompraverificadoCHECKOUTWidget(
                usersREF: params.getParam(
                  'usersREF',
                  ParamType.DocumentReference,
                  isList: false,
                  collectionNamePath: ['users'],
                ),
              ),
            ),
            FFRoute(
              name: Aumentaralcance30FFWidget.routeName,
              path: Aumentaralcance30FFWidget.routePath,
              builder: (context, params) => Aumentaralcance30FFWidget(),
            ),
            FFRoute(
              name: ALCANCEIngressoespecifico30FFWidget.routeName,
              path: ALCANCEIngressoespecifico30FFWidget.routePath,
              builder: (context, params) => ALCANCEIngressoespecifico30FFWidget(
                ingressoREF: params.getParam(
                  'ingressoREF',
                  ParamType.DocumentReference,
                  isList: false,
                  collectionNamePath: ['ingressos'],
                ),
              ),
            ),
            FFRoute(
              name: InformacaoleilaoWidget.routeName,
              path: InformacaoleilaoWidget.routePath,
              asyncParams: {
                'ingressoREFDOCUMENT':
                    getDoc(['ingressos'], IngressosRecord.fromSnapshot),
              },
              builder: (context, params) => InformacaoleilaoWidget(
                leilaoREF: params.getParam(
                  'leilaoREF',
                  ParamType.DocumentReference,
                  isList: false,
                  collectionNamePath: ['notification_leilaoaceito'],
                ),
                ingressoREFDOCUMENT: params.getParam(
                  'ingressoREFDOCUMENT',
                  ParamType.Document,
                ),
                ingressoREF: params.getParam(
                  'ingressoREF',
                  ParamType.DocumentReference,
                  isList: false,
                  collectionNamePath: ['ingressos'],
                ),
              ),
            ),
            FFRoute(
              name: CHECKOUTleilaoWidget.routeName,
              path: CHECKOUTleilaoWidget.routePath,
              builder: (context, params) => CHECKOUTleilaoWidget(
                ingressoPagamentoCheckout: params.getParam(
                  'ingressoPagamentoCheckout',
                  ParamType.DocumentReference,
                  isList: false,
                  collectionNamePath: ['notification_leilaoaceito'],
                ),
              ),
            ),
            FFRoute(
              name: StatusPagamentoPIXVerificadoWidget.routeName,
              path: StatusPagamentoPIXVerificadoWidget.routePath,
              builder: (context, params) => StatusPagamentoPIXVerificadoWidget(
                usersREF: params.getParam(
                  'usersREF',
                  ParamType.DocumentReference,
                  isList: false,
                  collectionNamePath: ['users'],
                ),
              ),
            ),
            FFRoute(
              name: StatusPagamentoPIXAlcance5diasWidget.routeName,
              path: StatusPagamentoPIXAlcance5diasWidget.routePath,
              builder: (context, params) =>
                  StatusPagamentoPIXAlcance5diasWidget(
                ingressoPagamentoCheckout: params.getParam(
                  'ingressoPagamentoCheckout',
                  ParamType.DocumentReference,
                  isList: false,
                  collectionNamePath: ['ingressos'],
                ),
              ),
            ),
            FFRoute(
              name: CHECKOUTALCANCE1diaWidget.routeName,
              path: CHECKOUTALCANCE1diaWidget.routePath,
              builder: (context, params) => CHECKOUTALCANCE1diaWidget(
                ingressoPagamentoCheckout: params.getParam(
                  'ingressoPagamentoCheckout',
                  ParamType.DocumentReference,
                  isList: false,
                  collectionNamePath: ['ingressos'],
                ),
              ),
            ),
            FFRoute(
              name: CHECKOUTALCANCE5diasWidget.routeName,
              path: CHECKOUTALCANCE5diasWidget.routePath,
              builder: (context, params) => CHECKOUTALCANCE5diasWidget(
                ingressoPagamentoCheckout: params.getParam(
                  'ingressoPagamentoCheckout',
                  ParamType.DocumentReference,
                  isList: false,
                  collectionNamePath: ['ingressos'],
                ),
              ),
            ),
            FFRoute(
              name: CHECKOUTALCANCE15diasWidget.routeName,
              path: CHECKOUTALCANCE15diasWidget.routePath,
              builder: (context, params) => CHECKOUTALCANCE15diasWidget(
                ingressoPagamentoCheckout: params.getParam(
                  'ingressoPagamentoCheckout',
                  ParamType.DocumentReference,
                  isList: false,
                  collectionNamePath: ['ingressos'],
                ),
              ),
            ),
            FFRoute(
              name: CHECKOUTALCANCE15dias30OFFWidget.routeName,
              path: CHECKOUTALCANCE15dias30OFFWidget.routePath,
              builder: (context, params) => CHECKOUTALCANCE15dias30OFFWidget(
                ingressoPagamentoCheckout: params.getParam(
                  'ingressoPagamentoCheckout',
                  ParamType.DocumentReference,
                  isList: false,
                  collectionNamePath: ['ingressos'],
                ),
              ),
            ),
            FFRoute(
              name: CHECKOUTALCANCE1dia30OFFWidget.routeName,
              path: CHECKOUTALCANCE1dia30OFFWidget.routePath,
              builder: (context, params) => CHECKOUTALCANCE1dia30OFFWidget(
                ingressoPagamentoCheckout: params.getParam(
                  'ingressoPagamentoCheckout',
                  ParamType.DocumentReference,
                  isList: false,
                  collectionNamePath: ['ingressos'],
                ),
              ),
            ),
            FFRoute(
              name: CHECKOUTALCANCE5dias30OFFWidget.routeName,
              path: CHECKOUTALCANCE5dias30OFFWidget.routePath,
              builder: (context, params) => CHECKOUTALCANCE5dias30OFFWidget(
                ingressoPagamentoCheckout: params.getParam(
                  'ingressoPagamentoCheckout',
                  ParamType.DocumentReference,
                  isList: false,
                  collectionNamePath: ['ingressos'],
                ),
              ),
            ),
            FFRoute(
              name: EscolhaTemWidget.routeName,
              path: EscolhaTemWidget.routePath,
              builder: (context, params) => EscolhaTemWidget(
                users: params.getParam(
                  'users',
                  ParamType.DocumentReference,
                  isList: false,
                  collectionNamePath: ['users'],
                ),
              ),
            ),
            FFRoute(
              name: CheckoutnormalWidget.routeName,
              path: CheckoutnormalWidget.routePath,
              builder: (context, params) => CheckoutnormalWidget(
                ingresso: params.getParam(
                  'ingresso',
                  ParamType.DocumentReference,
                  isList: false,
                  collectionNamePath: ['ingressos'],
                ),
              ),
            ),
            FFRoute(
              name: AlterarCidadeWidget.routeName,
              path: AlterarCidadeWidget.routePath,
              builder: (context, params) => AlterarCidadeWidget(),
            ),
            FFRoute(
              name: VerificadoGratisWidget.routeName,
              path: VerificadoGratisWidget.routePath,
              builder: (context, params) => VerificadoGratisWidget(),
            ),
            FFRoute(
              name: DadosbancariosWidget.routeName,
              path: DadosbancariosWidget.routePath,
              builder: (context, params) => DadosbancariosWidget(),
            ),
            FFRoute(
              name: PaginaPromotersWidget.routeName,
              path: PaginaPromotersWidget.routePath,
              builder: (context, params) => PaginaPromotersWidget(),
            ),
            FFRoute(
              name: CarteiraWidget.routeName,
              path: CarteiraWidget.routePath,
              builder: (context, params) => CarteiraWidget(),
            ),
            FFRoute(
              name: IngressosCompradosvendidosWidget.routeName,
              path: IngressosCompradosvendidosWidget.routePath,
              builder: (context, params) => IngressosCompradosvendidosWidget(),
            ),
            FFRoute(
              name: WalletextratocompraHenriqueWidget.routeName,
              path: WalletextratocompraHenriqueWidget.routePath,
              builder: (context, params) => WalletextratocompraHenriqueWidget(),
            ),
            FFRoute(
              name: WalletAdcionarsaldohenriqueWidget.routeName,
              path: WalletAdcionarsaldohenriqueWidget.routePath,
              builder: (context, params) => WalletAdcionarsaldohenriqueWidget(),
            ),
            FFRoute(
              name: WalletcartaohenriqueWidget.routeName,
              path: WalletcartaohenriqueWidget.routePath,
              builder: (context, params) => WalletcartaohenriqueWidget(),
            ),
            FFRoute(
              name: ComprarverificadoWidget.routeName,
              path: ComprarverificadoWidget.routePath,
              builder: (context, params) => ComprarverificadoWidget(),
            ),
            FFRoute(
              name: TodososingressosWidget.routeName,
              path: TodososingressosWidget.routePath,
              builder: (context, params) => TodososingressosWidget(),
            ),
            FFRoute(
              name: WalletRetirarsaldoHenriqueWidget.routeName,
              path: WalletRetirarsaldoHenriqueWidget.routePath,
              builder: (context, params) => WalletRetirarsaldoHenriqueWidget(),
            ),
            FFRoute(
              name: LeilaoWidget.routeName,
              path: LeilaoWidget.routePath,
              builder: (context, params) => LeilaoWidget(),
            ),
            FFRoute(
              name: LoginNOVOWidget.routeName,
              path: LoginNOVOWidget.routePath,
              builder: (context, params) => LoginNOVOWidget(),
            ),
            FFRoute(
              name: WalletcarteirahenriqueWidget.routeName,
              path: WalletcarteirahenriqueWidget.routePath,
              builder: (context, params) => WalletcarteirahenriqueWidget(),
            ),
            FFRoute(
              name: UserspageWidget.routeName,
              path: UserspageWidget.routePath,
              builder: (context, params) => params.isEmpty
                  ? NavBarPage(initialPage: 'userspage')
                  : UserspageWidget(),
            ),
            FFRoute(
              name: StatusPIXNORMALNOVAWidget.routeName,
              path: StatusPIXNORMALNOVAWidget.routePath,
              builder: (context, params) => StatusPIXNORMALNOVAWidget(
                ingressoREF: params.getParam(
                  'ingressoREF',
                  ParamType.DocumentReference,
                  isList: false,
                  collectionNamePath: ['ingressos'],
                ),
              ),
            ),
            FFRoute(
              name: FingressoespecificoNOVOWidget.routeName,
              path: FingressoespecificoNOVOWidget.routePath,
              builder: (context, params) => FingressoespecificoNOVOWidget(
                ingressoREF: params.getParam(
                  'ingressoREF',
                  ParamType.DocumentReference,
                  isList: false,
                  collectionNamePath: ['ingressos'],
                ),
              ),
            ),
            FFRoute(
              name: PoliticasdoappWidget.routeName,
              path: PoliticasdoappWidget.routePath,
              builder: (context, params) => PoliticasdoappWidget(),
            ),
            FFRoute(
              name: CriarcontaNOVAWidget.routeName,
              path: CriarcontaNOVAWidget.routePath,
              builder: (context, params) => CriarcontaNOVAWidget(),
            ),
            FFRoute(
              name: TodososlocaisWidget.routeName,
              path: TodososlocaisWidget.routePath,
              builder: (context, params) => TodososlocaisWidget(),
            ),
            FFRoute(
              name: IngressoespecificocompradosWidget.routeName,
              path: IngressoespecificocompradosWidget.routePath,
              builder: (context, params) => IngressoespecificocompradosWidget(
                ingressoREFcomprado: params.getParam(
                  'ingressoREFcomprado',
                  ParamType.DocumentReference,
                  isList: false,
                  collectionNamePath: ['ingressos_comprados'],
                ),
              ),
            ),
            FFRoute(
              name: IngressoespecificoanunciadosWidget.routeName,
              path: IngressoespecificoanunciadosWidget.routePath,
              builder: (context, params) => IngressoespecificoanunciadosWidget(
                ingressoespecificoREF: params.getParam(
                  'ingressoespecificoREF',
                  ParamType.DocumentReference,
                  isList: false,
                  collectionNamePath: ['ingressos'],
                ),
              ),
            ),
            FFRoute(
              name: IngressoespecificofromfavWidget.routeName,
              path: IngressoespecificofromfavWidget.routePath,
              builder: (context, params) => IngressoespecificofromfavWidget(
                ingressoespecificoREF2: params.getParam(
                  'ingressoespecificoREF2',
                  ParamType.DocumentReference,
                  isList: false,
                  collectionNamePath: ['favoritos'],
                ),
              ),
            ),
            FFRoute(
              name: Saibamaishenrique01Widget.routeName,
              path: Saibamaishenrique01Widget.routePath,
              builder: (context, params) => Saibamaishenrique01Widget(),
            ),
            FFRoute(
              name: Paginaverificado1Widget.routeName,
              path: Paginaverificado1Widget.routePath,
              builder: (context, params) => Paginaverificado1Widget(),
            ),
            FFRoute(
              name: SelecionarcidadehenriqueWidget.routeName,
              path: SelecionarcidadehenriqueWidget.routePath,
              builder: (context, params) => SelecionarcidadehenriqueWidget(),
            ),
            FFRoute(
              name: TesteWidget.routeName,
              path: TesteWidget.routePath,
              builder: (context, params) => TesteWidget(),
            ),
            FFRoute(
              name: CompraverificadoCHECKOUTAssinaturaWidget.routeName,
              path: CompraverificadoCHECKOUTAssinaturaWidget.routePath,
              builder: (context, params) =>
                  CompraverificadoCHECKOUTAssinaturaWidget(
                usersREF: params.getParam(
                  'usersREF',
                  ParamType.DocumentReference,
                  isList: false,
                  collectionNamePath: ['users'],
                ),
              ),
            ),
            FFRoute(
              name: CategoriaSHOWWidget.routeName,
              path: CategoriaSHOWWidget.routePath,
              builder: (context, params) => CategoriaSHOWWidget(),
            ),
            FFRoute(
              name: CategoriaFESTAWidget.routeName,
              path: CategoriaFESTAWidget.routePath,
              builder: (context, params) => CategoriaFESTAWidget(),
            ),
            FFRoute(
              name: CategoriaTEATROWidget.routeName,
              path: CategoriaTEATROWidget.routePath,
              builder: (context, params) => CategoriaTEATROWidget(),
            ),
            FFRoute(
              name: CategoriaEsporteWidget.routeName,
              path: CategoriaEsporteWidget.routePath,
              builder: (context, params) => CategoriaEsporteWidget(),
            ),
            FFRoute(
              name: CartaodecreditoNOVOWidget.routeName,
              path: CartaodecreditoNOVOWidget.routePath,
              builder: (context, params) => CartaodecreditoNOVOWidget(
                ingressoREF: params.getParam(
                  'ingressoREF',
                  ParamType.DocumentReference,
                  isList: false,
                  collectionNamePath: ['ingressos'],
                ),
              ),
            )
          ].map((r) => r.toRoute(appStateNotifier)).toList(),
        ),
      ].map((r) => r.toRoute(appStateNotifier)).toList(),
    );

extension NavParamExtensions on Map<String, String?> {
  Map<String, String> get withoutNulls => Map.fromEntries(
        entries
            .where((e) => e.value != null)
            .map((e) => MapEntry(e.key, e.value!)),
      );
}

extension NavigationExtensions on BuildContext {
  void goNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, String> queryParameters = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : goNamed(
              name,
              pathParameters: pathParameters,
              queryParameters: queryParameters,
              extra: extra,
            );

  void pushNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, String> queryParameters = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : pushNamed(
              name,
              pathParameters: pathParameters,
              queryParameters: queryParameters,
              extra: extra,
            );

  void safePop() {
    // If there is only one route on the stack, navigate to the initial
    // page instead of popping.
    if (canPop()) {
      pop();
    } else {
      go('/');
    }
  }
}

extension GoRouterExtensions on GoRouter {
  AppStateNotifier get appState => AppStateNotifier.instance;
  void prepareAuthEvent([bool ignoreRedirect = false]) =>
      appState.hasRedirect() && !ignoreRedirect
          ? null
          : appState.updateNotifyOnAuthChange(false);
  bool shouldRedirect(bool ignoreRedirect) =>
      !ignoreRedirect && appState.hasRedirect();
  void clearRedirectLocation() => appState.clearRedirectLocation();
  void setRedirectLocationIfUnset(String location) =>
      appState.updateNotifyOnAuthChange(false);
}

extension _GoRouterStateExtensions on GoRouterState {
  Map<String, dynamic> get extraMap =>
      extra != null ? extra as Map<String, dynamic> : {};
  Map<String, dynamic> get allParams => <String, dynamic>{}
    ..addAll(pathParameters)
    ..addAll(uri.queryParameters)
    ..addAll(extraMap);
  TransitionInfo get transitionInfo => extraMap.containsKey(kTransitionInfoKey)
      ? extraMap[kTransitionInfoKey] as TransitionInfo
      : TransitionInfo.appDefault();
}

class FFParameters {
  FFParameters(this.state, [this.asyncParams = const {}]);

  final GoRouterState state;
  final Map<String, Future<dynamic> Function(String)> asyncParams;

  Map<String, dynamic> futureParamValues = {};

  // Parameters are empty if the params map is empty or if the only parameter
  // present is the special extra parameter reserved for the transition info.
  bool get isEmpty =>
      state.allParams.isEmpty ||
      (state.allParams.length == 1 &&
          state.extraMap.containsKey(kTransitionInfoKey));
  bool isAsyncParam(MapEntry<String, dynamic> param) =>
      asyncParams.containsKey(param.key) && param.value is String;
  bool get hasFutures => state.allParams.entries.any(isAsyncParam);
  Future<bool> completeFutures() => Future.wait(
        state.allParams.entries.where(isAsyncParam).map(
          (param) async {
            final doc = await asyncParams[param.key]!(param.value)
                .onError((_, __) => null);
            if (doc != null) {
              futureParamValues[param.key] = doc;
              return true;
            }
            return false;
          },
        ),
      ).onError((_, __) => [false]).then((v) => v.every((e) => e));

  dynamic getParam<T>(
    String paramName,
    ParamType type, {
    bool isList = false,
    List<String>? collectionNamePath,
    StructBuilder<T>? structBuilder,
  }) {
    if (futureParamValues.containsKey(paramName)) {
      return futureParamValues[paramName];
    }
    if (!state.allParams.containsKey(paramName)) {
      return null;
    }
    final param = state.allParams[paramName];
    // Got parameter from `extras`, so just directly return it.
    if (param is! String) {
      return param;
    }
    // Return serialized value.
    return deserializeParam<T>(
      param,
      type,
      isList,
      collectionNamePath: collectionNamePath,
      structBuilder: structBuilder,
    );
  }
}

class FFRoute {
  const FFRoute({
    required this.name,
    required this.path,
    required this.builder,
    this.requireAuth = false,
    this.asyncParams = const {},
    this.routes = const [],
  });

  final String name;
  final String path;
  final bool requireAuth;
  final Map<String, Future<dynamic> Function(String)> asyncParams;
  final Widget Function(BuildContext, FFParameters) builder;
  final List<GoRoute> routes;

  GoRoute toRoute(AppStateNotifier appStateNotifier) => GoRoute(
        name: name,
        path: path,
        redirect: (context, state) {
          if (appStateNotifier.shouldRedirect) {
            final redirectLocation = appStateNotifier.getRedirectLocation();
            appStateNotifier.clearRedirectLocation();
            return redirectLocation;
          }

          if (requireAuth && !appStateNotifier.loggedIn) {
            appStateNotifier.setRedirectLocationIfUnset(state.uri.toString());
            return '/inicioAPP';
          }
          return null;
        },
        pageBuilder: (context, state) {
          fixStatusBarOniOS16AndBelow(context);
          final ffParams = FFParameters(state, asyncParams);
          final page = ffParams.hasFutures
              ? FutureBuilder(
                  future: ffParams.completeFutures(),
                  builder: (context, _) => builder(context, ffParams),
                )
              : builder(context, ffParams);
          final child = appStateNotifier.loading
              ? Container(
                  color: Colors.transparent,
                  child: Image.asset(
                    'assets/images/open_app.gif',
                    fit: BoxFit.cover,
                  ),
                )
              : PushNotificationsHandler(child: page);

          final transitionInfo = state.transitionInfo;
          return transitionInfo.hasTransition
              ? CustomTransitionPage(
                  key: state.pageKey,
                  child: child,
                  transitionDuration: transitionInfo.duration,
                  transitionsBuilder:
                      (context, animation, secondaryAnimation, child) =>
                          PageTransition(
                    type: transitionInfo.transitionType,
                    duration: transitionInfo.duration,
                    reverseDuration: transitionInfo.duration,
                    alignment: transitionInfo.alignment,
                    child: child,
                  ).buildTransitions(
                    context,
                    animation,
                    secondaryAnimation,
                    child,
                  ),
                )
              : MaterialPage(key: state.pageKey, child: child);
        },
        routes: routes,
      );
}

class TransitionInfo {
  const TransitionInfo({
    required this.hasTransition,
    this.transitionType = PageTransitionType.fade,
    this.duration = const Duration(milliseconds: 300),
    this.alignment,
  });

  final bool hasTransition;
  final PageTransitionType transitionType;
  final Duration duration;
  final Alignment? alignment;

  static TransitionInfo appDefault() => TransitionInfo(hasTransition: false);
}

class _RouteErrorBuilder extends StatefulWidget {
  const _RouteErrorBuilder({
    Key? key,
    required this.state,
    required this.child,
  }) : super(key: key);

  final GoRouterState state;
  final Widget child;

  @override
  State<_RouteErrorBuilder> createState() => _RouteErrorBuilderState();
}

class _RouteErrorBuilderState extends State<_RouteErrorBuilder> {
  @override
  void initState() {
    super.initState();

    // Handle erroneous links from Firebase Dynamic Links.

    String? location;

    /*
    Handle `links` routes that have dynamic-link entangled with deep-link 
    */
    if (widget.state.uri.toString().startsWith('/link') &&
        widget.state.uri.queryParameters.containsKey('deep_link_id')) {
      final deepLinkId = widget.state.uri.queryParameters['deep_link_id'];
      if (deepLinkId != null) {
        final deepLinkUri = Uri.parse(deepLinkId);
        final link = deepLinkUri.toString();
        final host = deepLinkUri.host;
        location = link.split(host).last;
      }
    }

    if (widget.state.uri.toString().startsWith('/link') &&
        widget.state.uri.toString().contains('request_ip_version')) {
      location = '/';
    }

    if (location != null) {
      SchedulerBinding.instance
          .addPostFrameCallback((_) => context.go(location!));
    }
  }

  @override
  Widget build(BuildContext context) => widget.child;
}

class RootPageContext {
  const RootPageContext(this.isRootPage, [this.errorRoute]);
  final bool isRootPage;
  final String? errorRoute;

  static bool isInactiveRootPage(BuildContext context) {
    final rootPageContext = context.read<RootPageContext?>();
    final isRootPage = rootPageContext?.isRootPage ?? false;
    final location = GoRouterState.of(context).uri.toString();
    return isRootPage &&
        location != '/' &&
        location != rootPageContext?.errorRoute;
  }

  static Widget wrap(Widget child, {String? errorRoute}) => Provider.value(
        value: RootPageContext(true, errorRoute),
        child: child,
      );
}

extension GoRouterLocationExtension on GoRouter {
  String getCurrentLocation() {
    final RouteMatch lastMatch = routerDelegate.currentConfiguration.last;
    final RouteMatchList matchList = lastMatch is ImperativeRouteMatch
        ? lastMatch.matches
        : routerDelegate.currentConfiguration;
    return matchList.uri.toString();
  }
}
