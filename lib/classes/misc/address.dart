// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:test_me_first/classes/misc/null_safety.dart';

class Address {
  String vill;
  int pin;
  String po; //post-office
  String dist; //District

  Address({
    required this.vill,
    required this.pin,
    required this.po,
    required this.dist,
  });

  Address copyWith({
    String? vill,
    int? pin,
    String? po,
    String? dist,
  }) {
    return Address(
      vill: vill ?? this.vill,
      pin: pin ?? this.pin,
      po: po ?? this.po,
      dist: dist ?? this.dist,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'vill': vill,
      'pin': pin,
      'po': po,
      'dist': dist,
    };
  }

  factory Address.fromMap(Map<String, dynamic> map) {
    return Address(
      vill: stringOf(map['vill']),
      pin: intOf(map['pin']),
      po: stringOf(map['po']),
      dist: stringOf(map['dist']),
    );
  }

  String toJson() => json.encode(toMap());

  factory Address.fromJson(String source) => Address.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Address(vill: $vill, pin: $pin, po: $po, dist: $dist)';
  }

  @override
  bool operator ==(covariant Address other) {
    if (identical(this, other)) return true;

    return other.vill == vill && other.pin == pin && other.po == po && other.dist == dist;
  }

  @override
  int get hashCode {
    return vill.hashCode ^ pin.hashCode ^ po.hashCode ^ dist.hashCode;
  }
}
