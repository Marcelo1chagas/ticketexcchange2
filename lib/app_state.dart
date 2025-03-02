import 'package:flutter/material.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/backend/api_requests/api_manager.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _TOTALSOMAa = prefs.getDouble('ff_TOTALSOMAa') ?? _TOTALSOMAa;
    });
    _safeInit(() {
      _FAVORITOnumeroINGRESSO = prefs.getDouble('ff_FAVORITOnumeroINGRESSO') ??
          _FAVORITOnumeroINGRESSO;
    });
    _safeInit(() {
      _valortotal = prefs.getDouble('ff_valortotal') ?? _valortotal;
    });
    _safeInit(() {
      _NotificationTOTAL =
          prefs.getDouble('ff_NotificationTOTAL') ?? _NotificationTOTAL;
    });
    _safeInit(() {
      _valorTotalPagamento =
          prefs.getDouble('ff_valorTotalPagamento') ?? _valorTotalPagamento;
    });
    _safeInit(() {
      _totalpagamentovendedor = prefs.getDouble('ff_totalpagamentovendedor') ??
          _totalpagamentovendedor;
    });
    _safeInit(() {
      _likes = prefs.getInt('ff_likes') ?? _likes;
    });
    _safeInit(() {
      _images = prefs.getStringList('ff_images') ?? _images;
    });
    _safeInit(() {
      _IdClientePagarME =
          prefs.getString('ff_IdClientePagarME') ?? _IdClientePagarME;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  bool _searchActive = false;
  bool get searchActive => _searchActive;
  set searchActive(bool value) {
    _searchActive = value;
  }

  double _TOTALSOMAa = 0.0;
  double get TOTALSOMAa => _TOTALSOMAa;
  set TOTALSOMAa(double value) {
    _TOTALSOMAa = value;
    prefs.setDouble('ff_TOTALSOMAa', value);
  }

  double _FAVORITOnumeroINGRESSO = 0.0;
  double get FAVORITOnumeroINGRESSO => _FAVORITOnumeroINGRESSO;
  set FAVORITOnumeroINGRESSO(double value) {
    _FAVORITOnumeroINGRESSO = value;
    prefs.setDouble('ff_FAVORITOnumeroINGRESSO', value);
  }

  double _valortotal = 0.0;
  double get valortotal => _valortotal;
  set valortotal(double value) {
    _valortotal = value;
    prefs.setDouble('ff_valortotal', value);
  }

  double _NotificationTOTAL = 0.0;
  double get NotificationTOTAL => _NotificationTOTAL;
  set NotificationTOTAL(double value) {
    _NotificationTOTAL = value;
    prefs.setDouble('ff_NotificationTOTAL', value);
  }

  double _valorTotalPagamento = 0.0;
  double get valorTotalPagamento => _valorTotalPagamento;
  set valorTotalPagamento(double value) {
    _valorTotalPagamento = value;
    prefs.setDouble('ff_valorTotalPagamento', value);
  }

  double _totalpagamentovendedor = 0.0;
  double get totalpagamentovendedor => _totalpagamentovendedor;
  set totalpagamentovendedor(double value) {
    _totalpagamentovendedor = value;
    prefs.setDouble('ff_totalpagamentovendedor', value);
  }

  int _likes = 0;
  int get likes => _likes;
  set likes(int value) {
    _likes = value;
    prefs.setInt('ff_likes', value);
  }

  List<String> _images = [
    'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/ticketpro-versao-atual-1jv1aa/assets/wic7l4bzi9bc/Bem_Vindo.png',
    'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/ticketpro-versao-atual-1jv1aa/assets/7sf6x2aomog1/7F967426-9D59-4DE4-BF65-5978FEF59577.jpeg'
  ];
  List<String> get images => _images;
  set images(List<String> value) {
    _images = value;
    prefs.setStringList('ff_images', value);
  }

  void addToImages(String value) {
    images.add(value);
    prefs.setStringList('ff_images', _images);
  }

  void removeFromImages(String value) {
    images.remove(value);
    prefs.setStringList('ff_images', _images);
  }

  void removeAtIndexFromImages(int index) {
    images.removeAt(index);
    prefs.setStringList('ff_images', _images);
  }

  void updateImagesAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    images[index] = updateFn(_images[index]);
    prefs.setStringList('ff_images', _images);
  }

  void insertAtIndexInImages(int index, String value) {
    images.insert(index, value);
    prefs.setStringList('ff_images', _images);
  }

  String _metododePagamento = '';
  String get metododePagamento => _metododePagamento;
  set metododePagamento(String value) {
    _metododePagamento = value;
  }

  String _valorTotalCHeckout = '';
  String get valorTotalCHeckout => _valorTotalCHeckout;
  set valorTotalCHeckout(String value) {
    _valorTotalCHeckout = value;
  }

  String _IdClientePagarME = '';
  String get IdClientePagarME => _IdClientePagarME;
  set IdClientePagarME(String value) {
    _IdClientePagarME = value;
    prefs.setString('ff_IdClientePagarME', value);
  }

  String _ChavePixPagarME = '';
  String get ChavePixPagarME => _ChavePixPagarME;
  set ChavePixPagarME(String value) {
    _ChavePixPagarME = value;
  }

  String _QrCodePIXPAGARME = '';
  String get QrCodePIXPAGARME => _QrCodePIXPAGARME;
  set QrCodePIXPAGARME(String value) {
    _QrCodePIXPAGARME = value;
  }

  String _idCobrancaPAGARME = '';
  String get idCobrancaPAGARME => _idCobrancaPAGARME;
  set idCobrancaPAGARME(String value) {
    _idCobrancaPAGARME = value;
  }

  String _idPedidoPagarME = '';
  String get idPedidoPagarME => _idPedidoPagarME;
  set idPedidoPagarME(String value) {
    _idPedidoPagarME = value;
  }

  bool _searchActive2 = false;
  bool get searchActive2 => _searchActive2;
  set searchActive2(bool value) {
    _searchActive2 = value;
  }

  bool _searchActive3 = false;
  bool get searchActive3 => _searchActive3;
  set searchActive3(bool value) {
    _searchActive3 = value;
  }

  String _imageQrCodePagarme = '';
  String get imageQrCodePagarme => _imageQrCodePagarme;
  set imageQrCodePagarme(String value) {
    _imageQrCodePagarme = value;
  }

  String _idPlanoPagarME = '';
  String get idPlanoPagarME => _idPlanoPagarME;
  set idPlanoPagarME(String value) {
    _idPlanoPagarME = value;
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
