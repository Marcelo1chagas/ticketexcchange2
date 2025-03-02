import 'dart:convert';
import 'dart:typed_data';
import '../schema/structs/index.dart';

import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start BF - emailcompraconfirmada2804 Group Code

class BFEmailcompraconfirmada2804Group {
  static String getBaseUrl() => 'https://api.backendflow.io/v1';
  static Map<String, String> headers = {};
  static Emailcompraconfirmada2804Call emailcompraconfirmada2804Call =
      Emailcompraconfirmada2804Call();
}

class Emailcompraconfirmada2804Call {
  Future<ApiCallResponse> call({
    String? to = '',
    String? subject = '',
    String? attachmentLink = '',
    String? attachmentName = '',
    String? nomefesta = '',
    String? localfesta = '',
    String? datashow = '',
    String? valordoingresso = '',
    String? nomevendedor = '',
    String? plataforma = '',
  }) async {
    final baseUrl = BFEmailcompraconfirmada2804Group.getBaseUrl();

    final ffApiRequestBody = '''
{
  "sk-bf-3030d5c3-9b2c-4089-a39f-37508c20e79c": ""
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'emailcompraconfirmada2804',
      apiUrl:
          '${baseUrl}/email?templateId=AxsgCXen6D69fN0Pz4mA&to=${to}&subject=${subject}&attachmentLink=${attachmentLink}&attachmentName=${attachmentName}&nomefesta=${nomefesta}&localfesta=${localfesta}&datashow=${datashow}&valordoingresso=${valordoingresso}&nomevendedor=${nomevendedor}&plataforma=${plataforma}',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End BF - emailcompraconfirmada2804 Group Code

/// Start BF - emailvendaconfirmada2804 Group Code

class BFEmailvendaconfirmada2804Group {
  static String getBaseUrl() => 'https://api.backendflow.io/v1';
  static Map<String, String> headers = {};
  static Emailvendaconfirmada2804Call emailvendaconfirmada2804Call =
      Emailvendaconfirmada2804Call();
}

class Emailvendaconfirmada2804Call {
  Future<ApiCallResponse> call({
    String? to = '',
    String? subject = '',
    String? attachmentLink = '',
    String? attachmentName = '',
    String? name = '',
    String? valordoingresso = '',
    String? datadavenda = '',
    String? nomedafesta = '',
    String? nomedocomprador = '',
    String? emailcliente = '',
    String? telefone = '',
    String? plataforma = '',
    String? datadoshow = '',
  }) async {
    final baseUrl = BFEmailvendaconfirmada2804Group.getBaseUrl();

    final ffApiRequestBody = '''
{
  "sk-bf-3030d5c3-9b2c-4089-a39f-37508c20e79c": ""
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'emailvendaconfirmada2804',
      apiUrl:
          '${baseUrl}/email?templateId=FOvPwlbdDuXygEYMvHgI&to=${to}&subject=${subject}&attachmentLink=${attachmentLink}&attachmentName=${attachmentName}&name=${name}&valordoingresso=${valordoingresso}&datadavenda=${datadavenda}&nomedafesta=${nomedafesta}&nomedocomprador=${nomedocomprador}&emailcliente=${emailcliente}&telefone=${telefone}&plataforma=${plataforma}&datadoshow=${datadoshow}',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End BF - emailvendaconfirmada2804 Group Code

/// Start BF - emailingressoad2804 Group Code

class BFEmailingressoad2804Group {
  static String getBaseUrl() => 'https://api.backendflow.io/v1';
  static Map<String, String> headers = {};
  static Emailingressoad2804Call emailingressoad2804Call =
      Emailingressoad2804Call();
}

class Emailingressoad2804Call {
  Future<ApiCallResponse> call({
    String? to = '',
    String? subject = '',
    String? attachmentLink = '',
    String? attachmentName = '',
  }) async {
    final baseUrl = BFEmailingressoad2804Group.getBaseUrl();

    final ffApiRequestBody = '''
{
  "sk-bf-3030d5c3-9b2c-4089-a39f-37508c20e79c": ""
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'emailingressoad2804',
      apiUrl:
          '${baseUrl}/email?templateId=NGKa6OWg6BkJPgfztCfw&to=${to}&subject=${subject}&attachmentLink=${attachmentLink}&attachmentName=${attachmentName}',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End BF - emailingressoad2804 Group Code

/// Start BF - emailverificadocompra2804 Group Code

class BFEmailverificadocompra2804Group {
  static String getBaseUrl() => 'https://api.backendflow.io/v1';
  static Map<String, String> headers = {};
  static Emailverificadocompra2804Call emailverificadocompra2804Call =
      Emailverificadocompra2804Call();
}

class Emailverificadocompra2804Call {
  Future<ApiCallResponse> call({
    String? to = '',
    String? subject = '',
    String? attachmentLink = '',
    String? attachmentName = '',
    String? name = '',
  }) async {
    final baseUrl = BFEmailverificadocompra2804Group.getBaseUrl();

    final ffApiRequestBody = '''
{
  "sk-bf-3030d5c3-9b2c-4089-a39f-37508c20e79c": ""
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'emailverificadocompra2804',
      apiUrl:
          '${baseUrl}/email?templateId=eGewmKHS5v6FbDJRnQcy&to=${to}&subject=${subject}&attachmentLink=${attachmentLink}&attachmentName=${attachmentName}&name=${name}',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End BF - emailverificadocompra2804 Group Code

/// Start BF - emailbemvindo2804 Group Code

class BFEmailbemvindo2804Group {
  static String getBaseUrl() => 'https://api.backendflow.io/v1';
  static Map<String, String> headers = {};
  static Emailbemvindo2804Call emailbemvindo2804Call = Emailbemvindo2804Call();
}

class Emailbemvindo2804Call {
  Future<ApiCallResponse> call({
    String? to = '',
    String? subject = '',
    String? attachmentLink = '',
    String? attachmentName = '',
    String? name = '',
  }) async {
    final baseUrl = BFEmailbemvindo2804Group.getBaseUrl();

    final ffApiRequestBody = '''
{
  "sk-bf-3030d5c3-9b2c-4089-a39f-37508c20e79c": ""
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'emailbemvindo2804',
      apiUrl:
          '${baseUrl}/email?templateId=lwhRD4sVDF6eVFZiV6Bl&to=${to}&subject=${subject}&attachmentLink=${attachmentLink}&attachmentName=${attachmentName}&name=${name}',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End BF - emailbemvindo2804 Group Code

/// Start Pagamentos PagarME Group Code

class PagamentosPagarMEGroup {
  static String getBaseUrl() => 'https://api.pagar.me/core/v5/';
  static Map<String, String> headers = {
    'accept': 'application/json',
    'authorization': 'Basic c2tfdnFubGFNcE1ob2hMRWVCUDo=',
    'content-type': 'application/json',
  };
  static GerarPagamentoPIXCall gerarPagamentoPIXCall = GerarPagamentoPIXCall();
  static CriarPagamentoPixSLIPTCall criarPagamentoPixSLIPTCall =
      CriarPagamentoPixSLIPTCall();
  static GerarPagamentoCartaoCreditoCall gerarPagamentoCartaoCreditoCall =
      GerarPagamentoCartaoCreditoCall();
}

class GerarPagamentoPIXCall {
  Future<ApiCallResponse> call({
    String? code = '',
    int? amountItem,
    String? descriptionItem = '',
    int? quantityItem,
    String? codeItem = '',
    int? expiresIn,
    String? costumerId = '',
  }) async {
    final baseUrl = PagamentosPagarMEGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "code": "${code}",
  "customer_id": "${costumerId}",
  "items": [
    {
      "amount": ${amountItem},
      "description": "${descriptionItem}",
      "quantity": ${quantityItem},
      "code": "${codeItem}"
    }
  ],
  "payments": [
    {
      "Pix": {
        "expires_in": ${expiresIn}
      },
      "payment_method": "pix"
    }
  ]
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'GerarPagamento PIX',
      apiUrl: '${baseUrl}orders',
      callType: ApiCallType.POST,
      headers: {
        'accept': 'application/json',
        'authorization': 'Basic c2tfdnFubGFNcE1ob2hMRWVCUDo=',
        'content-type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: true,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? idPedido(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.id''',
      ));
  String? status(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.status''',
      ));
  String? chavePIX(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.charges[:].last_transaction.qr_code''',
      ));
  String? qRcodeURL(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.charges[:].last_transaction.qr_code_url''',
      ));
  String? idCobranca(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.charges[:].id''',
      ));
  String? mensagemdeERRO(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
}

class CriarPagamentoPixSLIPTCall {
  Future<ApiCallResponse> call({
    int? amountItem,
    String? descriptionItem = '',
    int? quantity,
    String? codeItem = '',
    String? nameCliente = '',
    String? emailCliente = '',
    String? typeCliente = '',
    String? documentCliente = '',
    String? countryCodeCliente = '',
    String? numberCliente = '',
    String? areaCodeCliente = '',
    String? expiresIn = '',
    int? amountVendedor,
    String? recipientIdVendedor = '',
    String? typePercentage = '',
    int? amountRecebedor2,
    String? typePercentage2 = '',
    String? recipientIdRecebedor2 = '',
  }) async {
    final baseUrl = PagamentosPagarMEGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "items": [
    {
      "amount": ${amountItem},
      "description": "${descriptionItem}",
      "quantity": ${quantity},
      "code": "${codeItem}"
    }
  ],
  "customer": {
    "name": "${nameCliente}",
    "email": "${emailCliente}",
    "type": "${typeCliente}",
    "document": "${documentCliente}",
    "phones": {
      "home_phone": {
        "country_code": "${countryCodeCliente}",
        "number": "${numberCliente}",
        "area_code": "${areaCodeCliente}"
      }
    }
  },
  "payments": [
    {
      "payment_method": "pix",
      "pix": {
        "expires_in": "${expiresIn}",
        "additional_information": [
          {
            "name": "${nameCliente}",
            "value": ${quantity}
          }
        ]
      },
      "split": [
        {
          "amount": ${amountVendedor},
          "recipient_id": "${recipientIdVendedor}",
          "type": "${typePercentage}",
          "options": {
            "charge_processing_fee": true,
            "charge_remainder_fee": true,
            "liable": true
          }
        },
        {
          "amount": ${amountRecebedor2},
          "type": "${typePercentage2}",
          "recipient_id": "${recipientIdRecebedor2}",
          "options": {
            "charge_processing_fee": false,
            "charge_remainder_fee": false,
            "liable": false
          }
        }
      ]
    }
  ]
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Criar Pagamento Pix SLIPT',
      apiUrl: '${baseUrl}orders',
      callType: ApiCallType.POST,
      headers: {
        'accept': 'application/json',
        'authorization': 'Basic c2tfdnFubGFNcE1ob2hMRWVCUDo=',
        'content-type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? idPedido(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.id''',
      ));
  String? status(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.status''',
      ));
  String? idCobranca(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.charges[:].id''',
      ));
  String? chavePIX(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.charges[:].last_transaction.qr_code''',
      ));
  String? qrCodePIX(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.charges[:].last_transaction.qr_code_url''',
      ));
}

class GerarPagamentoCartaoCreditoCall {
  Future<ApiCallResponse> call({
    String? code = '',
    String? customerId = '',
    int? amounItem,
    String? descriptionItem = '',
    int? quantityItem,
    String? codeItem = '',
    String? numberCartao = '',
    String? holderNameCartao = '',
    String? cpf = '',
    int? expMonth,
    int? expYear,
    String? cvv = '',
    String? enderecoCompraId = '',
  }) async {
    final baseUrl = PagamentosPagarMEGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "code": "${code}",
  "customer_id": "${customerId}",
  "items": [
    {
      "amount": ${amounItem},
      "description": "${descriptionItem}",
      "quantity": ${quantityItem},
      "code": "${codeItem}"
    }
  ],
  "payments": [
    {
      "credit_card": {
        "card": {
          "number": "${numberCartao}",
          "holder_name": "${holderNameCartao}",
          "exp_month": ${expMonth},
          "exp_year": ${expYear},
          "cvv": "${cvv}",
          "holder_document": "${cpf}",
          "billing_address_id": "${enderecoCompraId}"
        },
        "installments": 1,
        "statement_descriptor": "TicketExchang",
        "operation_type": "auth_only"
      },
      "Pix": {
        "expires_in": 900
      },
      "payment_method": "credit_card"
    }
  ]
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'GerarPagamento CartaoCredito',
      apiUrl: '${baseUrl}orders',
      callType: ApiCallType.POST,
      headers: {
        'accept': 'application/json',
        'authorization': 'Basic c2tfdnFubGFNcE1ob2hMRWVCUDo=',
        'content-type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? idPedido(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.id''',
      ));
  String? festaComprada(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.items[:].description''',
      ));
  String? idCliente(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.customer.id''',
      ));
  String? status(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.status''',
      ));
  String? idCobranca(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.charges[:].id''',
      ));
}

