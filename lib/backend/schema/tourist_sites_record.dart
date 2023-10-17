import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TouristSitesRecord extends FirestoreRecord {
  TouristSitesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "Name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "Description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "Location" field.
  String? _location;
  String get location => _location ?? '';
  bool hasLocation() => _location != null;

  // "Image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  // "State" field.
  String? _state;
  String get state => _state ?? '';
  bool hasState() => _state != null;

  // "rating" field.
  double? _rating;
  double get rating => _rating ?? 0.0;
  bool hasRating() => _rating != null;

  void _initializeFields() {
    _name = snapshotData['Name'] as String?;
    _description = snapshotData['Description'] as String?;
    _location = snapshotData['Location'] as String?;
    _image = snapshotData['Image'] as String?;
    _state = snapshotData['State'] as String?;
    _rating = castToType<double>(snapshotData['rating']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('tourist_sites');

  static Stream<TouristSitesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TouristSitesRecord.fromSnapshot(s));

  static Future<TouristSitesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => TouristSitesRecord.fromSnapshot(s));

  static TouristSitesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      TouristSitesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TouristSitesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TouristSitesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TouristSitesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TouristSitesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTouristSitesRecordData({
  String? name,
  String? description,
  String? location,
  String? image,
  String? state,
  double? rating,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Name': name,
      'Description': description,
      'Location': location,
      'Image': image,
      'State': state,
      'rating': rating,
    }.withoutNulls,
  );

  return firestoreData;
}

class TouristSitesRecordDocumentEquality
    implements Equality<TouristSitesRecord> {
  const TouristSitesRecordDocumentEquality();

  @override
  bool equals(TouristSitesRecord? e1, TouristSitesRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.description == e2?.description &&
        e1?.location == e2?.location &&
        e1?.image == e2?.image &&
        e1?.state == e2?.state &&
        e1?.rating == e2?.rating;
  }

  @override
  int hash(TouristSitesRecord? e) => const ListEquality().hash(
      [e?.name, e?.description, e?.location, e?.image, e?.state, e?.rating]);

  @override
  bool isValidKey(Object? o) => o is TouristSitesRecord;
}
