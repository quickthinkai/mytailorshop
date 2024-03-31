import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SettingsRecord extends FirestoreRecord {
  SettingsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "ShopName" field.
  String? _shopName;
  String get shopName => _shopName ?? '';
  bool hasShopName() => _shopName != null;

  // "FullName" field.
  String? _fullName;
  String get fullName => _fullName ?? '';
  bool hasFullName() => _fullName != null;

  // "PhoneNumber" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "ShopAddress" field.
  String? _shopAddress;
  String get shopAddress => _shopAddress ?? '';
  bool hasShopAddress() => _shopAddress != null;

  // "UserId" field.
  DocumentReference? _userId;
  DocumentReference? get userId => _userId;
  bool hasUserId() => _userId != null;

  // "ExpertSize" field.
  int? _expertSize;
  int get expertSize => _expertSize ?? 0;
  bool hasExpertSize() => _expertSize != null;

  void _initializeFields() {
    _shopName = snapshotData['ShopName'] as String?;
    _fullName = snapshotData['FullName'] as String?;
    _phoneNumber = snapshotData['PhoneNumber'] as String?;
    _shopAddress = snapshotData['ShopAddress'] as String?;
    _userId = snapshotData['UserId'] as DocumentReference?;
    _expertSize = castToType<int>(snapshotData['ExpertSize']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Settings');

  static Stream<SettingsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => SettingsRecord.fromSnapshot(s));

  static Future<SettingsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => SettingsRecord.fromSnapshot(s));

  static SettingsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      SettingsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static SettingsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      SettingsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'SettingsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is SettingsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createSettingsRecordData({
  String? shopName,
  String? fullName,
  String? phoneNumber,
  String? shopAddress,
  DocumentReference? userId,
  int? expertSize,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'ShopName': shopName,
      'FullName': fullName,
      'PhoneNumber': phoneNumber,
      'ShopAddress': shopAddress,
      'UserId': userId,
      'ExpertSize': expertSize,
    }.withoutNulls,
  );

  return firestoreData;
}

class SettingsRecordDocumentEquality implements Equality<SettingsRecord> {
  const SettingsRecordDocumentEquality();

  @override
  bool equals(SettingsRecord? e1, SettingsRecord? e2) {
    return e1?.shopName == e2?.shopName &&
        e1?.fullName == e2?.fullName &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.shopAddress == e2?.shopAddress &&
        e1?.userId == e2?.userId &&
        e1?.expertSize == e2?.expertSize;
  }

  @override
  int hash(SettingsRecord? e) => const ListEquality().hash([
        e?.shopName,
        e?.fullName,
        e?.phoneNumber,
        e?.shopAddress,
        e?.userId,
        e?.expertSize
      ]);

  @override
  bool isValidKey(Object? o) => o is SettingsRecord;
}
