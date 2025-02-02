import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class OrdersRefundRecord extends FirestoreRecord {
  OrdersRefundRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "userRef" field.
  DocumentReference? _userRef;
  DocumentReference? get userRef => _userRef;
  bool hasUserRef() => _userRef != null;

  // "phone" field.
  String? _phone;
  String get phone => _phone ?? '';
  bool hasPhone() => _phone != null;

  // "kaspi" field.
  String? _kaspi;
  String get kaspi => _kaspi ?? '';
  bool hasKaspi() => _kaspi != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "created" field.
  DateTime? _created;
  DateTime? get created => _created;
  bool hasCreated() => _created != null;

  // "finished" field.
  DateTime? _finished;
  DateTime? get finished => _finished;
  bool hasFinished() => _finished != null;

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  bool hasId() => _id != null;

  // "value" field.
  String? _value;
  String get value => _value ?? '';
  bool hasValue() => _value != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  bool hasStatus() => _status != null;

  void _initializeFields() {
    _userRef = snapshotData['userRef'] as DocumentReference?;
    _phone = snapshotData['phone'] as String?;
    _kaspi = snapshotData['kaspi'] as String?;
    _name = snapshotData['name'] as String?;
    _created = snapshotData['created'] as DateTime?;
    _finished = snapshotData['finished'] as DateTime?;
    _id = snapshotData['id'] as String?;
    _value = snapshotData['value'] as String?;
    _status = snapshotData['status'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('ordersRefund');

  static Stream<OrdersRefundRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => OrdersRefundRecord.fromSnapshot(s));

  static Future<OrdersRefundRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => OrdersRefundRecord.fromSnapshot(s));

  static OrdersRefundRecord fromSnapshot(DocumentSnapshot snapshot) =>
      OrdersRefundRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static OrdersRefundRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      OrdersRefundRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'OrdersRefundRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is OrdersRefundRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createOrdersRefundRecordData({
  DocumentReference? userRef,
  String? phone,
  String? kaspi,
  String? name,
  DateTime? created,
  DateTime? finished,
  String? id,
  String? value,
  String? status,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'userRef': userRef,
      'phone': phone,
      'kaspi': kaspi,
      'name': name,
      'created': created,
      'finished': finished,
      'id': id,
      'value': value,
      'status': status,
    }.withoutNulls,
  );

  return firestoreData;
}

class OrdersRefundRecordDocumentEquality
    implements Equality<OrdersRefundRecord> {
  const OrdersRefundRecordDocumentEquality();

  @override
  bool equals(OrdersRefundRecord? e1, OrdersRefundRecord? e2) {
    return e1?.userRef == e2?.userRef &&
        e1?.phone == e2?.phone &&
        e1?.kaspi == e2?.kaspi &&
        e1?.name == e2?.name &&
        e1?.created == e2?.created &&
        e1?.finished == e2?.finished &&
        e1?.id == e2?.id &&
        e1?.value == e2?.value &&
        e1?.status == e2?.status;
  }

  @override
  int hash(OrdersRefundRecord? e) => const ListEquality().hash([
        e?.userRef,
        e?.phone,
        e?.kaspi,
        e?.name,
        e?.created,
        e?.finished,
        e?.id,
        e?.value,
        e?.status
      ]);

  @override
  bool isValidKey(Object? o) => o is OrdersRefundRecord;
}
