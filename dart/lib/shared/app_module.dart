import 'package:chuva_dart/modules/details/details_view.dart';
import 'package:chuva_dart/modules/home/home_view.dart';
import 'package:chuva_dart/modules/routes/routes.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppModule extends Module {
  @override
  List<Bind> get binds => [
        // Bind.singleton((i) => HomeController(i())),
      ];

  @override
  List<ModularRoute> get routes => [
        ModuleRoute(
          '/home',
          module: HomeRoute(),
        ),
      ];
}
