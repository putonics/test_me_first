// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:test_me_first/classes/misc/bank_account.dart';
import 'package:test_me_first/classes/misc/null_safety.dart';

class SchoolFinance {
  BankAccount slmc;
  BankAccount mdm;

  SchoolFinance({
    required this.slmc,
    required this.mdm,
  });

  SchoolFinance copyWith({
    BankAccount? slmc,
    BankAccount? mdm,
  }) {
    return SchoolFinance(
      slmc: slmc ?? this.slmc,
      mdm: mdm ?? this.mdm,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'slmc': slmc.toMap(),
      'mdm': mdm.toMap(),
    };
  }

  factory SchoolFinance.fromMap(Map<String, dynamic> map) {
    return SchoolFinance(
      slmc: BankAccount.fromMap(mapOf(map['slmc'])),
      mdm: BankAccount.fromMap(mapOf(map['mdm'])),
    );
  }

  String toJson() => json.encode(toMap());

  factory SchoolFinance.fromJson(String source) => SchoolFinance.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'SchoolFinance(slmc: $slmc, mdm: $mdm)';

  @override
  bool operator ==(covariant SchoolFinance other) {
    if (identical(this, other)) return true;

    return other.slmc == slmc && other.mdm == mdm;
  }

  @override
  int get hashCode => slmc.hashCode ^ mdm.hashCode;
}
