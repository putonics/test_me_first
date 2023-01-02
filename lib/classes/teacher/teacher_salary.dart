// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:test_me_first/classes/misc/null_safety.dart';

class TeacherSalary {
  String pfAcNo; //pf account number
  int dni; //date of next increment
  int basic;
  int da; //dearness allowance
  int ma; //medical allowance
  int hra; //house rent allowance
  int arear;
  int grossPay;
  int pfDeduction;
  int gsli;
  int ss;
  int netDeduction;
  int netPay;

  TeacherSalary({
    required this.pfAcNo,
    required this.dni,
    required this.basic,
    required this.da,
    required this.ma,
    required this.hra,
    required this.arear,
    required this.grossPay,
    required this.pfDeduction,
    required this.gsli,
    required this.ss,
    required this.netDeduction,
    required this.netPay,
  });

  TeacherSalary copyWith({
    String? pfAcNo,
    int? dni,
    int? basic,
    int? da,
    int? ma,
    int? hra,
    int? arear,
    int? grossPay,
    int? pfDeduction,
    int? gsli,
    int? ss,
    int? netDeduction,
    int? netPay,
  }) {
    return TeacherSalary(
      pfAcNo: pfAcNo ?? this.pfAcNo,
      dni: dni ?? this.dni,
      basic: basic ?? this.basic,
      da: da ?? this.da,
      ma: ma ?? this.ma,
      hra: hra ?? this.hra,
      arear: arear ?? this.arear,
      grossPay: grossPay ?? this.grossPay,
      pfDeduction: pfDeduction ?? this.pfDeduction,
      gsli: gsli ?? this.gsli,
      ss: ss ?? this.ss,
      netDeduction: netDeduction ?? this.netDeduction,
      netPay: netPay ?? this.netPay,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'pfAcNo': pfAcNo,
      'dni': dni,
      'basic': basic,
      'da': da,
      'ma': ma,
      'hra': hra,
      'arear': arear,
      'grossPay': grossPay,
      'pfDeduction': pfDeduction,
      'gsli': gsli,
      'ss': ss,
      'netDeduction': netDeduction,
      'netPay': netPay,
    };
  }

  factory TeacherSalary.fromMap(Map<String, dynamic> map) {
    return TeacherSalary(
      pfAcNo: stringOf(map['pfAcNo']),
      dni: intOf(map['dni']),
      basic: intOf(map['basic']),
      da: intOf(map['da']),
      ma: intOf(map['ma']),
      hra: intOf(map['hra']),
      arear: intOf(map['arear']),
      grossPay: intOf(map['grossPay']),
      pfDeduction: intOf(map['pfDeduction']),
      gsli: intOf(map['gsli']),
      ss: intOf(map['ss']),
      netDeduction: intOf(map['netDeduction']),
      netPay: intOf(map['netPay']),
    );
  }

  String toJson() => json.encode(toMap());

  factory TeacherSalary.fromJson(String source) => TeacherSalary.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'TeacherSalary(pfAcNo: $pfAcNo, dni: $dni, basic: $basic, da: $da, ma: $ma, hra: $hra, arear: $arear, grossPay: $grossPay, pfDeduction: $pfDeduction, gsli: $gsli, ss: $ss, netDeduction: $netDeduction, netPay: $netPay)';
  }

  @override
  bool operator ==(covariant TeacherSalary other) {
    if (identical(this, other)) return true;

    return other.pfAcNo == pfAcNo &&
        other.dni == dni &&
        other.basic == basic &&
        other.da == da &&
        other.ma == ma &&
        other.hra == hra &&
        other.arear == arear &&
        other.grossPay == grossPay &&
        other.pfDeduction == pfDeduction &&
        other.gsli == gsli &&
        other.ss == ss &&
        other.netDeduction == netDeduction &&
        other.netPay == netPay;
  }

  @override
  int get hashCode {
    return pfAcNo.hashCode ^
        dni.hashCode ^
        basic.hashCode ^
        da.hashCode ^
        ma.hashCode ^
        hra.hashCode ^
        arear.hashCode ^
        grossPay.hashCode ^
        pfDeduction.hashCode ^
        gsli.hashCode ^
        ss.hashCode ^
        netDeduction.hashCode ^
        netPay.hashCode;
  }
}
