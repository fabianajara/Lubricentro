import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ComprasRecord extends FirestoreRecord {
  ComprasRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "correoUsuario" field.
  String? _correoUsuario;
  String get correoUsuario => _correoUsuario ?? '';
  bool hasCorreoUsuario() => _correoUsuario != null;

  // "usuarioReferencia" field.
  DocumentReference? _usuarioReferencia;
  DocumentReference? get usuarioReferencia => _usuarioReferencia;
  bool hasUsuarioReferencia() => _usuarioReferencia != null;

  // "subtotal" field.
  double? _subtotal;
  double get subtotal => _subtotal ?? 0.0;
  bool hasSubtotal() => _subtotal != null;

  // "impuesto" field.
  double? _impuesto;
  double get impuesto => _impuesto ?? 0.0;
  bool hasImpuesto() => _impuesto != null;

  // "total" field.
  double? _total;
  double get total => _total ?? 0.0;
  bool hasTotal() => _total != null;

  // "fecha" field.
  DateTime? _fecha;
  DateTime? get fecha => _fecha;
  bool hasFecha() => _fecha != null;

  void _initializeFields() {
    _correoUsuario = snapshotData['correoUsuario'] as String?;
    _usuarioReferencia =
        snapshotData['usuarioReferencia'] as DocumentReference?;
    _subtotal = castToType<double>(snapshotData['subtotal']);
    _impuesto = castToType<double>(snapshotData['impuesto']);
    _total = castToType<double>(snapshotData['total']);
    _fecha = snapshotData['fecha'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('compras');

  static Stream<ComprasRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ComprasRecord.fromSnapshot(s));

  static Future<ComprasRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ComprasRecord.fromSnapshot(s));

  static ComprasRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ComprasRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ComprasRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ComprasRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ComprasRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ComprasRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createComprasRecordData({
  String? correoUsuario,
  DocumentReference? usuarioReferencia,
  double? subtotal,
  double? impuesto,
  double? total,
  DateTime? fecha,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'correoUsuario': correoUsuario,
      'usuarioReferencia': usuarioReferencia,
      'subtotal': subtotal,
      'impuesto': impuesto,
      'total': total,
      'fecha': fecha,
    }.withoutNulls,
  );

  return firestoreData;
}

class ComprasRecordDocumentEquality implements Equality<ComprasRecord> {
  const ComprasRecordDocumentEquality();

  @override
  bool equals(ComprasRecord? e1, ComprasRecord? e2) {
    return e1?.correoUsuario == e2?.correoUsuario &&
        e1?.usuarioReferencia == e2?.usuarioReferencia &&
        e1?.subtotal == e2?.subtotal &&
        e1?.impuesto == e2?.impuesto &&
        e1?.total == e2?.total &&
        e1?.fecha == e2?.fecha;
  }

  @override
  int hash(ComprasRecord? e) => const ListEquality().hash([
        e?.correoUsuario,
        e?.usuarioReferencia,
        e?.subtotal,
        e?.impuesto,
        e?.total,
        e?.fecha
      ]);

  @override
  bool isValidKey(Object? o) => o is ComprasRecord;
}
