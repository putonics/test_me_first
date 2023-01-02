// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:test_me_first/classes/misc/null_safety.dart';

class Contact {
  int mobile; //mobile-number
  int whatsapp;
  String email;

  Contact({
    required this.mobile,
    required this.whatsapp,
    required this.email,
  });

  Contact copyWith({
    int? mobile,
    int? whatsapp,
    String? email,
  }) {
    return Contact(
      mobile: mobile ?? this.mobile,
      whatsapp: whatsapp ?? this.whatsapp,
      email: email ?? this.email,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mobile': mobile,
      'whatsapp': whatsapp,
      'email': email,
    };
  }

  factory Contact.fromMap(Map<String, dynamic> map) {
    return Contact(
      mobile: intOf(map['mobile']),
      whatsapp: intOf(map['whatsapp']),
      email: stringOf(map['email']),
    );
  }

  String toJson() => json.encode(toMap());

  factory Contact.fromJson(String source) => Contact.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'Contact(mobile: $mobile, whatsapp: $whatsapp, email: $email)';

  @override
  bool operator ==(covariant Contact other) {
    if (identical(this, other)) return true;

    return other.mobile == mobile && other.whatsapp == whatsapp && other.email == email;
  }

  @override
  int get hashCode => mobile.hashCode ^ whatsapp.hashCode ^ email.hashCode;
}
