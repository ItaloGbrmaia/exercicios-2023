import 'dart:convert';
import 'package:chuva_dart/shared/Urls/base_urls.dart';
import 'package:chuva_dart/shared/data/events_models.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

Future<List<EventData>> fetchData() async {
  final dio = Dio();
  final url = Url();
  final List<EventData> allEventData = [];

  try {
    for (final urlToFetch in [url.baseUrl, url.nextPageUrl]) {
      final response = await dio.get(urlToFetch);

      if (response.statusCode == 200) {
        final jsonData = json.decode(response.data);
        final data = jsonData['data'];
        for (var eventDataJson in data) {
          EventData event = EventData.fromJson(eventDataJson);
          allEventData.add(event);
        }
      } else {
        debugPrint(
            'Erro ao buscar os dados. Status code: ${response.statusCode}');
      }
    }
    return allEventData;
  } catch (e) {
    debugPrint('Erro durante a solicitação: $e');
    return [];
  }
}
