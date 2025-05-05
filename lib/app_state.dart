import 'package:flutter/material.dart';
import '/backend/backend.dart';
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

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  DocumentReference? _categoriasElegida;
  DocumentReference? get categoriasElegida => _categoriasElegida;
  set categoriasElegida(DocumentReference? value) {
    _categoriasElegida = value;
  }

  DocumentReference? _productoEditar;
  DocumentReference? get productoEditar => _productoEditar;
  set productoEditar(DocumentReference? value) {
    _productoEditar = value;
  }

  DocumentReference? _propietarioVehiculo;
  DocumentReference? get propietarioVehiculo => _propietarioVehiculo;
  set propietarioVehiculo(DocumentReference? value) {
    _propietarioVehiculo = value;
  }

  String _marcaVehiculoElegida = '';
  String get marcaVehiculoElegida => _marcaVehiculoElegida;
  set marcaVehiculoElegida(String value) {
    _marcaVehiculoElegida = value;
  }

  DateTime? _fechaSeleccionada;
  DateTime? get fechaSeleccionada => _fechaSeleccionada;
  set fechaSeleccionada(DateTime? value) {
    _fechaSeleccionada = value;
  }

  DocumentReference? _vehiculoSeleccionado;
  DocumentReference? get vehiculoSeleccionado => _vehiculoSeleccionado;
  set vehiculoSeleccionado(DocumentReference? value) {
    _vehiculoSeleccionado = value;
  }

  String _ServicioElegidoEditarCita = '';
  String get ServicioElegidoEditarCita => _ServicioElegidoEditarCita;
  set ServicioElegidoEditarCita(String value) {
    _ServicioElegidoEditarCita = value;
  }

  DateTime? _fechaSeleccionadaEditar;
  DateTime? get fechaSeleccionadaEditar => _fechaSeleccionadaEditar;
  set fechaSeleccionadaEditar(DateTime? value) {
    _fechaSeleccionadaEditar = value;
  }

  DateTime? _fechaEditar;
  DateTime? get fechaEditar => _fechaEditar;
  set fechaEditar(DateTime? value) {
    _fechaEditar = value;
  }

  DocumentReference? _servicioEditar;
  DocumentReference? get servicioEditar => _servicioEditar;
  set servicioEditar(DocumentReference? value) {
    _servicioEditar = value;
  }

  int _citasCompletadasHoy = 0;
  int get citasCompletadasHoy => _citasCompletadasHoy;
  set citasCompletadasHoy(int value) {
    _citasCompletadasHoy = value;
  }

  int _citasPendientesHoy = 0;
  int get citasPendientesHoy => _citasPendientesHoy;
  set citasPendientesHoy(int value) {
    _citasPendientesHoy = value;
  }
}
