import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ProductosRecord extends FirestoreRecord {
  ProductosRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "idProducto" field.
  int? _idProducto;
  int get idProducto => _idProducto ?? 0;
  bool hasIdProducto() => _idProducto != null;

  // "nombre" field.
  String? _nombre;
  String get nombre => _nombre ?? '';
  bool hasNombre() => _nombre != null;

  // "descripcion" field.
  String? _descripcion;
  String get descripcion => _descripcion ?? '';
  bool hasDescripcion() => _descripcion != null;

  // "precio" field.
  double? _precio;
  double get precio => _precio ?? 0.0;
  bool hasPrecio() => _precio != null;

  // "categoria_ref" field.
  DocumentReference? _categoriaRef;
  DocumentReference? get categoriaRef => _categoriaRef;
  bool hasCategoriaRef() => _categoriaRef != null;

  // "stock" field.
  int? _stock;
  int get stock => _stock ?? 0;
  bool hasStock() => _stock != null;

  // "imagen_url" field.
  String? _imagenUrl;
  String get imagenUrl => _imagenUrl ?? '';
  bool hasImagenUrl() => _imagenUrl != null;

  void _initializeFields() {
    _idProducto = castToType<int>(snapshotData['idProducto']);
    _nombre = snapshotData['nombre'] as String?;
    _descripcion = snapshotData['descripcion'] as String?;
    _precio = castToType<double>(snapshotData['precio']);
    _categoriaRef = snapshotData['categoria_ref'] as DocumentReference?;
    _stock = castToType<int>(snapshotData['stock']);
    _imagenUrl = snapshotData['imagen_url'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('productos');

  static Stream<ProductosRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ProductosRecord.fromSnapshot(s));

  static Future<ProductosRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ProductosRecord.fromSnapshot(s));

  static ProductosRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ProductosRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ProductosRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ProductosRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ProductosRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ProductosRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createProductosRecordData({
  int? idProducto,
  String? nombre,
  String? descripcion,
  double? precio,
  DocumentReference? categoriaRef,
  int? stock,
  String? imagenUrl,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'idProducto': idProducto,
      'nombre': nombre,
      'descripcion': descripcion,
      'precio': precio,
      'categoria_ref': categoriaRef,
      'stock': stock,
      'imagen_url': imagenUrl,
    }.withoutNulls,
  );

  return firestoreData;
}

class ProductosRecordDocumentEquality implements Equality<ProductosRecord> {
  const ProductosRecordDocumentEquality();

  @override
  bool equals(ProductosRecord? e1, ProductosRecord? e2) {
    return e1?.idProducto == e2?.idProducto &&
        e1?.nombre == e2?.nombre &&
        e1?.descripcion == e2?.descripcion &&
        e1?.precio == e2?.precio &&
        e1?.categoriaRef == e2?.categoriaRef &&
        e1?.stock == e2?.stock &&
        e1?.imagenUrl == e2?.imagenUrl;
  }

  @override
  int hash(ProductosRecord? e) => const ListEquality().hash([
        e?.idProducto,
        e?.nombre,
        e?.descripcion,
        e?.precio,
        e?.categoriaRef,
        e?.stock,
        e?.imagenUrl
      ]);

  @override
  bool isValidKey(Object? o) => o is ProductosRecord;
}
