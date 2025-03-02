import 'dart:async';
import 'dart:convert';

import 'serialization_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '../../flutter_flow/flutter_flow_util.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

import '../../index.dart';
import '../../main.dart';

final _handledMessageIds = <String?>{};

class PushNotificationsHandler extends StatefulWidget {
  const PushNotificationsHandler({Key? key, required this.child})
      : super(key: key);

  final Widget child;

  @override
  _PushNotificationsHandlerState createState() =>
      _PushNotificationsHandlerState();
}

class _PushNotificationsHandlerState extends State<PushNotificationsHandler> {
  bool _loading = false;

  Future handleOpenedPushNotification() async {
    if (isWeb) {
      return;
    }

    final notification = await FirebaseMessaging.instance.getInitialMessage();
    if (notification != null) {
      await _handlePushNotification(notification);
    }
    FirebaseMessaging.onMessageOpenedApp.listen(_handlePushNotification);
  }

  Future _handlePushNotification(RemoteMessage message) async {
    if (_handledMessageIds.contains(message.messageId)) {
      return;
    }
    _handledMessageIds.add(message.messageId);

    safeSetState(() => _loading = true);
    try {
      final initialPageName = message.data['initialPageName'] as String;
      final initialParameterData = getInitialParameterData(message.data);
      final parametersBuilder = parametersBuilderMap[initialPageName];
      if (parametersBuilder != null) {
        final parameterData = await parametersBuilder(initialParameterData);
        if (mounted) {
          context.pushNamed(
            initialPageName,
            pathParameters: parameterData.pathParameters,
            extra: parameterData.extra,
          );
        } else {
          appNavigatorKey.currentContext?.pushNamed(
            initialPageName,
            pathParameters: parameterData.pathParameters,
            extra: parameterData.extra,
          );
        }
      }
    } catch (e) {
      print('Error: $e');
    } finally {
      safeSetState(() => _loading = false);
    }
  }

  @override
  void initState() {
    super.initState();
    SchedulerBinding.instance.addPostFrameCallback((_) {
      handleOpenedPushNotification();
    });
  }

  @override
  Widget build(BuildContext context) => _loading
      ? Container(
          color: Colors.transparent,
          child: Image.asset(
            'assets/images/open_app.gif',
            fit: BoxFit.cover,
          ),
        )
      : widget.child;
}

class ParameterData {
  const ParameterData(
      {this.requiredParams = const {}, this.allParams = const {}});
  final Map<String, String?> requiredParams;
  final Map<String, dynamic> allParams;

  Map<String, String> get pathParameters => Map.fromEntries(
        requiredParams.entries
            .where((e) => e.value != null)
            .map((e) => MapEntry(e.key, e.value!)),
      );
  Map<String, dynamic> get extra => Map.fromEntries(
        allParams.entries.where((e) => e.value != null),
      );

  static Future<ParameterData> Function(Map<String, dynamic>) none() =>
      (data) async => ParameterData();
}

