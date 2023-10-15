import 'package:chuva_dart/modules/home/models_home.dart';
import 'package:flutter/material.dart';

class ChuvaDart extends StatefulWidget {
  const ChuvaDart({
    Key? key,
  }) : super(key: key);
  // final EventData eventData;

  @override
  State<ChuvaDart> createState() => _ChuvaDartState();
}

class _ChuvaDartState extends State<ChuvaDart> {
  late List<EventData> events = [];

  @override
  void initState() {
    super.initState();
    fetchData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        foregroundColor: Colors.white,
        backgroundColor: Colors.deepPurple,
        title: const Padding(
          padding: EdgeInsets.only(top: 10.0),
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
        leading: IconButton(
          onPressed: () => {},
          icon: const Icon(Icons.arrow_back_ios_new),
        ),
        toolbarHeight: 100.0, // Aumenta a altura do AppBar
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(46.0),
          child: SizedBox(
            height: 54,
            child: Column(
              children: [
                SizedBox(
                  width: 350,
                  height: 47.5,
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
                              height: 42,
                              width: 48,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25.0),
                                color: Colors.deepPurple,
                              ),
                              child: const Icon(
                                Icons.calendar_month,
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
                                  fontWeight: FontWeight.w400,
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
      body: ListView.builder(
        itemCount: events.length, // Use o tamanho da lista de eventos
        itemBuilder: (context, index) {
          final item = events[index];
          return Card(
            child: Column(
              children: [
                ListTile(
                  title: Text('Título ${item.id}'),
                  subtitle: Text('Subtítulo $index'),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    'Este é um texto breve para o Card $index.',
                  ),
                ),
              ],
            ),
          );
        },
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
