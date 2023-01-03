import 'package:demo_limited_company_app/table_data/screens/table_data_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        drawerTheme: DrawerThemeData(
          scrimColor: const Color(0xFF10AB83).withOpacity(.5),
        ),
      ),
      home: TableDataPage(),
    );
  }
}
