import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ToursRecord extends FirestoreRecord {
  ToursRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "tour_site" field.
  String? _tourSite;
  String get tourSite => _tourSite ?? '';
  bool hasTourSite() => _tourSite != null;

  // "tourist" field.
  DocumentReference? _tourist;
  DocumentReference? get tourist => _tourist;
  bool hasTourist() => _tourist != null;

  // "day_time" field.
  DateTime? _dayTime;
  DateTime? get dayTime => _dayTime;
  bool hasDayTime() => _dayTime != null;

  // "N0_of_people" field.
  int? _n0OfPeople;
  int get n0OfPeople => _n0OfPeople ?? 0;
  bool hasN0OfPeople() => _n0OfPeople != null;

  // "state" field.
  String? _state;
  String get state => _state ?? '';
  bool hasState() => _state != null;

  // "accepted" field.
  bool? _accepted;
  bool get accepted => _accepted ?? false;
  bool hasAccepted() => _accepted != null;

  // "tour_guide" field.
  DocumentReference? _tourGuide;
  DocumentReference? get tourGuide => _tourGuide;
  bool hasTourGuide() => _tourGuide != null;

  // "completed" field.
  bool? _completed;
  bool get completed => _completed ?? false;
  bool hasCompleted() => _completed != null;

  void _initializeFields() {
    _tourSite = snapshotData['tour_site'] as String?;
    _tourist = snapshotData['tourist'] as DocumentReference?;
    _dayTime = snapshotData['day_time'] as DateTime?;
    _n0OfPeople = castToType<int>(snapshotData['N0_of_people']);
    _state = snapshotData['state'] as String?;
    _accepted = snapshotData['accepted'] as bool?;
    _tourGuide = snapshotData['tour_guide'] as DocumentReference?;
    _completed = snapshotData['completed'] as bool?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Tours');

  static Stream<ToursRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ToursRecord.fromSnapshot(s));

  static Future<ToursRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ToursRecord.fromSnapshot(s));

  static ToursRecord fromSnapshot(DocumentSnapshot snapshot) => ToursRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ToursRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ToursRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ToursRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ToursRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createToursRecordData({
  String? tourSite,
  DocumentReference? tourist,
  DateTime? dayTime,
  int? n0OfPeople,
  String? state,
  bool? accepted,
  DocumentReference? tourGuide,
  bool? completed,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'tour_site': tourSite,
      'tourist': tourist,
      'day_time': dayTime,
      'N0_of_people': n0OfPeople,
      'state': state,
      'accepted': accepted,
      'tour_guide': tourGuide,
      'completed': completed,
    }.withoutNulls,
  );

  return firestoreData;
}

class ToursRecordDocumentEquality implements Equality<ToursRecord> {
  const ToursRecordDocumentEquality();

  @override
  bool equals(ToursRecord? e1, ToursRecord? e2) {
    return e1?.tourSite == e2?.tourSite &&
        e1?.tourist == e2?.tourist &&
        e1?.dayTime == e2?.dayTime &&
        e1?.n0OfPeople == e2?.n0OfPeople &&
        e1?.state == e2?.state &&
        e1?.accepted == e2?.accepted &&
        e1?.tourGuide == e2?.tourGuide &&
        e1?.completed == e2?.completed;
  }

  @override
  int hash(ToursRecord? e) => const ListEquality().hash([
        e?.tourSite,
        e?.tourist,
        e?.dayTime,
        e?.n0OfPeople,
        e?.state,
        e?.accepted,
        e?.tourGuide,
        e?.completed
      ]);

  @override
  bool isValidKey(Object? o) => o is ToursRecord;
}
