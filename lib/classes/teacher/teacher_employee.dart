// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:test_me_first/classes/misc/null_safety.dart';

class TeacherEmployee {
  String code;
  int designation;
  bool isHoi;
  String appointmentMemo; //Appointment Memo Number
  String presentMemo; //Memo of joining at present school
  int doa; //Date of Appointment
  int dfj; //Date of First Joining in Service
  int djp; //Date of Joining at present school
  int dor; //Date of retirement

  TeacherEmployee({
    required this.code,
    required this.designation,
    required this.isHoi,
    required this.appointmentMemo,
    required this.presentMemo,
    required this.doa,
    required this.dfj,
    required this.djp,
    required this.dor,
  });

  TeacherEmployee copyWith({
    String? code,
    int? designation,
    bool? isHoi,
    String? appointmentMemo,
    String? presentMemo,
    int? doa,
    int? dfj,
    int? djp,
    int? dor,
  }) {
    return TeacherEmployee(
      code: code ?? this.code,
      designation: designation ?? this.designation,
      isHoi: isHoi ?? this.isHoi,
      appointmentMemo: appointmentMemo ?? this.appointmentMemo,
      presentMemo: presentMemo ?? this.presentMemo,
      doa: doa ?? this.doa,
      dfj: dfj ?? this.dfj,
      djp: djp ?? this.djp,
      dor: dor ?? this.dor,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'code': code,
      'designation': designation,
      'isHoi': isHoi,
      'appointmentMemo': appointmentMemo,
      'presentMemo': presentMemo,
      'doa': doa,
      'dfj': dfj,
      'djp': djp,
      'dor': dor,
    };
  }

  factory TeacherEmployee.fromMap(Map<String, dynamic> map) {
    return TeacherEmployee(
      code: stringOf(map['code']),
      designation: intOf(map['designation']),
      isHoi: boolOf(map['isHoi']),
      appointmentMemo: stringOf(map['appointmentMemo']),
      presentMemo: stringOf(map['presentMemo']),
      doa: intOf(map['doa']),
      dfj: intOf(map['dfj']),
      djp: intOf(map['djp']),
      dor: intOf(map['dor']),
    );
  }

  String toJson() => json.encode(toMap());

  factory TeacherEmployee.fromJson(String source) =>
      TeacherEmployee.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'TeacherEmployee(code: $code, designation: $designation, isHoi: $isHoi, appointmentMemo: $appointmentMemo, presentMemo: $presentMemo, doa: $doa, dfj: $dfj, djp: $djp, dor: $dor)';
  }

  @override
  bool operator ==(covariant TeacherEmployee other) {
    if (identical(this, other)) return true;

    return other.code == code &&
        other.designation == designation &&
        other.isHoi == isHoi &&
        other.appointmentMemo == appointmentMemo &&
        other.presentMemo == presentMemo &&
        other.doa == doa &&
        other.dfj == dfj &&
        other.djp == djp &&
        other.dor == dor;
  }

  @override
  int get hashCode {
    return code.hashCode ^
        designation.hashCode ^
        isHoi.hashCode ^
        appointmentMemo.hashCode ^
        presentMemo.hashCode ^
        doa.hashCode ^
        dfj.hashCode ^
        djp.hashCode ^
        dor.hashCode;
  }
}
