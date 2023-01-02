// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:test_me_first/classes/misc/null_safety.dart';

class SchoolBasic {
  int diseCode;
  int dpscSerial;
  String name;
  String medium;
  String circle;
  String sansad;
  String gp;
  String block;
  bool isRural;
  int estd;
  int lowestClass;
  int highestClass;
  int ac;
  int pc;

  SchoolBasic({
    required this.diseCode,
    required this.dpscSerial,
    required this.name,
    required this.medium,
    required this.circle,
    required this.sansad,
    required this.gp,
    required this.block,
    required this.isRural,
    required this.estd,
    required this.lowestClass,
    required this.highestClass,
    required this.ac,
    required this.pc,
  });

  SchoolBasic copyWith({
    int? diseCode,
    int? dpscSerial,
    String? name,
    String? medium,
    String? circle,
    String? sansad,
    String? gp,
    String? block,
    bool? isRural,
    int? estd,
    int? lowestClass,
    int? highestClass,
    int? ac,
    int? pc,
  }) {
    return SchoolBasic(
      diseCode: diseCode ?? this.diseCode,
      dpscSerial: dpscSerial ?? this.dpscSerial,
      name: name ?? this.name,
      medium: medium ?? this.medium,
      circle: circle ?? this.circle,
      sansad: sansad ?? this.sansad,
      gp: gp ?? this.gp,
      block: block ?? this.block,
      isRural: isRural ?? this.isRural,
      estd: estd ?? this.estd,
      lowestClass: lowestClass ?? this.lowestClass,
      highestClass: highestClass ?? this.highestClass,
      ac: ac ?? this.ac,
      pc: pc ?? this.pc,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'diseCode': diseCode,
      'dpscSerial': dpscSerial,
      'name': name,
      'medium': medium,
      'circle': circle,
      'sansad': sansad,
      'gp': gp,
      'block': block,
      'isRural': isRural,
      'estd': estd,
      'lowestClass': lowestClass,
      'highestClass': highestClass,
      'ac': ac,
      'pc': pc,
    };
  }

  factory SchoolBasic.fromMap(Map<String, dynamic> map) {
    return SchoolBasic(
      diseCode: intOf(map['diseCode']),
      dpscSerial: intOf(map['dpscSerial']),
      name: stringOf(map['name']),
      medium: stringOf(map['medium']),
      circle: stringOf(map['circle']),
      sansad: stringOf(map['sansad']),
      gp: stringOf(map['gp']),
      block: stringOf(map['block']),
      isRural: boolOf(map['isRural']),
      estd: intOf(map['estd']),
      lowestClass: intOf(map['lowestClass']),
      highestClass: intOf(map['highestClass']),
      ac: intOf(map['ac']),
      pc: intOf(map['pc']),
    );
  }

  String toJson() => json.encode(toMap());

  factory SchoolBasic.fromJson(String source) => SchoolBasic.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'SchoolBasic(diseCode: $diseCode, dpscSerial: $dpscSerial, name: $name, medium: $medium, circle: $circle, sansad: $sansad, gp: $gp, block: $block, isRural: $isRural, estd: $estd, lowestClass: $lowestClass, highestClass: $highestClass, ac: $ac, pc: $pc)';
  }

  @override
  bool operator ==(covariant SchoolBasic other) {
    if (identical(this, other)) return true;

    return other.diseCode == diseCode &&
        other.dpscSerial == dpscSerial &&
        other.name == name &&
        other.medium == medium &&
        other.circle == circle &&
        other.sansad == sansad &&
        other.gp == gp &&
        other.block == block &&
        other.isRural == isRural &&
        other.estd == estd &&
        other.lowestClass == lowestClass &&
        other.highestClass == highestClass &&
        other.ac == ac &&
        other.pc == pc;
  }

  @override
  int get hashCode {
    return diseCode.hashCode ^
        dpscSerial.hashCode ^
        name.hashCode ^
        medium.hashCode ^
        circle.hashCode ^
        sansad.hashCode ^
        gp.hashCode ^
        block.hashCode ^
        isRural.hashCode ^
        estd.hashCode ^
        lowestClass.hashCode ^
        highestClass.hashCode ^
        ac.hashCode ^
        pc.hashCode;
  }
}
