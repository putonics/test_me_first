// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:test_me_first/classes/misc/null_safety.dart';

class SchoolInfrastructure {
  String building; //MR: whether School is running on "OWN" | "RENTED" building
  String room; //MR: whether School has "KACCHA" | "PUCCA" room
  int totalRooms; //MR: How many rooms in school
  int carpetAreaSqft; //MR: Total area of the rooms
  bool isToilet; //MR: Is there toilet?
  bool isToiletUsable; //MR:  Are they usable?
  bool isGirlsToilet; //MR: Is there girls toilet?
  bool isGirlsToiletUsable; //MR: Are they usable?
  bool isDrinkingWater; //MR: Is there drinking water?
  bool isBoundaryWall; //MR: Is there boundary wall?
  bool isPlayGround; //MR: Is there play-ground?
  bool isDonatedPlace;
  bool isLandDeedInCouncil;
  String mouza;
  String jl;
  String khatian;
  String plot;

  SchoolInfrastructure({
    required this.building,
    required this.room,
    required this.totalRooms,
    required this.carpetAreaSqft,
    required this.isToilet,
    required this.isToiletUsable,
    required this.isGirlsToilet,
    required this.isGirlsToiletUsable,
    required this.isDrinkingWater,
    required this.isBoundaryWall,
    required this.isPlayGround,
    required this.isDonatedPlace,
    required this.isLandDeedInCouncil,
    required this.mouza,
    required this.jl,
    required this.khatian,
    required this.plot,
  });

  SchoolInfrastructure copyWith({
    String? building,
    String? room,
    int? totalRooms,
    int? carpetAreaSqft,
    bool? isToilet,
    bool? isToiletUsable,
    bool? isGirlsToilet,
    bool? isGirlsToiletUsable,
    bool? isDrinkingWater,
    bool? isBoundaryWall,
    bool? isPlayGround,
    bool? isDonatedPlace,
    bool? isLandDeedInCouncil,
    String? mouza,
    String? jl,
    String? khatian,
    String? plot,
  }) {
    return SchoolInfrastructure(
      building: building ?? this.building,
      room: room ?? this.room,
      totalRooms: totalRooms ?? this.totalRooms,
      carpetAreaSqft: carpetAreaSqft ?? this.carpetAreaSqft,
      isToilet: isToilet ?? this.isToilet,
      isToiletUsable: isToiletUsable ?? this.isToiletUsable,
      isGirlsToilet: isGirlsToilet ?? this.isGirlsToilet,
      isGirlsToiletUsable: isGirlsToiletUsable ?? this.isGirlsToiletUsable,
      isDrinkingWater: isDrinkingWater ?? this.isDrinkingWater,
      isBoundaryWall: isBoundaryWall ?? this.isBoundaryWall,
      isPlayGround: isPlayGround ?? this.isPlayGround,
      isDonatedPlace: isDonatedPlace ?? this.isDonatedPlace,
      isLandDeedInCouncil: isLandDeedInCouncil ?? this.isLandDeedInCouncil,
      mouza: mouza ?? this.mouza,
      jl: jl ?? this.jl,
      khatian: khatian ?? this.khatian,
      plot: plot ?? this.plot,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'building': building,
      'room': room,
      'totalRooms': totalRooms,
      'carpetAreaSqft': carpetAreaSqft,
      'isToilet': isToilet,
      'isToiletUsable': isToiletUsable,
      'isGirlsToilet': isGirlsToilet,
      'isGirlsToiletUsable': isGirlsToiletUsable,
      'isDrinkingWater': isDrinkingWater,
      'isBoundaryWall': isBoundaryWall,
      'isPlayGround': isPlayGround,
      'isDonatedPlace': isDonatedPlace,
      'isLandDeedInCouncil': isLandDeedInCouncil,
      'mouza': mouza,
      'jl': jl,
      'khatian': khatian,
      'plot': plot,
    };
  }

  factory SchoolInfrastructure.fromMap(Map<String, dynamic> map) {
    return SchoolInfrastructure(
      building: stringOf(map['building']),
      room: stringOf(map['room']),
      totalRooms: intOf(map['totalRooms']),
      carpetAreaSqft: intOf(map['carpetAreaSqft']),
      isToilet: boolOf(map['isToilet']),
      isToiletUsable: boolOf(map['isToiletUsable']),
      isGirlsToilet: boolOf(map['isGirlsToilet']),
      isGirlsToiletUsable: boolOf(map['isGirlsToiletUsable']),
      isDrinkingWater: boolOf(map['isDrinkingWater']),
      isBoundaryWall: boolOf(map['isBoundaryWall']),
      isPlayGround: boolOf(map['isPlayGround']),
      isDonatedPlace: boolOf(map['isDonatedPlace']),
      isLandDeedInCouncil: boolOf(map['isLandDeedInCouncil']),
      mouza: stringOf(map['mouza']),
      jl: stringOf(map['jl']),
      khatian: stringOf(map['khatian']),
      plot: stringOf(map['plot']),
    );
  }

  String toJson() => json.encode(toMap());

  factory SchoolInfrastructure.fromJson(String source) =>
      SchoolInfrastructure.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'SchoolInfrastructure(building: $building, room: $room, totalRooms: $totalRooms, carpetAreaSqft: $carpetAreaSqft, isToilet: $isToilet, isToiletUsable: $isToiletUsable, isGirlsToilet: $isGirlsToilet, isGirlsToiletUsable: $isGirlsToiletUsable, isDrinkingWater: $isDrinkingWater, isBoundaryWall: $isBoundaryWall, isPlayGround: $isPlayGround, isDonatedPlace: $isDonatedPlace, isLandDeedInCouncil: $isLandDeedInCouncil, mouza: $mouza, jl: $jl, khatian: $khatian, plot: $plot)';
  }

  @override
  bool operator ==(covariant SchoolInfrastructure other) {
    if (identical(this, other)) return true;

    return other.building == building &&
        other.room == room &&
        other.totalRooms == totalRooms &&
        other.carpetAreaSqft == carpetAreaSqft &&
        other.isToilet == isToilet &&
        other.isToiletUsable == isToiletUsable &&
        other.isGirlsToilet == isGirlsToilet &&
        other.isGirlsToiletUsable == isGirlsToiletUsable &&
        other.isDrinkingWater == isDrinkingWater &&
        other.isBoundaryWall == isBoundaryWall &&
        other.isPlayGround == isPlayGround &&
        other.isDonatedPlace == isDonatedPlace &&
        other.isLandDeedInCouncil == isLandDeedInCouncil &&
        other.mouza == mouza &&
        other.jl == jl &&
        other.khatian == khatian &&
        other.plot == plot;
  }

  @override
  int get hashCode {
    return building.hashCode ^
        room.hashCode ^
        totalRooms.hashCode ^
        carpetAreaSqft.hashCode ^
        isToilet.hashCode ^
        isToiletUsable.hashCode ^
        isGirlsToilet.hashCode ^
        isGirlsToiletUsable.hashCode ^
        isDrinkingWater.hashCode ^
        isBoundaryWall.hashCode ^
        isPlayGround.hashCode ^
        isDonatedPlace.hashCode ^
        isLandDeedInCouncil.hashCode ^
        mouza.hashCode ^
        jl.hashCode ^
        khatian.hashCode ^
        plot.hashCode;
  }
}
