import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TypeRecord extends FirestoreRecord {
  TypeRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  bool hasTitle() => _title != null;

  // "cost" field.
  String? _cost;
  String get cost => _cost ?? '';
  bool hasCost() => _cost != null;

  void _initializeFields() {
    _title = snapshotData['title'] as String?;
    _cost = snapshotData['cost'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('type');

  static Stream<TypeRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TypeRecord.fromSnapshot(s));

  static Future<TypeRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => TypeRecord.fromSnapshot(s));

  static TypeRecord fromSnapshot(DocumentSnapshot snapshot) => TypeRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TypeRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TypeRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TypeRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TypeRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTypeRecordData({
  String? title,
  String? cost,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'title': title,
      'cost': cost,
    }.withoutNulls,
  );

  return firestoreData;
}

class TypeRecordDocumentEquality implements Equality<TypeRecord> {
  const TypeRecordDocumentEquality();

  @override
  bool equals(TypeRecord? e1, TypeRecord? e2) {
    return e1?.title == e2?.title && e1?.cost == e2?.cost;
  }

  @override
  int hash(TypeRecord? e) => const ListEquality().hash([e?.title, e?.cost]);

  @override
  bool isValidKey(Object? o) => o is TypeRecord;
}
