import 'package:flutter/material.dart';
import 'package:meetingappui/create_meeting_view.dart';
import 'package:meetingappui/meeting_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Meeting app UI',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        colorScheme: const ColorScheme(
          brightness: Brightness.light,
          primary: Color(0xff4071e9),
          onPrimary: Colors.white,
          secondary: Color(0xff668DED),
          onSecondary: Colors.white,
          error: Colors.red,
          onError: Colors.white,
          background: Colors.white,
          onBackground: Colors.black,
          surface: Color(0xFFE2EAFC),
          onSurface: Color(0xff4071e9),
        ),
        fontFamily: 'Cabin',
      ),
      home: const CreateMeetingView(),
    );
  }
}
