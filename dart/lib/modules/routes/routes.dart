import 'package:chuva_dart/modules/details/details_view.dart';
import 'package:chuva_dart/modules/home/home_view.dart';
import 'package:flutter_modular/flutter_modular.dart';

class HomeRoute extends Module {
  @override
  List<Bind> get binds => [
        // Bind.singleton((i) => makeRemoteLoadLots()),
      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          '/',
          child: (_, __) => ChuvaDart(),
        ),
        ChildRoute(
          '/details/:id',
          child: (_, args) => Details(
              // id: int.parse(args.params['id']),
              // controller: Modular.get<DetailsController>(),
              // controllerset: Modular.get<TradingFloorController>(),
              ),
        ),
      ];
}
