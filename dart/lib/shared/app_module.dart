import 'package:chuva_dart/modules/home/home_view.dart';
import 'package:chuva_dart/modules/home/models_home.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppModule extends Module {
  @override
  List<Bind> get binds => [
        // Bind.singleton((i) => makeRemoteLoadLots()),
        // Bind.singleton((i) => makeRemoteSaveshot()),
        // Bind.singleton((i) => makeRemoteLoadEmail()),
        // Bind.singleton((i) =>
        //     TradingFloorController(loadLots: i(), loadCurrentAccount: i())),
        // Bind.singleton((i) => DetailsController(loadLot: i(), saveShot: i())),
        // Bind.singleton((i) => GalleryController(loadLot: i())),
        // Bind.singleton((i) => ShotController(loadLot: i(), saveShot: i()))
      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          '/',
          child: (_, __) => ChuvaDart(
              // eventData: EventData(
              //   id: id,
              //   changed: changed,
              //   start: start,
              //   end: id, title: title,
              //   // title: title,
              //   // description: description,
              //   // category: category,
              //   // locations: locations,
              //   // type: type,
              //   // papers: papers,
              //   // people: people,
              //   // status: status,
              //   // weight: weight,
              //   // addons: addons,
              //   // parent: parent,
              //   // event: event,
              // ),
              // controller: Modular.get<TradingFloorController>(),
              ),
        ),
      ];

  get event => null;

  get parent => null;

  get addons => null;

  get weight => null;

  get status => null;

  get people => null;

  get papers => null;

  get id => null;

  get changed => null;

  get start => null;

  get title => null;

  get description => null;

  get category => null;

  get locations => null;

  get type => null;
}
