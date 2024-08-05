import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'app/routes/app_pages.dart';

void main() {
  // init widgets
  WidgetsFlutterBinding.ensureInitialized();

  // init serverpod
  // await ServerPodService().intialized();

  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Officer",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      themeMode: ThemeMode.system,
      theme: ThemeData(
        colorSchemeSeed: Colors.green,
        brightness: Brightness.light,
        textTheme: GoogleFonts.kanitTextTheme(),
      ),
      darkTheme: ThemeData(
        colorSchemeSeed: Colors.green,
        brightness: Brightness.dark,
        textTheme: GoogleFonts.kanitTextTheme(),
      ),
    ),
  );
}
