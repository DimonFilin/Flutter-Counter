import 'package:flutter/material.dart';
import 'package:flutter_app/themes.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:adaptive_theme/adaptive_theme.dart';
import 'generated/l10n.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_app/counter/app.dart';
import 'package:flutter_app/counter_observer.dart';

void main() {
  Bloc.observer = const CounterObserver();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
     return
     AdaptiveTheme(
         light: kLightTheme,
         dark: kDarkTheme,
         initial: AdaptiveThemeMode.dark,
         builder: (dark,light) =>
       MaterialApp(
         theme: light,
         darkTheme: dark,
         localizationsDelegates: [
         S.delegate,
         GlobalMaterialLocalizations.delegate,
         GlobalWidgetsLocalizations.delegate,
         GlobalCupertinoLocalizations.delegate,
         ],
         supportedLocales: S.delegate.supportedLocales,
         title: 'Flutter Demo',
         home: MyHomePage()
    )
     );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        // floatingActionButton: FloatingActionButton(
        //   onPressed: () {
        //   AdaptiveTheme.of(context).toggleThemeMode();
        //   },
        // ),

      appBar: AppBar(
          title: Text(S.of(context).appBarTitle)
      ),
      body: const CounterApp()
    );
  }
}


//         theme: ThemeData(
//         colorScheme: ColorScheme.light(primary: Colors.deepOrange),),//theme  - тема для всего приложения
//       home: Scaffold(//база для множества объектов
//         appBar: AppBar(
//             title: Text('Верхний бар'),
//             centerTitle: true,
//             backgroundColor: Colors.deepOrange,),
//         body:
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceAround,
//             children: [
//               Column(
//                 mainAxisAlignment: MainAxisAlignment.start,
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [Text("Текст1"),Text("Текст2"),
//
//                 TextButton(onPressed: () {} ,child: Text("jkjkjkjkjkjH"))],),
//               Column(children: [Text("Текст1"),Text("Текст2"),
//                 TextButton(onPressed: () {} ,child: Text("H"))],)
//             ],
//           ),
//           //: Image( image:AssetImage('assets/HD.jpg'))
//           // ElevatedButton.icon(onPressed: () {},icon: Icon(Icons.timer), label: Text("Кнопка с иконкой"))
//             //ElevatedButton
//           // child: TextButton(
//           //   onPressed: () {},
//           //   style: TextButton.styleFrom(
//           //     //backgroundColor: Colors.deepOrange,
//           //
//           //     textStyle: TextStyle(fontSize: 16),
//           //   ),
//           //   child: Text("Нажми"),
//           // )
//           // Icon(Icons.adb_sharp, color: Colors.deepOrange, size: 244,),
//
//         floatingActionButton:
//       FloatingActionButton(
//         onPressed: () {
//           print("Clicked");
//         },
//           child: Text("Click"),
//         backgroundColor: Colors.deepOrange ,
//       )
//       ),
//     );
//   }
//
// }
