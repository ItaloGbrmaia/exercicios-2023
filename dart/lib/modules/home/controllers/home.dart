import 'package:chuva_dart/shared/data/events_models.dart';
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

  @observable
  String selectedValue = "";

  @action
  void updateSelectedValue(String value) {
    selectedValue = value;
  }

  Future<void> loadData() async {
    try {
      isLoading = true;
      event = [];
      lista = [];
      List<EventData> evento = await fetchData();

      if (selectedValue.isNotEmpty) {
        event = evento
            .where(
                (element) => element.start!.contains("2023-11-$selectedValue"))
            .toList();
      } else {
        event = evento.toList();
      }

      if (event!.isNotEmpty) {
        for (int i = 0; i < event!.length; i++) {
          lista.add(event![i]);
        }
        isLoading = false;
      }

      isLoading = false;
    } catch (e) {
      isLoading = false;
      // print('Erro durante a solicitação: $e');
    }
  }
}
