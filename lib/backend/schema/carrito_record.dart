import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CarritoRecord extends FirestoreRecord {
  CarritoRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "productEnCarrito" field.
  DocumentReference? _productEnCarrito;
  DocumentReference? get productEnCarrito => _productEnCarrito;
  bool hasProductEnCarrito() => _productEnCarrito != null;

  // "create_time" field.
  DateTime? _createTime;
  DateTime? get createTime => _createTime;
  bool hasCreateTime() => _createTime != null;

  // "cantidad" field.
  int? _cantidad;
  int get cantidad => _cantidad ?? 0;
  bool hasCantidad() => _cantidad != null;

  // "totalNeto" field.
  double? _totalNeto;
  double get totalNeto => _totalNeto ?? 0.0;
  bool hasTotalNeto() => _totalNeto != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _productEnCarrito = snapshotData['productEnCarrito'] as DocumentReference?;
    _createTime = snapshotData['create_time'] as DateTime?;
    _cantidad = castToType<int>(snapshotData['cantidad']);
    _totalNeto = castToType<double>(snapshotData['totalNeto']);
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('carrito')
          : FirebaseFirestore.instance.collectionGroup('carrito');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('carrito').doc(id);

  static Stream<CarritoRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CarritoRecord.fromSnapshot(s));

  static Future<CarritoRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CarritoRecord.fromSnapshot(s));

  static CarritoRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CarritoRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CarritoRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CarritoRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CarritoRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CarritoRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCarritoRecordData({
  DocumentReference? productEnCarrito,
  DateTime? createTime,
  int? cantidad,
  double? totalNeto,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'productEnCarrito': productEnCarrito,
      'create_time': createTime,
      'cantidad': cantidad,
      'totalNeto': totalNeto,
    }.withoutNulls,
  );

  return firestoreData;
}

class CarritoRecordDocumentEquality implements Equality<CarritoRecord> {
  const CarritoRecordDocumentEquality();

  @override
  bool equals(CarritoRecord? e1, CarritoRecord? e2) {
    return e1?.productEnCarrito == e2?.productEnCarrito &&
        e1?.createTime == e2?.createTime &&
        e1?.cantidad == e2?.cantidad &&
        e1?.totalNeto == e2?.totalNeto;
  }

  @override
  int hash(CarritoRecord? e) => const ListEquality()
      .hash([e?.productEnCarrito, e?.createTime, e?.cantidad, e?.totalNeto]);

  @override
  bool isValidKey(Object? o) => o is CarritoRecord;
}
