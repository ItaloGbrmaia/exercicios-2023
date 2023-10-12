import 'package:chuva_dart/modules/home/home_view.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppModule extends Module {
  @override
  void binds(i) {}

  @override
  void routes(r) {
    r.child('/', child: (context) => const ChuvaDart());
  }
}