/// End Pagamentos PagarME Group Code

class CriarClientePagarMECall {
  static Future<ApiCallResponse> call({
    String? name = '',
    String? email = '',
    String? code = '',
    String? document = '',
    String? documentType = '',
    String? type = '',
    String? country = '',
    String? state = '',
    String? city = '',
    String? zipCode = '',
    String? line1 = '',
    String? countryCode = '',
    String? areaCode = '',
    String? number = '',
  }) async {
    final ffApiRequestBody = '''
{
  "address": {
    "country": "${country}",
    "state": "${state}",
    "city": "${city}",
    "zip_code": "${zipCode}",
    "line_1": "${line1}"
  },
  "phones": {
    "home_phone": {
      "country_code": "${countryCode}",
      "area_code": "${areaCode}",
      "number": "${number}"
    }
  },
  "name": "${name}",
  "email": "${email}",
  "code": "${code}",
  "document": "${document}",
  "document_type": "${documentType}",
  "type": "${type}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Criar Cliente PagarME',
      apiUrl: 'https://api.pagar.me/core/v5/customers',
      callType: ApiCallType.POST,
      headers: {
        'accept': 'application/json',
        'authorization': 'Basic c2tfdnFubGFNcE1ob2hMRWVCUDo=',
        'content-type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? idCliente(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.id''',
      ));
  static String? idEndereco(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.address.id''',
      ));
  static String? error(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
  static dynamic? mensagemdeERRO(dynamic response) => getJsonField(
        response,
        r'''$.errors''',
      );
  static String? codePagarME(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.code''',
      ));
}

