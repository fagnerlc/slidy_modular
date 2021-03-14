import 'package:flutter_modular/flutter_modular.dart';
import 'package:slidy_modular/app/app_controller.dart';
import 'package:slidy_modular/app/pages/home/home_controller.dart';
import 'package:slidy_modular/app/pages/home/home_page.dart';
import 'package:slidy_modular/app/pages/other/other_page.dart';

class AppModule extends Module {
  // Provide a list of dependencies to inject into your project
  @override
  final List<Bind> binds = [
    Bind((i) => AppController()),
    Bind((i) => HomeController()),
  ];

  // Provide all the routes for your module
  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, __) => HomePage()),
    ChildRoute('/other', child: (_, __) => OtherPage()),
  ];
}
