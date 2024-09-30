import 'package:device_preview/device_preview.dart';
import 'package:doctor_app/core/helper/on_generate_routes.dart';
import 'package:doctor_app/features/home/presentation/views/home_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DevicePreview(enabled: true, builder: (context) => const DoctorApp()));
}

class DoctorApp extends StatelessWidget {
  const DoctorApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Poppins'),
      onGenerateRoute: onGenerateRoute,
      initialRoute: HomeView.routeName,
    );
  }
}
