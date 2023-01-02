import 'package:test_me_first/classes/school/school_basic.dart';
import 'package:test_me_first/classes/school/school_finance.dart';
import 'package:test_me_first/classes/school/school_furniture.dart';
import 'package:test_me_first/classes/school/school_infrastructure.dart';

class School {
  SchoolBasic basic = SchoolBasic.fromMap({});
  SchoolInfrastructure infrastructure = SchoolInfrastructure.fromMap({});
  SchoolFurniture furniture = SchoolFurniture.fromMap({});
  SchoolFinance finance = SchoolFinance.fromMap({});
}
