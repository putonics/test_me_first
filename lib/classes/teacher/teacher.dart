import 'package:objectbox/objectbox.dart';
import 'package:test_me_first/classes/misc/address.dart';
import 'package:test_me_first/classes/misc/contact.dart';
import 'package:test_me_first/classes/misc/meta.dart';
import 'package:test_me_first/classes/teacher/teacher_document.dart';
import 'package:test_me_first/classes/teacher/teacher_employee.dart';
import 'package:test_me_first/classes/teacher/teacher_personal.dart';
import 'package:test_me_first/classes/teacher/teacher_salary.dart';

@Entity()
class Teacher {
  int id = 0;
  TeacherPersonal personal = TeacherPersonal.fromMap({});
  TeacherEmployee employee = TeacherEmployee.fromMap({});
  TeacherDocument document = TeacherDocument.fromMap({});
  TeacherSalary salary = TeacherSalary.fromMap({});
  Address address = Address.fromMap({});
  Contact contact = Contact.fromMap({});
  Meta meta = Meta.fromMap({});
}
