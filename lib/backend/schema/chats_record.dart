import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ChatsRecord extends FirestoreRecord {
  ChatsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "createdTime" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "lastActionTime" field.
  DateTime? _lastActionTime;
  DateTime? get lastActionTime => _lastActionTime;
  bool hasLastActionTime() => _lastActionTime != null;

  // "lastMessageText" field.
  String? _lastMessageText;
  String get lastMessageText => _lastMessageText ?? '';
  bool hasLastMessageText() => _lastMessageText != null;

  // "chatMembersName" field.
  List<String>? _chatMembersName;
  List<String> get chatMembersName => _chatMembersName ?? const [];
  bool hasChatMembersName() => _chatMembersName != null;

  // "chatMembersRef" field.
  List<DocumentReference>? _chatMembersRef;
  List<DocumentReference> get chatMembersRef => _chatMembersRef ?? const [];
  bool hasChatMembersRef() => _chatMembersRef != null;

  void _initializeFields() {
    _createdTime = snapshotData['createdTime'] as DateTime?;
    _lastActionTime = snapshotData['lastActionTime'] as DateTime?;
    _lastMessageText = snapshotData['lastMessageText'] as String?;
    _chatMembersName = getDataList(snapshotData['chatMembersName']);
    _chatMembersRef = getDataList(snapshotData['chatMembersRef']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('chats');

  static Stream<ChatsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ChatsRecord.fromSnapshot(s));

  static Future<ChatsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ChatsRecord.fromSnapshot(s));

  static ChatsRecord fromSnapshot(DocumentSnapshot snapshot) => ChatsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ChatsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ChatsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ChatsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ChatsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createChatsRecordData({
  DateTime? createdTime,
  DateTime? lastActionTime,
  String? lastMessageText,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'createdTime': createdTime,
      'lastActionTime': lastActionTime,
      'lastMessageText': lastMessageText,
    }.withoutNulls,
  );

  return firestoreData;
}

class ChatsRecordDocumentEquality implements Equality<ChatsRecord> {
  const ChatsRecordDocumentEquality();

  @override
  bool equals(ChatsRecord? e1, ChatsRecord? e2) {
    const listEquality = ListEquality();
    return e1?.createdTime == e2?.createdTime &&
        e1?.lastActionTime == e2?.lastActionTime &&
        e1?.lastMessageText == e2?.lastMessageText &&
        listEquality.equals(e1?.chatMembersName, e2?.chatMembersName) &&
        listEquality.equals(e1?.chatMembersRef, e2?.chatMembersRef);
  }

  @override
  int hash(ChatsRecord? e) => const ListEquality().hash([
        e?.createdTime,
        e?.lastActionTime,
        e?.lastMessageText,
        e?.chatMembersName,
        e?.chatMembersRef
      ]);

  @override
  bool isValidKey(Object? o) => o is ChatsRecord;
}
