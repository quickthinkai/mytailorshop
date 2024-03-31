import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';

class UserShopRecord extends FirestoreRecord {
  UserShopRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "address" field.
  AddressStruct? _address;
  AddressStruct get address => _address ?? AddressStruct();
  bool hasAddress() => _address != null;

  // "owner" field.
  DocumentReference? _owner;
  DocumentReference? get owner => _owner;
  bool hasOwner() => _owner != null;

  // "created_at" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  // "modified_at" field.
  DateTime? _modifiedAt;
  DateTime? get modifiedAt => _modifiedAt;
  bool hasModifiedAt() => _modifiedAt != null;

  // "archived" field.
  bool? _archived;
  bool get archived => _archived ?? false;
  bool hasArchived() => _archived != null;

  // "default_address" field.
  bool? _defaultAddress;
  bool get defaultAddress => _defaultAddress ?? false;
  bool hasDefaultAddress() => _defaultAddress != null;

  // "ShopName" field.
  String? _shopName;
  String get shopName => _shopName ?? '';
  bool hasShopName() => _shopName != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _address = AddressStruct.maybeFromMap(snapshotData['address']);
    _owner = snapshotData['owner'] as DocumentReference?;
    _createdAt = snapshotData['created_at'] as DateTime?;
    _modifiedAt = snapshotData['modified_at'] as DateTime?;
    _archived = snapshotData['archived'] as bool?;
    _defaultAddress = snapshotData['default_address'] as bool?;
    _shopName = snapshotData['ShopName'] as String?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('UserShop')
          : FirebaseFirestore.instance.collectionGroup('UserShop');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('UserShop').doc(id);

  static Stream<UserShopRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UserShopRecord.fromSnapshot(s));

  static Future<UserShopRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UserShopRecord.fromSnapshot(s));

  static UserShopRecord fromSnapshot(DocumentSnapshot snapshot) =>
      UserShopRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UserShopRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UserShopRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UserShopRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UserShopRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUserShopRecordData({
  AddressStruct? address,
  DocumentReference? owner,
  DateTime? createdAt,
  DateTime? modifiedAt,
  bool? archived,
  bool? defaultAddress,
  String? shopName,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'address': AddressStruct().toMap(),
      'owner': owner,
      'created_at': createdAt,
      'modified_at': modifiedAt,
      'archived': archived,
      'default_address': defaultAddress,
      'ShopName': shopName,
    }.withoutNulls,
  );

  // Handle nested data for "address" field.
  addAddressStructData(firestoreData, address, 'address');

  return firestoreData;
}

class UserShopRecordDocumentEquality implements Equality<UserShopRecord> {
  const UserShopRecordDocumentEquality();

  @override
  bool equals(UserShopRecord? e1, UserShopRecord? e2) {
    return e1?.address == e2?.address &&
        e1?.owner == e2?.owner &&
        e1?.createdAt == e2?.createdAt &&
        e1?.modifiedAt == e2?.modifiedAt &&
        e1?.archived == e2?.archived &&
        e1?.defaultAddress == e2?.defaultAddress &&
        e1?.shopName == e2?.shopName;
  }

  @override
  int hash(UserShopRecord? e) => const ListEquality().hash([
        e?.address,
        e?.owner,
        e?.createdAt,
        e?.modifiedAt,
        e?.archived,
        e?.defaultAddress,
        e?.shopName
      ]);

  @override
  bool isValidKey(Object? o) => o is UserShopRecord;
}
