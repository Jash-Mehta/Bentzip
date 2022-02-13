import 'package:bentzip/MainScreen/screens/exportwidget.dart';
import 'package:bentzip/Teacher/presentation/screens/StudentPerformance/dash_performance.dart';
import 'package:bentzip/Teacher/presentation/screens/inventory/dash_inventory.dart';
import 'package:bentzip/Teacher/presentation/screens/inventory/teacher_inventory.dart';

class AppRouter {
  Route? onGenerateRoute(RouteSettings routesetting) {
    switch (routesetting.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => Selection_screen());
        break;
      /**
         * ! Admin Screen Start from here......
         */
      case '/admin':
        return MaterialPageRoute(builder: (_) => LoginScreen());
        break;
      /**
         Admin DashBoard Screen.......
         */
      case '/dashboard':
        return MaterialPageRoute(builder: (_) => DashBoard());
        break;
      /**
         Admin(teacher section) Screen..... 
         */
      case '/teachers':
        return MaterialPageRoute(builder: (_) => TeacherScreen());
        break;
      /**
       Admin(Student section) Screen....
       */
      case '/cooridnates':
        return MaterialPageRoute(builder: (_) => CooridnatesScreen());
        break;
      /**
         Admin AccountDepartment Screen....
         */
      case '/accountdepartment':
        return MaterialPageRoute(builder: (_) => Account());
        break;
      /**
         Inventory Screen.....
         */
      case '/inventory':
        return MaterialPageRoute(builder: (_) => InventoryScreen());
      /**
         Notice Screen.....
         */
      case '/notice':
        return MaterialPageRoute(builder: (_) => NoticeScreen());
      /**
         Application approval Screen.....
         */
      case '/applicationapproval':
        return MaterialPageRoute(builder: (_) => ApplicationApproval());
      /**
        Activities Screen.....
         */
      case '/activities':
        return MaterialPageRoute(builder: (_) => Activities());
      /**
        Contact Screen.....
         */
      case '/contact':
        return MaterialPageRoute(builder: (_) => ContactScreen());
      /**
       Syllabus.....
         */
      case '/syllabus':
        return MaterialPageRoute(builder: (_) => Syllabus());
      /**
       Aboutus.....
         */
      case '/aboutus':
        return MaterialPageRoute(builder: (_) => AboutUs());
      /**
       * ! Admin Screen end here.....
         * ! Teacher Screen Start from here.......
           Teacher DashBoard.......
         */

      case '/techerdashboard':
        return MaterialPageRoute(builder: (_) => TeacherDashboard());
      /**
         Teacher Attendance.....
         */
      case '/teacherattendance':
        return MaterialPageRoute(builder: (_) => TeacherAttendance());
      /**
         Teacher Attendance listview Screen.......
         */
      case '/attendancelistview':
        return MaterialPageRoute(builder: (_) => AttendanceStudentlist());
      /**
         Teacher Notice Screen.......
         */
      case '/teachernotice':
        return MaterialPageRoute(builder: (_) => TeacherNotice());
      /**
         Teacher Notes Screen.......
         */
      case '/teachernotes':
        return MaterialPageRoute(builder: (_) => TeacherNotes());
      /**
         Teacher Studentdetail Screen.......
         */
      case '/teacherstudentdetail':
        return MaterialPageRoute(builder: (_) => Teacherstudentdetail());
      /**
         Teacher Application Approval Screen.......
         */
      case '/teacherapplicationapp':
        return MaterialPageRoute(builder: (_) => TeacherApprovalDash());
              /**
         Teacher Inventory Screen.......
         */
      case '/teacherinventory':
        return MaterialPageRoute(builder: (_) => DashInventory());
                      /**
         Teacher Student Performance Screen........
         */
      case '/teacherstudentperformance':
        return MaterialPageRoute(builder: (_) => DashPerformance());
      default:
        return null;
    }
  }
}
