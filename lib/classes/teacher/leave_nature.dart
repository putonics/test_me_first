import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:test_me_first/classes/misc/null_safety.dart';

class LeaveNature {
  String type;
  int totalDays;
  int minimumDays;
  int maximumDays;
  bool isYearly;
  bool forMale;
  bool forFemale;
  String sanctioningAuthority;
  String throughAuthority;
  List<String> enclosures;

  LeaveNature({
    required this.type,
    required this.totalDays,
    required this.minimumDays,
    required this.maximumDays,
    required this.isYearly,
    required this.forMale,
    required this.forFemale,
    required this.sanctioningAuthority,
    required this.throughAuthority,
    required this.enclosures,
  });

  LeaveNature copyWith({
    String? type,
    int? totalDays,
    int? minimumDays,
    int? maximumDays,
    bool? isYearly,
    bool? forMale,
    bool? forFemale,
    String? sanctioningAuthority,
    String? throughAuthority,
    List<String>? enclosures,
  }) {
    return LeaveNature(
      type: type ?? this.type,
      totalDays: totalDays ?? this.totalDays,
      minimumDays: minimumDays ?? this.minimumDays,
      maximumDays: maximumDays ?? this.maximumDays,
      isYearly: isYearly ?? this.isYearly,
      forMale: forMale ?? this.forMale,
      forFemale: forFemale ?? this.forFemale,
      sanctioningAuthority: sanctioningAuthority ?? this.sanctioningAuthority,
      throughAuthority: throughAuthority ?? this.throughAuthority,
      enclosures: enclosures ?? this.enclosures,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': type,
      'totalDays': totalDays,
      'minimumDays': minimumDays,
      'maximumDays': maximumDays,
      'isYearly': isYearly,
      'forMale': forMale,
      'forFemale': forFemale,
      'sanctioningAuthority': sanctioningAuthority,
      'throughAuthority': throughAuthority,
      'enclosures': enclosures,
    };
  }

  factory LeaveNature.fromMap(Map<String, dynamic> map) {
    return LeaveNature(
      type: stringOf(map['type']),
      totalDays: intOf(map['totalDays']),
      minimumDays: intOf(map['minimumDays']),
      maximumDays: intOf(map['maximumDays']),
      isYearly: boolOf(map['isYearly']),
      forMale: boolOf(map['forMale']),
      forFemale: boolOf(map['forFemale']),
      sanctioningAuthority: stringOf(map['sanctioningAuthority']),
      throughAuthority: stringOf(map['throughAuthority']),
      enclosures: listOf<String>(map['enclosures']),
    );
  }

  String toJson() => json.encode(toMap());

  factory LeaveNature.fromJson(String source) => LeaveNature.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'LeaveNature(type: $type, totalDays: $totalDays, minimumDays: $minimumDays, maximumDays: $maximumDays, isYearly: $isYearly, forMale: $forMale, forFemale: $forFemale, sanctioningAuthority: $sanctioningAuthority, throughAuthority: $throughAuthority, enclosures: $enclosures)';
  }

  @override
  bool operator ==(covariant LeaveNature other) {
    if (identical(this, other)) return true;

    return other.type == type &&
        other.totalDays == totalDays &&
        other.minimumDays == minimumDays &&
        other.maximumDays == maximumDays &&
        other.isYearly == isYearly &&
        other.forMale == forMale &&
        other.forFemale == forFemale &&
        other.sanctioningAuthority == sanctioningAuthority &&
        other.throughAuthority == throughAuthority &&
        listEquals(other.enclosures, enclosures);
  }

  @override
  int get hashCode {
    return type.hashCode ^
        totalDays.hashCode ^
        minimumDays.hashCode ^
        maximumDays.hashCode ^
        isYearly.hashCode ^
        forMale.hashCode ^
        forFemale.hashCode ^
        sanctioningAuthority.hashCode ^
        throughAuthority.hashCode ^
        enclosures.hashCode;
  }
}
