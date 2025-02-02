import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AppinfoRecord extends FirestoreRecord {
  AppinfoRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "banner" field.
  String? _banner;
  String get banner => _banner ?? '';
  bool hasBanner() => _banner != null;

  // "type" field.
  String? _type;
  String get type => _type ?? '';
  bool hasType() => _type != null;

  void _initializeFields() {
    _banner = snapshotData['banner'] as String?;
    _type = snapshotData['type'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('appinfo');

  static Stream<AppinfoRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AppinfoRecord.fromSnapshot(s));

  static Future<AppinfoRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => AppinfoRecord.fromSnapshot(s));

  static AppinfoRecord fromSnapshot(DocumentSnapshot snapshot) =>
      AppinfoRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AppinfoRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AppinfoRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AppinfoRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AppinfoRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAppinfoRecordData({
  String? banner,
  String? type,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'banner': banner,
      'type': type,
    }.withoutNulls,
  );

  return firestoreData;
}

class AppinfoRecordDocumentEquality implements Equality<AppinfoRecord> {
  const AppinfoRecordDocumentEquality();

  @override
  bool equals(AppinfoRecord? e1, AppinfoRecord? e2) {
    return e1?.banner == e2?.banner && e1?.type == e2?.type;
  }

  @override
  int hash(AppinfoRecord? e) => const ListEquality().hash([e?.banner, e?.type]);

  @override
  bool isValidKey(Object? o) => o is AppinfoRecord;
}