final parametersBuilderMap =
    <String, Future<ParameterData> Function(Map<String, dynamic>)>{
  'home': (data) async => ParameterData(
        allParams: {
          'users': await getDocumentParameter<UsersRecord>(
              data, 'users', UsersRecord.fromSnapshot),
        },
      ),
  'AdicionarIngresso': ParameterData.none(),
  'Meusingressos': (data) async => ParameterData(
        allParams: {
          'users': await getDocumentParameter<UsersRecord>(
              data, 'users', UsersRecord.fromSnapshot),
        },
      ),
  'procuraringressos': ParameterData.none(),
  'editaringresso': (data) async => ParameterData(
        allParams: {
          'ingressoespecificoREF3':
              getParameter<DocumentReference>(data, 'ingressoespecificoREF3'),
          'notificationADD':
              getParameter<DocumentReference>(data, 'notificationADD'),
        },
      ),
  'catpaginadenavegaodeFOTO1': ParameterData.none(),
  'catpaginadenavegaodeFOTO2': ParameterData.none(),
  'catpaginadenavegaodeFOTO3': ParameterData.none(),
  'ativarnotficacao': (data) async => ParameterData(
        allParams: {
          'usersNOTIFICACAOREF':
              getParameter<DocumentReference>(data, 'usersNOTIFICACAOREF'),
        },
      ),
  'editarperfil': (data) async => ParameterData(
        allParams: {
          'editarperflusuarioREF':
              getParameter<DocumentReference>(data, 'editarperflusuarioREF'),
          'notcompraVendedor':
              getParameter<DocumentReference>(data, 'notcompraVendedor'),
        },
      ),
  'catpaginadevendaFOTO4': ParameterData.none(),
  'notifcaao': (data) async => ParameterData(
        allParams: {
          'ingreesoREF': getParameter<DocumentReference>(data, 'ingreesoREF'),
          'favREF': await getDocumentParameter<FavoritosRecord>(
              data, 'favREF', FavoritosRecord.fromSnapshot),
          'comprovante': await getDocumentParameter<
                  NotifcationCompraIngressoVendedorRecord>(data, 'comprovante',
              NotifcationCompraIngressoVendedorRecord.fromSnapshot),
        },
      ),
  'sucesspayment': ParameterData.none(),
  'politicadeprivacidade': ParameterData.none(),
  'termosdeuso': ParameterData.none(),
  'politicadedevolucao': ParameterData.none(),
  'taxasdeservico': ParameterData.none(),
  'polticadecompraeenvio': ParameterData.none(),
  'sucesspaymentalcance': ParameterData.none(),
  'esqueceuSENHA': ParameterData.none(),
  'esqueceuSENHAlogin': ParameterData.none(),
  'catpaginadenavegaoFOTO5': ParameterData.none(),
  'informacoesdeVENDA-comprador': (data) async => ParameterData(
        allParams: {
          'notvendaCOmpradorREF':
              getParameter<DocumentReference>(data, 'notvendaCOmpradorREF'),
          'venda': await getDocumentParameter<CompraRecord>(
              data, 'venda', CompraRecord.fromSnapshot),
          'vendedor': await getDocumentParameter<
                  NotifcationCompraIngressoVendedorRecord>(data, 'vendedor',
              NotifcationCompraIngressoVendedorRecord.fromSnapshot),
        },
      ),
  'informacoesdeVENDA-VENDEDOR': (data) async => ParameterData(
        allParams: {
          'notvendaVENDEDORREF':
              getParameter<DocumentReference>(data, 'notvendaVENDEDORREF'),
          'venda': await getDocumentParameter<CompraRecord>(
              data, 'venda', CompraRecord.fromSnapshot),
        },
      ),
  'editardadosbancarios': (data) async => ParameterData(
        allParams: {
          'dadosbancariosREF':
              getParameter<DocumentReference>(data, 'dadosbancariosREF'),
        },
      ),
  'confirmequevoce': (data) async => ParameterData(
        allParams: {
          'dadosbancariosREF':
              getParameter<DocumentReference>(data, 'dadosbancariosREF'),
        },
      ),
  'avaliacaodeusuario': (data) async => ParameterData(
        allParams: {
          'vendedorREF': getParameter<DocumentReference>(data, 'vendedorREF'),
          'users': getParameter<DocumentReference>(data, 'users'),
          'usersDocument': await getDocumentParameter<UsersRecord>(
              data, 'usersDocument', UsersRecord.fromSnapshot),
          'usersAVALIACAOREF':
              await getDocumentParameter<NotificationEnvioDoIngressoRecord>(
                  data,
                  'usersAVALIACAOREF',
                  NotificationEnvioDoIngressoRecord.fromSnapshot),
        },
      ),
  'escreveravaliacao': (data) async => ParameterData(
        allParams: {
          'envioingressoREF1':
              getParameter<DocumentReference>(data, 'envioingressoREF1'),
        },
      ),
  'informacaoENVIO-COmprovante': (data) async => ParameterData(
        allParams: {
          'enviocomprovante':
              getParameter<DocumentReference>(data, 'enviocomprovante'),
          'users': getParameter<DocumentReference>(data, 'users'),
        },
      ),
  'Sobrenos': ParameterData.none(),
  'ingressosanunciadosPerfilVendedor': (data) async => ParameterData(
        allParams: {
          'usersRef': getParameter<DocumentReference>(data, 'usersRef'),
          'users': await getDocumentParameter<UsersRecord>(
              data, 'users', UsersRecord.fromSnapshot),
        },
      ),
  'sucesspaymentVerificado': ParameterData.none(),
  'escreverdenuncia': (data) async => ParameterData(
        allParams: {
          'usersr': getParameter<DocumentReference>(data, 'usersr'),
        },
      ),
  'statusPagamentoPIXLeilao': (data) async => ParameterData(
        allParams: {
          'ingressoPagamentoCheckout': getParameter<DocumentReference>(
              data, 'ingressoPagamentoCheckout'),
          'ingressoREF': getParameter<DocumentReference>(data, 'ingressoREF'),
        },
      ),
  'cartaocreditoPagamentoLEILAO': (data) async => ParameterData(
        allParams: {
          'ingressoPagamentoCheckout': getParameter<DocumentReference>(
              data, 'ingressoPagamentoCheckout'),
          'ingressoREF': getParameter<DocumentReference>(data, 'ingressoREF'),
        },
      ),
  'statusPagamentoPIXAlcance15dias': (data) async => ParameterData(
        allParams: {
          'ingressoPagamentoCheckout': getParameter<DocumentReference>(
              data, 'ingressoPagamentoCheckout'),
        },
      ),
  'statusPagamentoPIXAlcance1dia': (data) async => ParameterData(
        allParams: {
          'ingressoPagamentoCheckout': getParameter<DocumentReference>(
              data, 'ingressoPagamentoCheckout'),
        },
      ),
  'cartaocreditoPagamentoALCANCE15dias': (data) async => ParameterData(
        allParams: {
          'ingressoPagamentoCheckout': getParameter<DocumentReference>(
              data, 'ingressoPagamentoCheckout'),
        },
      ),
  'statusPagamentoPIXAlcance15dias30OFF': (data) async => ParameterData(
        allParams: {
          'ingressoPagamentoCheckout': getParameter<DocumentReference>(
              data, 'ingressoPagamentoCheckout'),
        },
      ),
  'statusPagamentoPIXAlcance1dia30OFF': (data) async => ParameterData(
        allParams: {
          'ingressoPagamentoCheckout': getParameter<DocumentReference>(
              data, 'ingressoPagamentoCheckout'),
        },
      ),
  'statusPagamentoPIXAlcance5dias30OFF': (data) async => ParameterData(
        allParams: {
          'ingressoPagamentoCheckout': getParameter<DocumentReference>(
              data, 'ingressoPagamentoCheckout'),
        },
      ),
  'cartaocreditoPagamentoALCANCE15dias30OFF': (data) async => ParameterData(
        allParams: {
          'ingressoPagamentoCheckout': getParameter<DocumentReference>(
              data, 'ingressoPagamentoCheckout'),
        },
      ),
  'melhoresofertas': (data) async => ParameterData(
        allParams: {
          'ingressoref': getParameter<DocumentReference>(data, 'ingressoref'),
        },
      ),
  'perfildovendedor': (data) async => ParameterData(
        allParams: {
          'usersREF': getParameter<DocumentReference>(data, 'usersREF'),
          'avaliacaousuario':
              await getDocumentParameter<AVALIACAODeUSUARIORecord>(data,
                  'avaliacaousuario', AVALIACAODeUSUARIORecord.fromSnapshot),
          'refavalicao': getParameter<DocumentReference>(data, 'refavalicao'),
        },
      ),
  'suporteaocliente': ParameterData.none(),
  'inicioAPP': ParameterData.none(),
  'processoverificado': ParameterData.none(),
  'tema_page_inicial': (data) async => ParameterData(
        allParams: {
          'users': getParameter<DocumentReference>(data, 'users'),
        },
      ),
  'alterartema_page_iniclal': (data) async => ParameterData(
        allParams: {
          'users': getParameter<DocumentReference>(data, 'users'),
        },
      ),
  'alterartema_page_escolha': (data) async => ParameterData(
        allParams: {
          'users': getParameter<DocumentReference>(data, 'users'),
        },
      ),
  'meu_leilao': (data) async => ParameterData(
        allParams: {
          'ingressoREF': getParameter<DocumentReference>(data, 'ingressoREF'),
        },
      ),
  'aceitar_proposta_leilao': (data) async => ParameterData(
        allParams: {
          'leiao': getParameter<DocumentReference>(data, 'leiao'),
        },
      ),
  'aumentaralcance': ParameterData.none(),
  'ALCANCE_ingressoespecifico': (data) async => ParameterData(
        allParams: {
          'ingressoREF': getParameter<DocumentReference>(data, 'ingressoREF'),
        },
      ),
  'compraverificado_CHECKOUT': (data) async => ParameterData(
        allParams: {
          'usersREF': getParameter<DocumentReference>(data, 'usersREF'),
        },
      ),
  'aumentaralcance30FF': ParameterData.none(),
  'ALCANCE_ingressoespecifico30FF': (data) async => ParameterData(
        allParams: {
          'ingressoREF': getParameter<DocumentReference>(data, 'ingressoREF'),
        },
      ),
  'informacaoleilao': (data) async => ParameterData(
        allParams: {
          'leilaoREF': getParameter<DocumentReference>(data, 'leilaoREF'),
          'ingressoREFDOCUMENT': await getDocumentParameter<IngressosRecord>(
              data, 'ingressoREFDOCUMENT', IngressosRecord.fromSnapshot),
          'ingressoREF': getParameter<DocumentReference>(data, 'ingressoREF'),
        },
      ),
  'CHECKOUTleilao': (data) async => ParameterData(
        allParams: {
          'ingressoPagamentoCheckout': getParameter<DocumentReference>(
              data, 'ingressoPagamentoCheckout'),
        },
      ),
  'statusPagamentoPIXVerificado': (data) async => ParameterData(
        allParams: {
          'usersREF': getParameter<DocumentReference>(data, 'usersREF'),
        },
      ),
  'statusPagamentoPIXAlcance5dias': (data) async => ParameterData(
        allParams: {
          'ingressoPagamentoCheckout': getParameter<DocumentReference>(
              data, 'ingressoPagamentoCheckout'),
        },
      ),
  'CHECKOUTALCANCE1dia': (data) async => ParameterData(
        allParams: {
          'ingressoPagamentoCheckout': getParameter<DocumentReference>(
              data, 'ingressoPagamentoCheckout'),
        },
      ),
  'CHECKOUTALCANCE5dias': (data) async => ParameterData(
        allParams: {
          'ingressoPagamentoCheckout': getParameter<DocumentReference>(
              data, 'ingressoPagamentoCheckout'),
        },
      ),
  'CHECKOUTALCANCE15dias': (data) async => ParameterData(
        allParams: {
          'ingressoPagamentoCheckout': getParameter<DocumentReference>(
              data, 'ingressoPagamentoCheckout'),
        },
      ),
  'CHECKOUTALCANCE15dias30OFF': (data) async => ParameterData(
        allParams: {
          'ingressoPagamentoCheckout': getParameter<DocumentReference>(
              data, 'ingressoPagamentoCheckout'),
        },
      ),
  'CHECKOUTALCANCE1dia30OFF': (data) async => ParameterData(
        allParams: {
          'ingressoPagamentoCheckout': getParameter<DocumentReference>(
              data, 'ingressoPagamentoCheckout'),
        },
      ),
  'CHECKOUTALCANCE5dias30OFF': (data) async => ParameterData(
        allParams: {
          'ingressoPagamentoCheckout': getParameter<DocumentReference>(
              data, 'ingressoPagamentoCheckout'),
        },
      ),
  'escolha_tem': (data) async => ParameterData(
        allParams: {
          'users': getParameter<DocumentReference>(data, 'users'),
        },
      ),
  'CHECKOUTNORMAL': (data) async => ParameterData(
        allParams: {
          'ingresso': getParameter<DocumentReference>(data, 'ingresso'),
        },
      ),
  'alterar_cidade': ParameterData.none(),
  'Verificado_gratis': ParameterData.none(),
  'dadosbancarios': ParameterData.none(),
  'pagina_promoters': ParameterData.none(),
  'Carteira': ParameterData.none(),
  'IngressosCompradosvendidos': ParameterData.none(),
  'WalletextratocompraHenrique': ParameterData.none(),
  'WalletAdcionarsaldohenrique': ParameterData.none(),
  'Walletcartaohenrique': ParameterData.none(),
  'comprarverificado': ParameterData.none(),
  'todososingressos': ParameterData.none(),
  'WalletRetirarsaldoHenrique': ParameterData.none(),
  'leilao': ParameterData.none(),
  'login_NOVO': ParameterData.none(),
  'Walletcarteirahenrique': ParameterData.none(),
  'userspage': ParameterData.none(),
  'StatusPIXNORMALNOVA': (data) async => ParameterData(
        allParams: {
          'ingressoREF': getParameter<DocumentReference>(data, 'ingressoREF'),
        },
      ),
  'FingressoespecificoNOVO': (data) async => ParameterData(
        allParams: {
          'ingressoREF': getParameter<DocumentReference>(data, 'ingressoREF'),
        },
      ),
  'politicasdoapp': ParameterData.none(),
  'criarcontaNOVA': ParameterData.none(),
  'todososlocais': ParameterData.none(),
  'ingressoespecificocomprados': (data) async => ParameterData(
        allParams: {
          'ingressoREFcomprado':
              getParameter<DocumentReference>(data, 'ingressoREFcomprado'),
        },
      ),
  'ingressoespecificoanunciados': (data) async => ParameterData(
        allParams: {
          'ingressoespecificoREF':
              getParameter<DocumentReference>(data, 'ingressoespecificoREF'),
        },
      ),
  'ingressoespecificofromfav': (data) async => ParameterData(
        allParams: {
          'ingressoespecificoREF2':
              getParameter<DocumentReference>(data, 'ingressoespecificoREF2'),
        },
      ),
  'saibamaishenrique01': ParameterData.none(),
  'paginaverificado1': ParameterData.none(),
  'selecionarcidadehenrique': ParameterData.none(),
  'teste': ParameterData.none(),
  'compraverificado_CHECKOUTAssinatura': (data) async => ParameterData(
        allParams: {
          'usersREF': getParameter<DocumentReference>(data, 'usersREF'),
        },
      ),
  'categoria_SHOW': ParameterData.none(),
  'categoria_FESTA': ParameterData.none(),
  'categoria_TEATRO': ParameterData.none(),
  'categoria_Esporte': ParameterData.none(),
  'cartaodecreditoNOVO': (data) async => ParameterData(
        allParams: {
          'ingressoREF': getParameter<DocumentReference>(data, 'ingressoREF'),
        },
      ),
};

Map<String, dynamic> getInitialParameterData(Map<String, dynamic> data) {
  try {
    final parameterDataStr = data['parameterData'];
    if (parameterDataStr == null ||
        parameterDataStr is! String ||
        parameterDataStr.isEmpty) {
      return {};
    }
    return jsonDecode(parameterDataStr) as Map<String, dynamic>;
  } catch (e) {
    print('Error parsing parameter data: $e');
    return {};
  }
}
