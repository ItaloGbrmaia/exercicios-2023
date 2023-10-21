import 'package:chuva_dart/modules/home/controllers/home.dart';
import 'package:chuva_dart/shared/data/events_models.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

class ChuvaDart extends StatelessWidget {
  final eventStore = HomeController();

  ChuvaDart({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: EventListView(eventStore),
    );
  }
}

class EventListView extends StatelessWidget {
  final HomeController eventStore;

  const EventListView(this.eventStore, {super.key});

  @override
  Widget build(BuildContext context) {
    eventStore.loadData();
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        foregroundColor: Colors.white,
        backgroundColor: const Color(0xFF456189),
        title: const Padding(
          padding: EdgeInsets.only(top: 16.0),
          child: Column(
            children: [
              Text(
                "Chuva 💜 flutter",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 21,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(
                height: 30,
                child: Text(
                  "Programação",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ),
            ],
          ),
        ),
        leading: GestureDetector(
          onTap: () => {
            Modular.to.navigate('/'),
          },
          child: const Icon(Icons.arrow_back_ios),
        ),
        toolbarHeight: 100.0, // Aumenta a altura do AppBar
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(42.0),
          child: SizedBox(
            height: 54,
            child: Column(
              children: [
                SizedBox(
                  width: 350,
                  height: 45.5,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20.0),
                    child: Container(
                      color: Colors.white,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Container(
                              height: 40,
                              width: 46,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25.0),
                                color: const Color(0xFF2f6abd),
                              ),
                              child: const Icon(
                                Icons.calendar_month_outlined,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 250,
                            child: Center(
                              child: Text(
                                "Exibindo todas as atividades",
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
      body: BodyWidget(eventStore: eventStore),
    );
  }
}

class BodyWidget extends StatelessWidget {
  const BodyWidget({
    Key? key,
    required this.eventStore,
  }) : super(key: key);

  final HomeController eventStore;

  Future<void> _onrefresh() async {
    eventStore.loadData();
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
                    const LabelTopWidget(),
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

class LabelTopWidget extends StatelessWidget {
  const LabelTopWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      color: const Color(0xFF2f6abd),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 50,
            width: 60,
            color: Colors.white,
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Nov",
                  style: TextStyle(
                    fontSize: 19,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Text(
                  "2023",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 50,
            width: 45,
            child: Center(
              child: Text(
                "26",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 50,
            width: 45,
            child: Center(
              child: Text(
                "27",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 50,
            width: 45,
            child: Center(
              child: Text(
                "28",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 50,
            width: 45,
            child: Center(
              child: Text(
                "29",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 50,
            width: 45,
            child: Center(
              child: Text(
                "30",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CardWidget extends StatelessWidget {
  final EventData event;

  const CardWidget({
    super.key,
    required this.event,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
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
                            "${event.start}",
                            style: TextStyle(fontSize: 14),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 5.0, left: 17),
                          child: Text(
                            event.title!.ptBr,
                            style: const TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w500,
                            ),
                            maxLines: 2,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 4.0, left: 17),
                          child: Text(
                            event.people!.isNotEmpty
                                ? event.people![0].name
                                : "",
                            style: const TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w500,
                                color: Colors.grey),
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
    );
  }
}




// class ChuvaDart extends StatelessWidget {
//   const ChuvaDart({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       home: Calendar(),
//     );
//   }
// }

// class Calendar extends StatefulWidget {
//   const Calendar({super.key});

//   @override
//   State<Calendar> createState() => _CalendarState();
// }

// class _CalendarState extends State<Calendar> {
//   DateTime _currentDate = DateTime(2023, 11, 26);
//   bool _clicked = false;

//   void _changeDate(DateTime newDate) {
//     setState(() {
//       _currentDate = newDate;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Theme.of(context).colorScheme.inversePrimary,
//         title: const Text('Chuva ❤️ Flutter 1'),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             const Text(
//               'Programação',
//             ),
//             const Text(
//               'Nov',
//             ),
//             const Text(
//               '2023',
//             ),
//             OutlinedButton(
//               onPressed: () {
//                 _changeDate(DateTime(2023, 11, 26));
//               },
//               child: Text(
//                 '26',
//                 style: Theme.of(context).textTheme.headlineMedium,
//               ),
//             ),
//             OutlinedButton(
//               onPressed: () {
//                 _changeDate(DateTime(2023, 11, 28));
//               },
//               child: Text(
//                 '28',
//                 style: Theme.of(context).textTheme.headlineMedium,
//               ),
//             ),
//             if (_currentDate.day == 26)
//               OutlinedButton(
//                   onPressed: () {
//                     setState(() {
//                       _clicked = true;
//                     });
//                   },
//                   child: const Text('Mesa redonda de 07:00 até 08:00')),
//             if (_currentDate.day == 28)
//               OutlinedButton(
//                   onPressed: () {
//                     setState(() {
//                       _clicked = true;
//                     });
//                   },
//                   child: const Text('Palestra de 09:30 até 10:00')),
//             if (_currentDate.day == 26 && _clicked) const Activity(),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class Activity extends StatefulWidget {
//   const Activity({super.key});

//   @override
//   State<Activity> createState() => _ActivityState();
// }

// class _ActivityState extends State<Activity> {
//   bool _favorited = false;

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       color: Theme.of(context).colorScheme.inversePrimary,
//       child: Column(children: [
//         Text(
//           'Activity title',
//           style: Theme.of(context).textTheme.bodySmall,
//         ),
//         const Text('A Física dos Buracos Negros Supermassivos'),
//         const Text('Mesa redonda'),
//         const Text('Domingo 07:00h - 08:00h'),
//         const Text('Sthepen William Hawking'),
//         const Text('Maputo'),
//         const Text('Astrofísica e Cosmologia'),
//         ElevatedButton.icon(
//           onPressed: () {
//             setState(() {
//               _favorited = !_favorited;
//             });
//           },
//           icon: _favorited
//               ? const Icon(Icons.star)
//               : const Icon(Icons.star_outline),
//           label: Text(
//               _favorited ? 'Remover da sua agenda' : 'Adicionar à sua agenda'),
//         )
//       ]),
//     );
//   }
// }
