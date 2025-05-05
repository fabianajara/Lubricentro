import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CitasRecord extends FirestoreRecord {
  CitasRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "idCita" field.
  int? _idCita;
  int get idCita => _idCita ?? 0;
  bool hasIdCita() => _idCita != null;

  // "usuario_ref" field.
  DocumentReference? _usuarioRef;
  DocumentReference? get usuarioRef => _usuarioRef;
  bool hasUsuarioRef() => _usuarioRef != null;

  // "fecha" field.
  DateTime? _fecha;
  DateTime? get fecha => _fecha;
  bool hasFecha() => _fecha != null;

  // "estado" field.
  String? _estado;
  String get estado => _estado ?? '';
  bool hasEstado() => _estado != null;

  // "servicio_ref" field.
  DocumentReference? _servicioRef;
  DocumentReference? get servicioRef => _servicioRef;
  bool hasServicioRef() => _servicioRef != null;

  // "numPlaca" field.
  String? _numPlaca;
  String get numPlaca => _numPlaca ?? '';
  bool hasNumPlaca() => _numPlaca != null;

  // "marca" field.
  String? _marca;
  String get marca => _marca ?? '';
  bool hasMarca() => _marca != null;

  // "modelo" field.
  String? _modelo;
  String get modelo => _modelo ?? '';
  bool hasModelo() => _modelo != null;

  // "vehiculo_ref" field.
  DocumentReference? _vehiculoRef;
  DocumentReference? get vehiculoRef => _vehiculoRef;
  bool hasVehiculoRef() => _vehiculoRef != null;

  void _initializeFields() {
    _idCita = castToType<int>(snapshotData['idCita']);
    _usuarioRef = snapshotData['usuario_ref'] as DocumentReference?;
    _fecha = snapshotData['fecha'] as DateTime?;
    _estado = snapshotData['estado'] as String?;
    _servicioRef = snapshotData['servicio_ref'] as DocumentReference?;
    _numPlaca = snapshotData['numPlaca'] as String?;
    _marca = snapshotData['marca'] as String?;
    _modelo = snapshotData['modelo'] as String?;
    _vehiculoRef = snapshotData['vehiculo_ref'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('citas');

  static Stream<CitasRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CitasRecord.fromSnapshot(s));

  static Future<CitasRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CitasRecord.fromSnapshot(s));

  static CitasRecord fromSnapshot(DocumentSnapshot snapshot) => CitasRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CitasRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CitasRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CitasRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CitasRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCitasRecordData({
  int? idCita,
  DocumentReference? usuarioRef,
  DateTime? fecha,
  String? estado,
  DocumentReference? servicioRef,
  String? numPlaca,
  String? marca,
  String? modelo,
  DocumentReference? vehiculoRef,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'idCita': idCita,
      'usuario_ref': usuarioRef,
      'fecha': fecha,
      'estado': estado,
      'servicio_ref': servicioRef,
      'numPlaca': numPlaca,
      'marca': marca,
      'modelo': modelo,
      'vehiculo_ref': vehiculoRef,
    }.withoutNulls,
  );

  return firestoreData;
}

class CitasRecordDocumentEquality implements Equality<CitasRecord> {
  const CitasRecordDocumentEquality();

  @override
  bool equals(CitasRecord? e1, CitasRecord? e2) {
    return e1?.idCita == e2?.idCita &&
        e1?.usuarioRef == e2?.usuarioRef &&
        e1?.fecha == e2?.fecha &&
        e1?.estado == e2?.estado &&
        e1?.servicioRef == e2?.servicioRef &&
        e1?.numPlaca == e2?.numPlaca &&
        e1?.marca == e2?.marca &&
        e1?.modelo == e2?.modelo &&
        e1?.vehiculoRef == e2?.vehiculoRef;
  }

  @override
  int hash(CitasRecord? e) => const ListEquality().hash([
        e?.idCita,
        e?.usuarioRef,
        e?.fecha,
        e?.estado,
        e?.servicioRef,
        e?.numPlaca,
        e?.marca,
        e?.modelo,
        e?.vehiculoRef
      ]);

  @override
  bool isValidKey(Object? o) => o is CitasRecord;
}
