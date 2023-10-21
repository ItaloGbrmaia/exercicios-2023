import 'dart:typed_data';

import 'package:chuva_dart/shared/data/models/people_models.dart';
import 'package:chuva_dart/shared/data/models/titlle_models.dart';
import 'package:chuva_dart/shared/data/models/type_models.dart';

class EventData {
  final int? id;
  final TitleData? title;
  final TypeData? type;
  final String? start;
  final String? end;
  final List<People>? people;

  EventData(
      {required this.id,
      required this.title,
      required this.end,
      required this.type,
      required this.people,
      required this.start});

  factory EventData.fromJson(Map<String, dynamic> json) {
    List<People> person = [];
    if (json['people'] != null) {
      person = List<People>.from(
        json['people'].map(
          (person) => People.fromJson(person),
        ),
      );
    }
    return EventData(
      id: json['id'],
      type: TypeData.fromJson(json['type']),
      start: json['start'],
      end: json['end'],
      people: person,
      title: TitleData.fromJson(json['title']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'start': start,
      'end': end,
      'people': people,
      'type': type,
    };
  }
}
