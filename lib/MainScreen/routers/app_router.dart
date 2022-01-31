import 'package:bentzip/MainScreen/screens/exportwidget.dart';
import 'package:bentzip/Teacher/presentation/screens/teacher_notice.dart';

class AppRouter {
  Route? onGenerateRoute(RouteSettings routesetting) {
    switch (routesetting.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => Selection_screen());
        break;
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
      default:
        return null;
    }
  }
}
