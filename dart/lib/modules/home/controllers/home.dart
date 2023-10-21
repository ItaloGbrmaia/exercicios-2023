import 'package:chuva_dart/shared/data/events_models.dart';
import 'package:chuva_dart/shared/data/models/people_models.dart';
import 'package:chuva_dart/shared/services/get_api.dart';
import 'package:mobx/mobx.dart';
part 'home.g.dart';

class HomeController = _HomeController with _$HomeController;

abstract class _HomeController with Store {
  List<EventData> lista = [];
  List<EventData>? event = [];

  @observable
  ObservableList<EventData> events = ObservableList<EventData>();

  @observable
  bool isLoading = false;

  Future<void> loadData() async {
    try {
      isLoading = true;
      event = [];
      lista = [];
      final evento = await fetchData();
      event = evento.toList();

      if (event != null) {
        for (int i = 0; i < event!.length; i++) {
          lista.add(event![i]);
        }
        isLoading = false;
      }
      isLoading = false;
    } catch (e) {
      isLoading = false;
      print('Erro durante a solicitação: $e');
    }
  }
}
