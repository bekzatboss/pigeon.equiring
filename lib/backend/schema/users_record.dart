import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UsersRecord extends FirestoreRecord {
  UsersRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "ballance" field.
  String? _ballance;
  String get ballance => _ballance ?? '';
  bool hasBallance() => _ballance != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "choosendeparture" field.
  String? _choosendeparture;
  String get choosendeparture => _choosendeparture ?? '';
  bool hasChoosendeparture() => _choosendeparture != null;

  // "choosendestination" field.
  String? _choosendestination;
  String get choosendestination => _choosendestination ?? '';
  bool hasChoosendestination() => _choosendestination != null;

  // "isReadyToPick" field.
  bool? _isReadyToPick;
  bool get isReadyToPick => _isReadyToPick ?? false;
  bool hasIsReadyToPick() => _isReadyToPick != null;

  // "isadmin" field.
  bool? _isadmin;
  bool get isadmin => _isadmin ?? false;
  bool hasIsadmin() => _isadmin != null;

  void _initializeFields() {
    _displayName = snapshotData['display_name'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _email = snapshotData['email'] as String?;
    _ballance = snapshotData['ballance'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _uid = snapshotData['uid'] as String?;
    _choosendeparture = snapshotData['choosendeparture'] as String?;
    _choosendestination = snapshotData['choosendestination'] as String?;
    _isReadyToPick = snapshotData['isReadyToPick'] as bool?;
    _isadmin = snapshotData['isadmin'] as bool?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('users');

  static Stream<UsersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UsersRecord.fromSnapshot(s));

  static Future<UsersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UsersRecord.fromSnapshot(s));

  static UsersRecord fromSnapshot(DocumentSnapshot snapshot) => UsersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UsersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UsersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UsersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UsersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUsersRecordData({
  String? displayName,
  DateTime? createdTime,
  String? phoneNumber,
  String? email,
  String? ballance,
  String? photoUrl,
  String? uid,
  String? choosendeparture,
  String? choosendestination,
  bool? isReadyToPick,
  bool? isadmin,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'display_name': displayName,
      'created_time': createdTime,
      'phone_number': phoneNumber,
      'email': email,
      'ballance': ballance,
      'photo_url': photoUrl,
      'uid': uid,
      'choosendeparture': choosendeparture,
      'choosendestination': choosendestination,
      'isReadyToPick': isReadyToPick,
      'isadmin': isadmin,
    }.withoutNulls,
  );

  return firestoreData;
}

class UsersRecordDocumentEquality implements Equality<UsersRecord> {
  const UsersRecordDocumentEquality();

  @override
  bool equals(UsersRecord? e1, UsersRecord? e2) {
    return e1?.displayName == e2?.displayName &&
        e1?.createdTime == e2?.createdTime &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.email == e2?.email &&
        e1?.ballance == e2?.ballance &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.uid == e2?.uid &&
        e1?.choosendeparture == e2?.choosendeparture &&
        e1?.choosendestination == e2?.choosendestination &&
        e1?.isReadyToPick == e2?.isReadyToPick &&
        e1?.isadmin == e2?.isadmin;
  }

  @override
  int hash(UsersRecord? e) => const ListEquality().hash([
        e?.displayName,
        e?.createdTime,
        e?.phoneNumber,
        e?.email,
        e?.ballance,
        e?.photoUrl,
        e?.uid,
        e?.choosendeparture,
        e?.choosendestination,
        e?.isReadyToPick,
        e?.isadmin
      ]);

  @override
  bool isValidKey(Object? o) => o is UsersRecord;
}
