import 'package:chuva_dart/modules/home/controllers/home.dart';
import 'package:chuva_dart/modules/home/widgets/body_component.dart';
import 'package:chuva_dart/shared/components/appbar/bottom_app_bar.dart';
import 'package:chuva_dart/shared/components/appbar/title_app_bar.dart';
import 'package:flutter/material.dart';
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
        title: const TitleAppBar(),
        leading: GestureDetector(
          onTap: () => {
            Modular.to.navigate('/home/'),
          },
          child: const Icon(Icons.arrow_back_ios),
        ),
        toolbarHeight: 100.0, // Aumenta a altura do AppBar
        bottom: const PreferredSize(
          preferredSize: Size.fromHeight(42.0),
          child: BottomAppBarr(),
        ),
      ),
      body: BodyWidget(eventStore: eventStore),
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
