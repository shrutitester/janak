import 'package:basket_ball/route/route-provide.dart';
import 'package:basket_ball/utils/lotsOfThemes.dart';
import 'package:basket_ball/widgets/splashScreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:google_fonts/google_fonts.dart';

import 'constants/colorConstants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: ColorConstants.primaryColor,
        secondaryHeaderColor: ColorConstants.primaryColor,
        appBarTheme: AppBarTheme(color: ColorConstants.primaryColor),
        textTheme: TextTheme(
          displayLarge: GoogleFonts.robotoMono(
            textStyle: LotOfThemes.heading1,
          ),
          displayMedium: GoogleFonts.robotoMono(
            textStyle: LotOfThemes.heading2,
          ),
          displaySmall: GoogleFonts.robotoMono(
            textStyle: LotOfThemes.heading3,
          ),
          headlineMedium: GoogleFonts.robotoMono(
            textStyle: LotOfThemes.heading4,
          ),
        ),
      ),
      initialRoute: RoutesLinks.splashPage,
      onGenerateRoute: RoutesProvider.provideRoutes,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});



  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {

      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: Text(widget.title),
      ),
      body: Center(

        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