class EditarClientePagarMECall {
  static Future<ApiCallResponse> call({
    String? customerId = '',
    String? name = '',
    String? email = '',
    String? code = '',
    String? document = '',
    String? documentType = '',
    String? type = '',
  }) async {
    final ffApiRequestBody = '''
{
  "name": "${name}",
  "email": "${email}",
  "code": "${code}",
  "document": "${document}",
  "document_type": "${documentType}",
  "type": "${type}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'EditarCliente PagarME',
      apiUrl: 'https://api.pagar.me/core/v5/customers/${customerId}',
      callType: ApiCallType.PUT,
      headers: {
        'accept': 'application/json',
        'authorization': 'Basic c2tfdnFubGFNcE1ob2hMRWVCUDo=',
        'content-type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class CriarCartaoPagarMeCall {
  static Future<ApiCallResponse> call({
    String? customerId = '',
    String? number = '',
    String? holderName = '',
    String? holderDocument = '',
    int? expMonth,
    int? expYear,
    String? cvv = '',
    String? billingAddressId = '',
  }) async {
    final ffApiRequestBody = '''
{
  "number": "${number}",
  "holder_name": "${holderName}",
  "holder_document": "${holderDocument}",
  "exp_month": ${expMonth},
  "exp_year": ${expYear},
  "cvv": "${cvv}",
  "billing_address_id": "${billingAddressId}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Criar Cartao PagarMe',
      apiUrl: 'https://api.pagar.me/core/v5/customers/${customerId}/cards',
      callType: ApiCallType.POST,
      headers: {
        'accept': 'application/json',
        'authorization': 'Basic c2tfdnFubGFNcE1ob2hMRWVCUDo=',
        'content-type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? idCartao(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.id''',
      ));
  static String? ultimos4Digitos(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.last_four_digits''',
      ));
  static String? bandeira(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.brand''',
      ));
}

