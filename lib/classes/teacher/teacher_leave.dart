// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:test_me_first/classes/misc/null_safety.dart';

class TeacherLeave {
  int year;
  int month;
  int casualLeave;
  int medicalLeave;
  int commutedLeave;
  int maternityLeave;
  int paternityLeave;
  int childCareLeave;
  int halfPayLeave;
  int specialLeave;
  int presentDays;

  TeacherLeave({
    required this.year,
    required this.month,
    required this.casualLeave,
    required this.medicalLeave,
    required this.commutedLeave,
    required this.maternityLeave,
    required this.paternityLeave,
    required this.childCareLeave,
    required this.halfPayLeave,
    required this.specialLeave,
    required this.presentDays,
  });

  TeacherLeave copyWith({
    int? year,
    int? month,
    int? casualLeave,
    int? medicalLeave,
    int? commutedLeave,
    int? maternityLeave,
    int? paternityLeave,
    int? childCareLeave,
    int? halfPayLeave,
    int? specialLeave,
    int? presentDays,
  }) {
    return TeacherLeave(
      year: year ?? this.year,
      month: month ?? this.month,
      casualLeave: casualLeave ?? this.casualLeave,
      medicalLeave: medicalLeave ?? this.medicalLeave,
      commutedLeave: commutedLeave ?? this.commutedLeave,
      maternityLeave: maternityLeave ?? this.maternityLeave,
      paternityLeave: paternityLeave ?? this.paternityLeave,
      childCareLeave: childCareLeave ?? this.childCareLeave,
      halfPayLeave: halfPayLeave ?? this.halfPayLeave,
      specialLeave: specialLeave ?? this.specialLeave,
      presentDays: presentDays ?? this.presentDays,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'year': year,
      'month': month,
      'casualLeave': casualLeave,
      'medicalLeave': medicalLeave,
      'commutedLeave': commutedLeave,
      'maternityLeave': maternityLeave,
      'paternityLeave': paternityLeave,
      'childCareLeave': childCareLeave,
      'halfPayLeave': halfPayLeave,
      'specialLeave': specialLeave,
      'presentDays': presentDays,
    };
  }

  factory TeacherLeave.fromMap(Map<String, dynamic> map) {
    return TeacherLeave(
      year: intOf(map['year']),
      month: intOf(map['month']),
      casualLeave: intOf(map['casualLeave']),
      medicalLeave: intOf(map['medicalLeave']),
      commutedLeave: intOf(map['commutedLeave']),
      maternityLeave: intOf(map['maternityLeave']),
      paternityLeave: intOf(map['paternityLeave']),
      childCareLeave: intOf(map['childCareLeave']),
      halfPayLeave: intOf(map['halfPayLeave']),
      specialLeave: intOf(map['specialLeave']),
      presentDays: intOf(map['presentDays']),
    );
  }

  String toJson() => json.encode(toMap());

  factory TeacherLeave.fromJson(String source) => TeacherLeave.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'TeacherLeave(year: $year, month: $month, casualLeave: $casualLeave, medicalLeave: $medicalLeave, commutedLeave: $commutedLeave, maternityLeave: $maternityLeave, paternityLeave: $paternityLeave, childCareLeave: $childCareLeave, halfPayLeave: $halfPayLeave, specialLeave: $specialLeave, presentDays: $presentDays)';
  }

  @override
  bool operator ==(covariant TeacherLeave other) {
    if (identical(this, other)) return true;

    return other.year == year &&
        other.month == month &&
        other.casualLeave == casualLeave &&
        other.medicalLeave == medicalLeave &&
        other.commutedLeave == commutedLeave &&
        other.maternityLeave == maternityLeave &&
        other.paternityLeave == paternityLeave &&
        other.childCareLeave == childCareLeave &&
        other.halfPayLeave == halfPayLeave &&
        other.specialLeave == specialLeave &&
        other.presentDays == presentDays;
  }

  @override
  int get hashCode {
    return year.hashCode ^
        month.hashCode ^
        casualLeave.hashCode ^
        medicalLeave.hashCode ^
        commutedLeave.hashCode ^
        maternityLeave.hashCode ^
        paternityLeave.hashCode ^
        childCareLeave.hashCode ^
        halfPayLeave.hashCode ^
        specialLeave.hashCode ^
        presentDays.hashCode;
  }
}
