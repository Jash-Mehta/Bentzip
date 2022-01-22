import 'package:bentzip/Admin/presentation/screens/account.dart';
import 'package:bentzip/Admin/presentation/screens/activitie.dart';
import 'package:bentzip/Admin/presentation/screens/application_approval.dart';
import 'package:bentzip/Admin/presentation/screens/cooridnates_screen.dart';
import 'package:bentzip/Admin/presentation/screens/dashboard.dart';
import 'package:bentzip/Admin/presentation/screens/inventory.dart';
import 'package:bentzip/Admin/presentation/screens/loginscreen.dart';
import 'package:bentzip/Admin/presentation/screens/notice.dart';
import 'package:bentzip/Admin/presentation/screens/teacher_screen.dart';
import 'package:bentzip/MainScreen/screens/selection_screen.dart';
import 'package:flutter/material.dart';

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
      default:
        return null;
    }
  }
}
