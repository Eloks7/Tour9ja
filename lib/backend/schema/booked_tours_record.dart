import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class BookedToursRecord extends FirestoreRecord {
  BookedToursRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "tour_site" field.
  String? _tourSite;
  String get tourSite => _tourSite ?? '';
  bool hasTourSite() => _tourSite != null;

  // "scheduled_time" field.
  DateTime? _scheduledTime;
  DateTime? get scheduledTime => _scheduledTime;
  bool hasScheduledTime() => _scheduledTime != null;

  // "no_of_people" field.
  int? _noOfPeople;
  int get noOfPeople => _noOfPeople ?? 0;
  bool hasNoOfPeople() => _noOfPeople != null;

  // "state" field.
  String? _state;
  String get state => _state ?? '';
  bool hasState() => _state != null;

  // "accepted" field.
  bool? _accepted;
  bool get accepted => _accepted ?? false;
  bool hasAccepted() => _accepted != null;

  // "completed" field.
  bool? _completed;
  bool get completed => _completed ?? false;
  bool hasCompleted() => _completed != null;

  void _initializeFields() {
    _tourSite = snapshotData['tour_site'] as String?;
    _scheduledTime = snapshotData['scheduled_time'] as DateTime?;
    _noOfPeople = castToType<int>(snapshotData['no_of_people']);
    _state = snapshotData['state'] as String?;
    _accepted = snapshotData['accepted'] as bool?;
    _completed = snapshotData['completed'] as bool?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('booked_tours');

  static Stream<BookedToursRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => BookedToursRecord.fromSnapshot(s));

  static Future<BookedToursRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => BookedToursRecord.fromSnapshot(s));

  static BookedToursRecord fromSnapshot(DocumentSnapshot snapshot) =>
      BookedToursRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static BookedToursRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      BookedToursRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'BookedToursRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is BookedToursRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createBookedToursRecordData({
  String? tourSite,
  DateTime? scheduledTime,
  int? noOfPeople,
  String? state,
  bool? accepted,
  bool? completed,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'tour_site': tourSite,
      'scheduled_time': scheduledTime,
      'no_of_people': noOfPeople,
      'state': state,
      'accepted': accepted,
      'completed': completed,
    }.withoutNulls,
  );

  return firestoreData;
}

class BookedToursRecordDocumentEquality implements Equality<BookedToursRecord> {
  const BookedToursRecordDocumentEquality();

  @override
  bool equals(BookedToursRecord? e1, BookedToursRecord? e2) {
    return e1?.tourSite == e2?.tourSite &&
        e1?.scheduledTime == e2?.scheduledTime &&
        e1?.noOfPeople == e2?.noOfPeople &&
        e1?.state == e2?.state &&
        e1?.accepted == e2?.accepted &&
        e1?.completed == e2?.completed;
  }

  @override
  int hash(BookedToursRecord? e) => const ListEquality().hash([
        e?.tourSite,
        e?.scheduledTime,
        e?.noOfPeople,
        e?.state,
        e?.accepted,
        e?.completed
      ]);

  @override
  bool isValidKey(Object? o) => o is BookedToursRecord;
}
