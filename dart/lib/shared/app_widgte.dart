import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    Modular.setInitialRoute('/');
    return MaterialApp.router(
      title: 'Leilão App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.red),
      routeInformationParser: Modular.routeInformationParser,
      routerDelegate: Modular.routerDelegate,
    );
  }
}

// class AppWidget extends StatelessWidget {
//   const AppWidget({super.key});

//   @override
//   Widget build(BuildContext context) {
//     // SystemChrome.setPreferredOrientations([
//     //   DeviceOrientation.portraitUp,
//     //   DeviceOrientation.portraitDown,
//     // ]);
//     Modular.setInitialRoute('/home/');
//     // final theme = buildThemeData();
//     // GoogleFonts.setDefaultFontFamily("Inter");
//     return MaterialApp.router(
//       title: 'Chuva ❤️ Flutter',
//       debugShowCheckedModeBanner: false,
//       // theme: theme,
//       // localizationsDelegates: const [
//       //   GlobalMaterialLocalizations.delegate,
//       //   GlobalWidgetsLocalizations.delegate,
//       //   GlobalCupertinoLocalizations.delegate,
//       // ],

//       locale: const Locale('pt', 'BR'),
//       routeInformationParser: Modular.routeInformationParser,
//       routerDelegate: Modular.routerDelegate,
//       // builder: asuka.builder,
//     );
//   }
// }
