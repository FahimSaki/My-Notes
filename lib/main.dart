import 'package:flutter/material.dart';
import 'package:notes/models/note_database.dart';
import 'package:notes/pages/notes_page.dart';
import 'package:notes/theme/theme_provider.dart';
import 'package:provider/provider.dart';

void main() async {
  // initialize note isar database
  WidgetsFlutterBinding.ensureInitialized();
  await NoteDatabase.initialize();

  runApp(
    MultiProvider(
      providers: [
        // database provider
        ChangeNotifierProvider(create: (context) => NoteDatabase()),

        // theme provider
        ChangeNotifierProvider(create: (context) => ThemeProvider()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeProvider>(
      builder: (context, themeProvider, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          home: const NotesPage(),
          theme: themeProvider.themeData,
        );
      },
    );
  }
}
