// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:test_me_first/classes/misc/null_safety.dart';

class Meta {
  String docid;
  int writtenOn; //When the object is written on object box for Creation/ Updation
  int createdOn; //When the document is first created in the firstore
  int modifiedOn; //When the document is modifiedOn firestore

  Meta({
    required this.docid,
    required this.writtenOn,
    required this.createdOn,
    required this.modifiedOn,
  });

  Meta copyWith({
    String? docid,
    int? writtenOn,
    int? createdOn,
    int? modifiedOn,
  }) {
    return Meta(
      docid: docid ?? this.docid,
      writtenOn: writtenOn ?? this.writtenOn,
      createdOn: createdOn ?? this.createdOn,
      modifiedOn: modifiedOn ?? this.modifiedOn,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'docid': docid,
      'writtenOn': writtenOn,
      'createdOn': createdOn,
      'modifiedOn': modifiedOn,
    };
  }

  factory Meta.fromMap(Map<String, dynamic> map) {
    return Meta(
      docid: stringOf(map['docid']),
      writtenOn: intOf(map['writtenOn']),
      createdOn: intOf(map['createdOn']),
      modifiedOn: intOf(map['modifiedOn']),
    );
  }

  String toJson() => json.encode(toMap());

  factory Meta.fromJson(String source) => Meta.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Meta(docid: $docid, writtenOn: $writtenOn, createdOn: $createdOn, modifiedOn: $modifiedOn)';
  }

  @override
  bool operator ==(covariant Meta other) {
    if (identical(this, other)) return true;

    return other.docid == docid &&
        other.writtenOn == writtenOn &&
        other.createdOn == createdOn &&
        other.modifiedOn == modifiedOn;
  }

  @override
  int get hashCode {
    return docid.hashCode ^ writtenOn.hashCode ^ createdOn.hashCode ^ modifiedOn.hashCode;
  }
}
