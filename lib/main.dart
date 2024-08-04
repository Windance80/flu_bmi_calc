import 'package:flu_bmi_calc/screens/input_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
  runApp(const BMICalculator());
}

class BMICalculator extends StatelessWidget {
  const BMICalculator({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final ColorScheme colorScheme = ColorScheme.fromSeed(
      seedColor: const Color(0xFF0A0E21),
      primary: const Color(0xFF0A0E21),
      brightness: Brightness.light,
    );

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData.dark(useMaterial3: true).copyWith(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.

        colorScheme: colorScheme,
        appBarTheme: AppBarTheme(
          color: colorScheme.primary,
          foregroundColor: colorScheme.onPrimary,
        ),
        scaffoldBackgroundColor: colorScheme.primary,
      ),
      // home: const InputPage(title: 'BMI CALCULATOR'),
      routes: {
        '/': (context) => const InputPage(title: 'BMI CALCULATOR'),
      },
    );
  }
}
