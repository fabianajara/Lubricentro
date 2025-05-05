import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class VehiculosRecord extends FirestoreRecord {
  VehiculosRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "marca" field.
  String? _marca;
  String get marca => _marca ?? '';
  bool hasMarca() => _marca != null;

  // "modelo" field.
  String? _modelo;
  String get modelo => _modelo ?? '';
  bool hasModelo() => _modelo != null;

  // "anio" field.
  int? _anio;
  int get anio => _anio ?? 0;
  bool hasAnio() => _anio != null;

  // "placa" field.
  String? _placa;
  String get placa => _placa ?? '';
  bool hasPlaca() => _placa != null;

  // "tipo" field.
  String? _tipo;
  String get tipo => _tipo ?? '';
  bool hasTipo() => _tipo != null;

  // "cliente_ref" field.
  DocumentReference? _clienteRef;
  DocumentReference? get clienteRef => _clienteRef;
  bool hasClienteRef() => _clienteRef != null;

  // "imagen_url" field.
  String? _imagenUrl;
  String get imagenUrl => _imagenUrl ?? '';
  bool hasImagenUrl() => _imagenUrl != null;

  // "notas" field.
  String? _notas;
  String get notas => _notas ?? '';
  bool hasNotas() => _notas != null;

  void _initializeFields() {
    _marca = snapshotData['marca'] as String?;
    _modelo = snapshotData['modelo'] as String?;
    _anio = castToType<int>(snapshotData['anio']);
    _placa = snapshotData['placa'] as String?;
    _tipo = snapshotData['tipo'] as String?;
    _clienteRef = snapshotData['cliente_ref'] as DocumentReference?;
    _imagenUrl = snapshotData['imagen_url'] as String?;
    _notas = snapshotData['notas'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('vehiculos');

  static Stream<VehiculosRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => VehiculosRecord.fromSnapshot(s));

  static Future<VehiculosRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => VehiculosRecord.fromSnapshot(s));

  static VehiculosRecord fromSnapshot(DocumentSnapshot snapshot) =>
      VehiculosRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static VehiculosRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      VehiculosRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'VehiculosRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is VehiculosRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createVehiculosRecordData({
  String? marca,
  String? modelo,
  int? anio,
  String? placa,
  String? tipo,
  DocumentReference? clienteRef,
  String? imagenUrl,
  String? notas,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'marca': marca,
      'modelo': modelo,
      'anio': anio,
      'placa': placa,
      'tipo': tipo,
      'cliente_ref': clienteRef,
      'imagen_url': imagenUrl,
      'notas': notas,
    }.withoutNulls,
  );

  return firestoreData;
}

class VehiculosRecordDocumentEquality implements Equality<VehiculosRecord> {
  const VehiculosRecordDocumentEquality();

  @override
  bool equals(VehiculosRecord? e1, VehiculosRecord? e2) {
    return e1?.marca == e2?.marca &&
        e1?.modelo == e2?.modelo &&
        e1?.anio == e2?.anio &&
        e1?.placa == e2?.placa &&
        e1?.tipo == e2?.tipo &&
        e1?.clienteRef == e2?.clienteRef &&
        e1?.imagenUrl == e2?.imagenUrl &&
        e1?.notas == e2?.notas;
  }

  @override
  int hash(VehiculosRecord? e) => const ListEquality().hash([
        e?.marca,
        e?.modelo,
        e?.anio,
        e?.placa,
        e?.tipo,
        e?.clienteRef,
        e?.imagenUrl,
        e?.notas
      ]);

  @override
  bool isValidKey(Object? o) => o is VehiculosRecord;
}
