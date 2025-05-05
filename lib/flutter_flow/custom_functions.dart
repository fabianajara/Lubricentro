import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/auth/firebase_auth/auth_util.dart';

double? totalCarrito(List<CarritoRecord> listaProductos) {
  if (listaProductos == null || listaProductos.isEmpty) return 0.0;

  double total = 0.0;
  for (var producto in listaProductos) {
    total += producto.totalNeto;
  }
  return total;
}

int citasHoyPendientes2(List<CitasRecord> citas) {
  final hoy = DateTime.now();
  final formato = DateFormat('yyyy-MM-dd');

  return citas.where((cita) {
    final fecha = cita.fecha;
    final estado = cita.estado;

    if (fecha == null || estado == null) return false;

    return estado != 'Completado' &&
        formato.format(fecha) == formato.format(hoy);
  }).length;
}

int citasHoyPendientes(List<DateTime> fechas) {
  final hoy = DateTime.now();
  final formato = DateFormat('yyyy-MM-dd');

  return fechas.where((fecha) {
    return formato.format(fecha) == formato.format(hoy);
  }).length;
}

int citasHoyCompletadas(List<CitasRecord> citas) {
  final hoy = DateTime.now();
  final formato = DateFormat('yyyy-MM-dd');

  return citas.where((cita) {
    final fecha = cita.fecha;
    final estado = cita.estado;

    if (fecha == null || estado == null) return false;

    return estado == 'Completado' &&
        formato.format(fecha) == formato.format(hoy);
  }).length;
}

double ventasTotalesHoy(List<ComprasRecord> compras) {
  final hoy = DateTime.now();
  final formato = DateFormat('yyyy-MM-dd');

  return compras.where((compra) {
    final fecha = compra.fecha;
    return fecha != null && formato.format(fecha) == formato.format(hoy);
  }).fold(0.0, (suma, compra) => suma + (compra.total ?? 0.0));
}

double ventasTotales(List<ComprasRecord> compras) {
  return compras.fold(0.0, (suma, compra) => suma + (compra.total ?? 0.0));
}
