// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:test_me_first/classes/misc/null_safety.dart';

class TeacherPersonal {
  String name;
  int dob;
  int gender;
  int caste;
  int religion;
  bool isMarried;
  String academicQualification;
  String professionalQualification;

  TeacherPersonal({
    required this.name,
    required this.dob,
    required this.gender,
    required this.caste,
    required this.religion,
    required this.isMarried,
    required this.academicQualification,
    required this.professionalQualification,
  });

  TeacherPersonal copyWith({
    String? name,
    int? dob,
    int? gender,
    int? caste,
    int? religion,
    bool? isMarried,
    String? academicQualification,
    String? professionalQualification,
  }) {
    return TeacherPersonal(
      name: name ?? this.name,
      dob: dob ?? this.dob,
      gender: gender ?? this.gender,
      caste: caste ?? this.caste,
      religion: religion ?? this.religion,
      isMarried: isMarried ?? this.isMarried,
      academicQualification: academicQualification ?? this.academicQualification,
      professionalQualification: professionalQualification ?? this.professionalQualification,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'dob': dob,
      'gender': gender,
      'caste': caste,
      'religion': religion,
      'isMarried': isMarried,
      'academicQualification': academicQualification,
      'professionalQualification': professionalQualification,
    };
  }

  factory TeacherPersonal.fromMap(Map<String, dynamic> map) {
    return TeacherPersonal(
      name: stringOf(map['name']),
      dob: intOf(map['dob']),
      gender: intOf(map['gender']),
      caste: intOf(map['caste']),
      religion: intOf(map['religion']),
      isMarried: boolOf(map['isMarried']),
      academicQualification: stringOf(map['academicQualification']),
      professionalQualification: stringOf(map['professionalQualification']),
    );
  }

  String toJson() => json.encode(toMap());

  factory TeacherPersonal.fromJson(String source) =>
      TeacherPersonal.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'TeacherPersonal(name: $name, dob: $dob, gender: $gender, caste: $caste, religion: $religion, isMarried: $isMarried, academicQualification: $academicQualification, professionalQualification: $professionalQualification)';
  }

  @override
  bool operator ==(covariant TeacherPersonal other) {
    if (identical(this, other)) return true;

    return other.name == name &&
        other.dob == dob &&
        other.gender == gender &&
        other.caste == caste &&
        other.religion == religion &&
        other.isMarried == isMarried &&
        other.academicQualification == academicQualification &&
        other.professionalQualification == professionalQualification;
  }

  @override
  int get hashCode {
    return name.hashCode ^
        dob.hashCode ^
        gender.hashCode ^
        caste.hashCode ^
        religion.hashCode ^
        isMarried.hashCode ^
        academicQualification.hashCode ^
        professionalQualification.hashCode;
  }
}
