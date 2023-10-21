import 'package:chuva_dart/modules/home/controllers/home.dart';
import 'package:chuva_dart/modules/home/widgets/cards_component.dart';
import 'package:chuva_dart/modules/home/widgets/filter_label_component.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class BodyWidget extends StatelessWidget {
  const BodyWidget({
    Key? key,
    required this.eventStore,
  }) : super(key: key);

  final HomeController eventStore;

  Future<void> _onrefresh() async {
    eventStore.loadData();
    eventStore.selectedValue = "";
  }

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      triggerMode: RefreshIndicatorTriggerMode.onEdge,
      edgeOffset: 30,
      onRefresh: _onrefresh,
      child: SingleChildScrollView(
        physics: const AlwaysScrollableScrollPhysics(),
        child: Center(
          child: Observer(
            builder: (context) {
              if (eventStore.isLoading) {
                return const Padding(
                  padding: EdgeInsets.only(top: 18.0),
                  child: Center(
                    child: CircularProgressIndicator(
                      strokeWidth: 2.5,
                      color: Color(0xFF2f6abd),
                    ),
                  ),
                );
              }
              return Container(
                padding: const EdgeInsets.only(top: 0),
                child: Column(
                  children: [
                    LabelTopWidget(
                      eventStore: eventStore,
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    eventStore.event != null
                        ? Column(
                            children: eventStore.lista
                                .map(
                                  (evento) => Column(
                                    children: [
                                      CardWidget(
                                        event: evento,
                                      ),
                                    ],
                                  ),
                                )
                                .toList(),
                          )
                        : const Padding(
                            padding: EdgeInsets.only(top: 10.0, bottom: 6.0),
                            child: Column(
                              children: [
                                Text(
                                  'Sem resultados no momento!',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
