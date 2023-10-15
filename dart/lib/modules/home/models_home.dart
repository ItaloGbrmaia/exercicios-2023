import 'package:http/http.dart' as http;
import 'dart:convert';

void fetchData() async {
  final response = await http.get(Uri.parse(
      'https://raw.githubusercontent.com/chuva-inc/exercicios-2023/master/dart/assets/activities.json'));

  if (response.statusCode == 200) {
    final jsonData = json.decode(response.body);

    final data = jsonData['data'];

    for (var eventDataJson in data) {
      EventData event = EventData.fromJson(eventDataJson);

      // Acesse o campo "title" como uma instância de TitleData.
      String titlePtBr = event.title!.ptBr;

      print('Título em pt-br: $titlePtBr');
      // Faça o que for necessário com os dados do evento.
    }
  } else {
    // Lida com erros, por exemplo, response.statusCode != 200.
    print('Erro ao buscar os dados. Status code: ${response.statusCode}');
  }
}

class EventData {
  final int? id;
  final int? changed;
  final String? start;
  final String? end;
  final TitleData? title;

  EventData({
    required this.id,
    required this.changed,
    required this.start,
    required this.end,
    required this.title,
  });

  factory EventData.fromJson(Map<String, dynamic> json) {
    return EventData(
      id: json['id'],
      changed: json['changed'],
      start: json['start'],
      end: json['end'],
      title: TitleData.fromJson(json['title']),
    );
  }
}

class TitleData {
  final String ptBr;

  TitleData({required this.ptBr});

  factory TitleData.fromJson(Map<String, dynamic> json) {
    return TitleData(ptBr: json['pt-br']);
  }
}
