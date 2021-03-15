import 'package:dio/dio.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:slidy_modular/app/modules/home/home_controller.dart';
import 'package:slidy_modular/app/modules/home/home_page.dart';
import 'package:slidy_modular/app/modules/home/repositories/poke_repository.dart';
import 'package:slidy_modular/app/shared/utils/constantes.dart';

class HomeModule extends Module {
  @override
  List<Bind> get binds => [
        Bind(
            (i) => HomeController(i.get<PokeRepository>())), // <PokeRepository>
        Bind((i) => PokeRepository(i.get<Dio>())), // <Dio> não necessário
        Bind((i) => Dio(BaseOptions(baseUrl: URL_BASE))),
      ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, __) => HomePage()),
  ];
}
