import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PackageRecord extends FirestoreRecord {
  PackageRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "departure" field.
  String? _departure;
  String get departure => _departure ?? '';
  bool hasDeparture() => _departure != null;

  // "destination" field.
  String? _destination;
  String get destination => _destination ?? '';
  bool hasDestination() => _destination != null;

  // "userRef" field.
  DocumentReference? _userRef;
  DocumentReference? get userRef => _userRef;
  bool hasUserRef() => _userRef != null;

  // "created" field.
  DateTime? _created;
  DateTime? get created => _created;
  bool hasCreated() => _created != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  bool hasStatus() => _status != null;

  // "typeTitle" field.
  String? _typeTitle;
  String get typeTitle => _typeTitle ?? '';
  bool hasTypeTitle() => _typeTitle != null;

  // "typeCost" field.
  String? _typeCost;
  String get typeCost => _typeCost ?? '';
  bool hasTypeCost() => _typeCost != null;

  // "userPhone" field.
  String? _userPhone;
  String get userPhone => _userPhone ?? '';
  bool hasUserPhone() => _userPhone != null;

  // "userName" field.
  String? _userName;
  String get userName => _userName ?? '';
  bool hasUserName() => _userName != null;

  // "pickerUserRef" field.
  DocumentReference? _pickerUserRef;
  DocumentReference? get pickerUserRef => _pickerUserRef;
  bool hasPickerUserRef() => _pickerUserRef != null;

  // "finished" field.
  DateTime? _finished;
  DateTime? get finished => _finished;
  bool hasFinished() => _finished != null;

  void _initializeFields() {
    _departure = snapshotData['departure'] as String?;
    _destination = snapshotData['destination'] as String?;
    _userRef = snapshotData['userRef'] as DocumentReference?;
    _created = snapshotData['created'] as DateTime?;
    _status = snapshotData['status'] as String?;
    _typeTitle = snapshotData['typeTitle'] as String?;
    _typeCost = snapshotData['typeCost'] as String?;
    _userPhone = snapshotData['userPhone'] as String?;
    _userName = snapshotData['userName'] as String?;
    _pickerUserRef = snapshotData['pickerUserRef'] as DocumentReference?;
    _finished = snapshotData['finished'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('package');

  static Stream<PackageRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PackageRecord.fromSnapshot(s));

  static Future<PackageRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PackageRecord.fromSnapshot(s));

  static PackageRecord fromSnapshot(DocumentSnapshot snapshot) =>
      PackageRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PackageRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PackageRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PackageRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PackageRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPackageRecordData({
  String? departure,
  String? destination,
  DocumentReference? userRef,
  DateTime? created,
  String? status,
  String? typeTitle,
  String? typeCost,
  String? userPhone,
  String? userName,
  DocumentReference? pickerUserRef,
  DateTime? finished,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'departure': departure,
      'destination': destination,
      'userRef': userRef,
      'created': created,
      'status': status,
      'typeTitle': typeTitle,
      'typeCost': typeCost,
      'userPhone': userPhone,
      'userName': userName,
      'pickerUserRef': pickerUserRef,
      'finished': finished,
    }.withoutNulls,
  );

  return firestoreData;
}

class PackageRecordDocumentEquality implements Equality<PackageRecord> {
  const PackageRecordDocumentEquality();

  @override
  bool equals(PackageRecord? e1, PackageRecord? e2) {
    return e1?.departure == e2?.departure &&
        e1?.destination == e2?.destination &&
        e1?.userRef == e2?.userRef &&
        e1?.created == e2?.created &&
        e1?.status == e2?.status &&
        e1?.typeTitle == e2?.typeTitle &&
        e1?.typeCost == e2?.typeCost &&
        e1?.userPhone == e2?.userPhone &&
        e1?.userName == e2?.userName &&
        e1?.pickerUserRef == e2?.pickerUserRef &&
        e1?.finished == e2?.finished;
  }

  @override
  int hash(PackageRecord? e) => const ListEquality().hash([
        e?.departure,
        e?.destination,
        e?.userRef,
        e?.created,
        e?.status,
        e?.typeTitle,
        e?.typeCost,
        e?.userPhone,
        e?.userName,
        e?.pickerUserRef,
        e?.finished
      ]);

  @override
  bool isValidKey(Object? o) => o is PackageRecord;
}
