// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:test_me_first/classes/misc/null_safety.dart';

class TeacherDocument {
  String pan;
  String aadhar;
  String epic; //EPIC Number
  int ac;
  int part;
  int serial;

  TeacherDocument({
    required this.pan,
    required this.aadhar,
    required this.epic,
    required this.ac,
    required this.part,
    required this.serial,
  });

  TeacherDocument copyWith({
    String? pan,
    String? aadhar,
    String? epic,
    int? ac,
    int? part,
    int? serial,
  }) {
    return TeacherDocument(
      pan: pan ?? this.pan,
      aadhar: aadhar ?? this.aadhar,
      epic: epic ?? this.epic,
      ac: ac ?? this.ac,
      part: part ?? this.part,
      serial: serial ?? this.serial,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'pan': pan,
      'aadhar': aadhar,
      'epic': epic,
      'ac': ac,
      'part': part,
      'serial': serial,
    };
  }

  factory TeacherDocument.fromMap(Map<String, dynamic> map) {
    return TeacherDocument(
      pan: stringOf(map['pan']),
      aadhar: stringOf(map['aadhar']),
      epic: stringOf(map['epic']),
      ac: intOf(map['ac']),
      part: intOf(map['part']),
      serial: intOf(map['serial']),
    );
  }

  String toJson() => json.encode(toMap());

  factory TeacherDocument.fromJson(String source) =>
      TeacherDocument.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'TeacherDocument(pan: $pan, aadhar: $aadhar, epic: $epic, ac: $ac, part: $part, serial: $serial)';
  }

  @override
  bool operator ==(covariant TeacherDocument other) {
    if (identical(this, other)) return true;

    return other.pan == pan &&
        other.aadhar == aadhar &&
        other.epic == epic &&
        other.ac == ac &&
        other.part == part &&
        other.serial == serial;
  }

  @override
  int get hashCode {
    return pan.hashCode ^ aadhar.hashCode ^ epic.hashCode ^ ac.hashCode ^ part.hashCode ^ serial.hashCode;
  }
}