class ExcluirCartaoCreditoPagarMECall {
  static Future<ApiCallResponse> call({
    String? customerId = '',
    String? cardId = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'ExcluirCartao Credito PagarME',
      apiUrl:
          'https://api.pagar.me/core/v5/customers/${customerId}/cards/${cardId}',
      callType: ApiCallType.DELETE,
      headers: {
        'accept': 'application/json',
        'authorization': 'Basic c2tfdnFubGFNcE1ob2hMRWVCUDo=',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class EditarCartaoPagarMECall {
  static Future<ApiCallResponse> call({
    String? customerId = '',
    String? cardId = '',
    String? holderName = '',
    String? holderDocument = '',
    int? expMonth,
    int? expYear,
    String? billingAddressId = '',
  }) async {
    final ffApiRequestBody = '''
{
  "holder_name": "${holderName}",
  "holder_document": "${holderDocument}",
  "exp_month": ${expMonth},
  "exp_year": ${expYear},
  "billing_address_id": "${billingAddressId}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'EditarCartao PagarME',
      apiUrl:
          'https://api.pagar.me/core/v5/customers/${customerId}/cards/${cardId}',
      callType: ApiCallType.PUT,
      headers: {
        'accept': 'application/json',
        'authorization': 'Basic c2tfdnFubGFNcE1ob2hMRWVCUDo=',
        'content-type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ObterPagamentoPagarMECall {
  static Future<ApiCallResponse> call({
    String? chargeId = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'ObterPagamentoPagarME ',
      apiUrl: 'https://api.pagar.me/core/v5/charges/${chargeId}',
      callType: ApiCallType.GET,
      headers: {
        'accept': 'application/json',
        'authorization': 'Basic c2tfdnFubGFNcE1ob2hMRWVCUDo=',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? statusPedido(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.status''',
      ));
  static String? idCliente(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.customer.id''',
      ));
  static String? idCobranca(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.id''',
      ));
  static String? chavePIX(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.last_transaction.qr_code''',
      ));
}

class CriarSubContaAsaasCall {
  static Future<ApiCallResponse> call({
    String? nome = '',
    String? email = '',
    String? cpf = '',
    String? dataNascimento = '',
    String? mobilephone = '',
    int? rendaMensal,
    String? adrees = '',
    String? adressNumber = '',
    String? bairro = '',
    String? cep = '',
  }) async {
    final ffApiRequestBody = '''
{
  "name": "${escapeStringForJson(nome)}",
  "email": "${escapeStringForJson(email)}",
  "cpfCnpj": "${escapeStringForJson(cpf)}",
  "birthDate": "${escapeStringForJson(dataNascimento)}",
  "mobilePhone": "${escapeStringForJson(mobilephone)}",
  "incomeValue": ${rendaMensal},
  "address": "${escapeStringForJson(adrees)}",
  "addressNumber": "${escapeStringForJson(adressNumber)}",
  "province": "${escapeStringForJson(bairro)}",
  "postalCode": "${escapeStringForJson(cep)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Criar SubConta  Asaas',
      apiUrl: 'https://api-sandbox.asaas.com/v3/accounts',
      callType: ApiCallType.POST,
      headers: {
        'accept': 'application/json',
        'access_token':
            '\$aact_MzkwODA2MWY2OGM3MWRlMDU2NWM3MzJlNzZmNGZhZGY6OmM3MmExMzAxLTIxNmEtNDY5NS04YzNlLWMwMTNkZWMwYThiNDo6JGFhY2hfMzRkODlhMWItMDgyMC00NWFmLWIxNzYtOWQ3NzZhN2NjMDAw',
        'content-type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class PagamentoDeAssinaturaPagarMECall {
  static Future<ApiCallResponse> call({
    String? codeItem = '',
    String? planoId = '',
    String? paymentMethod = '',
    String? startAt = '',
    String? costumerId = '',
    String? numberCard = '',
    String? holderName = '',
    String? holderDocument = '',
    int? expMonth,
    int? expYear,
    String? cvv = '',
    String? idCobranca = '',
    int? parcelas,
  }) async {
    final ffApiRequestBody = '''
{
  "card": {
    "number": "${escapeStringForJson(numberCard)}",
    "holder_name": "${escapeStringForJson(holderName)}",
    "holder_document": "${escapeStringForJson(holderDocument)}",
    "exp_month": ${expMonth},
    "exp_year": ${expYear},
    "cvv": "${escapeStringForJson(cvv)}",
    "billing_address_id": "${escapeStringForJson(idCobranca)}"
  },
  "installments": ${parcelas},
  "code": "${escapeStringForJson(codeItem)}",
  "plan_id": "${escapeStringForJson(planoId)}",
  "payment_method": "credit_card",
  "customer_id": "${escapeStringForJson(costumerId)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Pagamento de Assinatura PagarME',
      apiUrl: 'https://api.pagar.me/core/v5/subscriptions',
      callType: ApiCallType.POST,
      headers: {
        'accept': 'application/json',
        'authorization': 'Basic c2tfdnFubGFNcE1ob2hMRWVCUDo=',
        'content-type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? idAssinatura(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.id''',
      ));
  static String? inicio(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.start_at''',
      ));
  static String? code(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.code''',
      ));
  static String? planoPago(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.plan.name''',
      ));
  static String? idCLiente(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.customer.id''',
      ));
}

class CriarPlanoDeAssinaturaPagarMECall {
  static Future<ApiCallResponse> call({
    String? name = '',
    String? descriptionFatura = '',
    bool? shippable,
    int? price,
    String? faturaEscrito = '',
    String? currency = '',
    String? interval = '',
    String? billingType = '',
  }) async {
    final ffApiRequestBody = '''
{
  "interval": "${escapeStringForJson(interval)}",
  "interval_count": 1,
  "pricing_scheme": {
    "scheme_type": "Unit",
    "price": ${price},
    "mininum_price": ${price}
  },
  "quantity": 1,
  "name": "${escapeStringForJson(name)}",
  "description": "${escapeStringForJson(descriptionFatura)}",
  "shippable": ${shippable},
  "minimum_price": ${price},
  "statement_descriptor": "${escapeStringForJson(faturaEscrito)}",
  "currency": "${escapeStringForJson(currency)}",
  "billing_type": "${escapeStringForJson(billingType)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Criar Plano de Assinatura PagarME',
      apiUrl: 'https://api.pagar.me/core/v5/plans',
      callType: ApiCallType.POST,
      headers: {
        'accept': 'application/json',
        'authorization': 'Basic c2tfdnFubGFNcE1ob2hMRWVCUDo=',
        'content-type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? idPlano(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.id''',
      ));
  static String? descricao(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.description''',
      ));
  static String? status(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.items[:].status''',
      ));
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _toEncodable(dynamic item) {
  if (item is DocumentReference) {
    return item.path;
  }
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}

String? escapeStringForJson(String? input) {
  if (input == null) {
    return null;
  }
  return input
      .replaceAll('\\', '\\\\')
      .replaceAll('"', '\\"')
      .replaceAll('\n', '\\n')
      .replaceAll('\t', '\\t');
}
