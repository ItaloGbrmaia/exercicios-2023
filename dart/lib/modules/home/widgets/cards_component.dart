import 'package:chuva_dart/shared/data/events_models.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:intl/intl.dart';

class CardWidget extends StatelessWidget {
  final EventData event;

  const CardWidget({
    super.key,
    required this.event,
  });

  @override
  Widget build(BuildContext context) {
    String? dataHoraString = event.start;
    DateTime dataHora = DateTime.parse(dataHoraString!);
    String dataHoraFormatada = DateFormat('HH:mm').format(dataHora);
    String? dataHoraFim = event.end;
    DateTime dataHoraFimm = DateTime.parse(dataHoraFim!);
    String dataFinal = DateFormat('HH:mm').format(dataHoraFimm);
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 4.0, right: 4.0, bottom: 4.0),
          child: GestureDetector(
            onTap: () => {
              Modular.to.navigate('/details'),
            },
            child: Card(
              elevation: 4,
              child: SizedBox(
                height: 100,
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Container(
                        height: 100,
                        width: 5,
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(5.0),
                              bottomLeft: Radius.circular(5.0),
                            ),
                            color: Colors.red
                            // color: index % 2 != 0
                            //     ? const Color(0xFFc24ffe)
                            //     : Colors.orange,
                            ),
                      ),
                    ),
                    Expanded(
                      flex: 89,
                      child: Container(
                        height: 97,
                        color: Colors.white,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(top: 5.0, left: 17),
                              child: Text(
                                "${event.type!.title.ptBr} de $dataHoraFormatada até $dataFinal",
                                style: TextStyle(fontSize: 14),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 5.0, left: 17),
                              child: Text(
                                event.title!.ptBr.toString(),
                                style: const TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.w500,
                                ),
                                maxLines: 2,
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 17.0, top: 4),
                              child: Row(
                                children: [
                                  Text(
                                    event.people!.isNotEmpty
                                        ? event.people![0].name
                                        : "",
                                    style: const TextStyle(
                                        fontSize: 13,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.grey),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 12,
                      child: Container(
                        height: 92,
                        width: 5,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(5.0),
                            bottomRight: Radius.circular(5.0),
                          ),
                          color: Colors.white,
                        ),
                        child: const Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Icon(
                                Icons.bookmark,
                                size: 30,
                                color: Color(0xFF7c90ac),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
