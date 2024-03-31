// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class AddressStruct extends FFFirebaseStruct {
  AddressStruct({
    String? compeleteAddress,
    String? postOffice,
    String? tehsile,
    String? disst,
    String? state,
    String? country,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _compeleteAddress = compeleteAddress,
        _postOffice = postOffice,
        _tehsile = tehsile,
        _disst = disst,
        _state = state,
        _country = country,
        super(firestoreUtilData);

  // "CompeleteAddress" field.
  String? _compeleteAddress;
  String get compeleteAddress => _compeleteAddress ?? '';
  set compeleteAddress(String? val) => _compeleteAddress = val;
  bool hasCompeleteAddress() => _compeleteAddress != null;

  // "PostOffice" field.
  String? _postOffice;
  String get postOffice => _postOffice ?? '';
  set postOffice(String? val) => _postOffice = val;
  bool hasPostOffice() => _postOffice != null;

  // "Tehsile" field.
  String? _tehsile;
  String get tehsile => _tehsile ?? '';
  set tehsile(String? val) => _tehsile = val;
  bool hasTehsile() => _tehsile != null;

  // "Disst" field.
  String? _disst;
  String get disst => _disst ?? '';
  set disst(String? val) => _disst = val;
  bool hasDisst() => _disst != null;

  // "State" field.
  String? _state;
  String get state => _state ?? 'Punjab';
  set state(String? val) => _state = val;
  bool hasState() => _state != null;

  // "Country" field.
  String? _country;
  String get country => _country ?? 'Pakistan';
  set country(String? val) => _country = val;
  bool hasCountry() => _country != null;

  static AddressStruct fromMap(Map<String, dynamic> data) => AddressStruct(
        compeleteAddress: data['CompeleteAddress'] as String?,
        postOffice: data['PostOffice'] as String?,
        tehsile: data['Tehsile'] as String?,
        disst: data['Disst'] as String?,
        state: data['State'] as String?,
        country: data['Country'] as String?,
      );

  static AddressStruct? maybeFromMap(dynamic data) =>
      data is Map ? AddressStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'CompeleteAddress': _compeleteAddress,
        'PostOffice': _postOffice,
        'Tehsile': _tehsile,
        'Disst': _disst,
        'State': _state,
        'Country': _country,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'CompeleteAddress': serializeParam(
          _compeleteAddress,
          ParamType.String,
        ),
        'PostOffice': serializeParam(
          _postOffice,
          ParamType.String,
        ),
        'Tehsile': serializeParam(
          _tehsile,
          ParamType.String,
        ),
        'Disst': serializeParam(
          _disst,
          ParamType.String,
        ),
        'State': serializeParam(
          _state,
          ParamType.String,
        ),
        'Country': serializeParam(
          _country,
          ParamType.String,
        ),
      }.withoutNulls;

  static AddressStruct fromSerializableMap(Map<String, dynamic> data) =>
      AddressStruct(
        compeleteAddress: deserializeParam(
          data['CompeleteAddress'],
          ParamType.String,
          false,
        ),
        postOffice: deserializeParam(
          data['PostOffice'],
          ParamType.String,
          false,
        ),
        tehsile: deserializeParam(
          data['Tehsile'],
          ParamType.String,
          false,
        ),
        disst: deserializeParam(
          data['Disst'],
          ParamType.String,
          false,
        ),
        state: deserializeParam(
          data['State'],
          ParamType.String,
          false,
        ),
        country: deserializeParam(
          data['Country'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'AddressStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is AddressStruct &&
        compeleteAddress == other.compeleteAddress &&
        postOffice == other.postOffice &&
        tehsile == other.tehsile &&
        disst == other.disst &&
        state == other.state &&
        country == other.country;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([compeleteAddress, postOffice, tehsile, disst, state, country]);
}

AddressStruct createAddressStruct({
  String? compeleteAddress,
  String? postOffice,
  String? tehsile,
  String? disst,
  String? state,
  String? country,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    AddressStruct(
      compeleteAddress: compeleteAddress,
      postOffice: postOffice,
      tehsile: tehsile,
      disst: disst,
      state: state,
      country: country,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

AddressStruct? updateAddressStruct(
  AddressStruct? address, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    address
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addAddressStructData(
  Map<String, dynamic> firestoreData,
  AddressStruct? address,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (address == null) {
    return;
  }
  if (address.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && address.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final addressData = getAddressFirestoreData(address, forFieldValue);
  final nestedData = addressData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = address.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getAddressFirestoreData(
  AddressStruct? address, [
  bool forFieldValue = false,
]) {
  if (address == null) {
    return {};
  }
  final firestoreData = mapToFirestore(address.toMap());

  // Add any Firestore field values
  address.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getAddressListFirestoreData(
  List<AddressStruct>? addresss,
) =>
    addresss?.map((e) => getAddressFirestoreData(e, true)).toList() ?? [];
