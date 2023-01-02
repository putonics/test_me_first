// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:test_me_first/classes/misc/null_safety.dart';

class BankAccount {
  String name;
  String number;
  String bank;
  String branch;
  String ifsc;

  BankAccount({
    required this.name,
    required this.number,
    required this.bank,
    required this.branch,
    required this.ifsc,
  });

  BankAccount copyWith({
    String? name,
    String? number,
    String? bank,
    String? branch,
    String? ifsc,
  }) {
    return BankAccount(
      name: name ?? this.name,
      number: number ?? this.number,
      bank: bank ?? this.bank,
      branch: branch ?? this.branch,
      ifsc: ifsc ?? this.ifsc,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'number': number,
      'bank': bank,
      'branch': branch,
      'ifsc': ifsc,
    };
  }

  factory BankAccount.fromMap(Map<String, dynamic> map) {
    return BankAccount(
      name: stringOf(map['name']),
      number: stringOf(map['number']),
      bank: stringOf(map['bank']),
      branch: stringOf(map['branch']),
      ifsc: stringOf(map['ifsc']),
    );
  }

  String toJson() => json.encode(toMap());

  factory BankAccount.fromJson(String source) => BankAccount.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'BankAccount(name: $name, number: $number, bank: $bank, branch: $branch, ifsc: $ifsc)';
  }

  @override
  bool operator ==(covariant BankAccount other) {
    if (identical(this, other)) return true;

    return other.name == name &&
        other.number == number &&
        other.bank == bank &&
        other.branch == branch &&
        other.ifsc == ifsc;
  }

  @override
  int get hashCode {
    return name.hashCode ^ number.hashCode ^ bank.hashCode ^ branch.hashCode ^ ifsc.hashCode;
  }
}
