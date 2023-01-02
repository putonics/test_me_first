// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:test_me_first/classes/misc/null_safety.dart';

class SchoolFurniture {
  int tables;
  int chairs;
  int benches;
  int maps;
  int charts;
  int blackBoards;
  int pocketBoards;
  int books;
  int almirahs;
  int clocks;
  int scienceKits;
  int globs;
  int mathKits;
  int others;

  SchoolFurniture({
    required this.tables,
    required this.chairs,
    required this.benches,
    required this.maps,
    required this.charts,
    required this.blackBoards,
    required this.pocketBoards,
    required this.books,
    required this.almirahs,
    required this.clocks,
    required this.scienceKits,
    required this.globs,
    required this.mathKits,
    required this.others,
  });

  SchoolFurniture copyWith({
    int? tables,
    int? chairs,
    int? benches,
    int? maps,
    int? charts,
    int? blackBoards,
    int? pocketBoards,
    int? books,
    int? almirahs,
    int? clocks,
    int? scienceKits,
    int? globs,
    int? mathKits,
    int? others,
  }) {
    return SchoolFurniture(
      tables: tables ?? this.tables,
      chairs: chairs ?? this.chairs,
      benches: benches ?? this.benches,
      maps: maps ?? this.maps,
      charts: charts ?? this.charts,
      blackBoards: blackBoards ?? this.blackBoards,
      pocketBoards: pocketBoards ?? this.pocketBoards,
      books: books ?? this.books,
      almirahs: almirahs ?? this.almirahs,
      clocks: clocks ?? this.clocks,
      scienceKits: scienceKits ?? this.scienceKits,
      globs: globs ?? this.globs,
      mathKits: mathKits ?? this.mathKits,
      others: others ?? this.others,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'tables': tables,
      'chairs': chairs,
      'benches': benches,
      'maps': maps,
      'charts': charts,
      'blackBoards': blackBoards,
      'pocketBoards': pocketBoards,
      'books': books,
      'almirahs': almirahs,
      'clocks': clocks,
      'scienceKits': scienceKits,
      'globs': globs,
      'mathKits': mathKits,
      'others': others,
    };
  }

  factory SchoolFurniture.fromMap(Map<String, dynamic> map) {
    return SchoolFurniture(
      tables: intOf(map['tables']),
      chairs: intOf(map['chairs']),
      benches: intOf(map['benches']),
      maps: intOf(map['maps']),
      charts: intOf(map['charts']),
      blackBoards: intOf(map['blackBoards']),
      pocketBoards: intOf(map['pocketBoards']),
      books: intOf(map['books']),
      almirahs: intOf(map['almirahs']),
      clocks: intOf(map['clocks']),
      scienceKits: intOf(map['scienceKits']),
      globs: intOf(map['globs']),
      mathKits: intOf(map['mathKits']),
      others: intOf(map['others']),
    );
  }

  String toJson() => json.encode(toMap());

  factory SchoolFurniture.fromJson(String source) =>
      SchoolFurniture.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'SchoolFurniture(tables: $tables, chairs: $chairs, benches: $benches, maps: $maps, charts: $charts, blackBoards: $blackBoards, pocketBoards: $pocketBoards, books: $books, almirahs: $almirahs, clocks: $clocks, scienceKits: $scienceKits, globs: $globs, mathKits: $mathKits, others: $others)';
  }

  @override
  bool operator ==(covariant SchoolFurniture other) {
    if (identical(this, other)) return true;

    return other.tables == tables &&
        other.chairs == chairs &&
        other.benches == benches &&
        other.maps == maps &&
        other.charts == charts &&
        other.blackBoards == blackBoards &&
        other.pocketBoards == pocketBoards &&
        other.books == books &&
        other.almirahs == almirahs &&
        other.clocks == clocks &&
        other.scienceKits == scienceKits &&
        other.globs == globs &&
        other.mathKits == mathKits &&
        other.others == others;
  }

  @override
  int get hashCode {
    return tables.hashCode ^
        chairs.hashCode ^
        benches.hashCode ^
        maps.hashCode ^
        charts.hashCode ^
        blackBoards.hashCode ^
        pocketBoards.hashCode ^
        books.hashCode ^
        almirahs.hashCode ^
        clocks.hashCode ^
        scienceKits.hashCode ^
        globs.hashCode ^
        mathKits.hashCode ^
        others.hashCode;
  }
}
