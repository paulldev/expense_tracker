import 'package:flutter/material.dart';
import 'package:expense_tracker/widgets/expenses.dart';

var kColorScheme = ColorScheme.fromSeed(
  seedColor: Color.fromARGB(255, 240, 150, 6),
);

var kDarkColorScheme = ColorScheme.fromSeed(
  brightness: Brightness.dark,
  seedColor: Color.fromARGB(255, 5, 99, 125),
);

void main() {
  runApp(
    MaterialApp(
      darkTheme: ThemeData.dark().copyWith(
        useMaterial3: true,
        colorScheme: kDarkColorScheme,
        cardTheme: CardTheme().copyWith(
          elevation: 5,
          color: kDarkColorScheme.secondaryContainer,
          margin: EdgeInsets.symmetric(horizontal: 8, vertical: 6),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: kDarkColorScheme.primaryContainer,
            foregroundColor: kDarkColorScheme.onPrimaryContainer,
            elevation: 5,
          ),
        ),
      ),
      theme: ThemeData().copyWith(
          appBarTheme: AppBarTheme().copyWith(
              backgroundColor: kColorScheme.onPrimaryContainer,
              foregroundColor: kColorScheme.primaryContainer,
              centerTitle: true),
          cardTheme: CardTheme().copyWith(
            elevation: 5,
            color: kColorScheme.secondaryContainer,
            margin: EdgeInsets.symmetric(horizontal: 8, vertical: 6),
          ),
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
              backgroundColor: kColorScheme.primaryContainer,
              elevation: 5,
            ),
          ),
          textTheme: ThemeData().textTheme.copyWith(
                titleLarge: ThemeData().textTheme.titleLarge!.copyWith(
                    //color: kColorScheme.onSecondaryContainer,
                    //fontSize: 30,
                    ), //used in apps title heading
              ),
          //scaffoldBackgroundColor: Color.fromARGB(255, 155, 71, 224),
          colorScheme: kColorScheme,
          useMaterial3: true),
      themeMode: ThemeMode.system,
      home: Expenses(),
    ),
  );
}
